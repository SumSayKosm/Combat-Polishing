// =====================================================
// STATUS EFFECT SYSTEM
// =====================================================
// This system handles all status effects in battle including:
// - Damage over time (poison, burn, bleed)
// - Turn skip effects (stun, sleep, paralysis)
// - Stat modifiers (weakened, strengthened, vulnerable)
// =====================================================

// ===== STATUS EFFECT DEFINITIONS =====
// Each status effect is defined with its behavior and properties
global.statusEffects = {
    
    // ========== DAMAGE OVER TIME EFFECTS ==========
    
    poison: {
        name: "Poison",
        type: "dot", // Damage over time
        
        // Called at the START of the affected unit's turn
        // _data contains: damage (amount per turn), duration (turns remaining)
        onTurnStart: function(_target, _data) {
            // Deal poison damage
            BattleChangeHP(_target, -_data.damage);
            
            // Return message to display
            return _target.name + " takes " + string(_data.damage) + " poison damage!";
        }
    },
    
    burn: {
        name: "Burn",
        type: "dot",
        
        onTurnStart: function(_target, _data) {
            BattleChangeHP(_target, -_data.damage);
            return _target.name + " burns for " + string(_data.damage) + " damage!";
        }
    },
    
    bleed: {
        name: "Bleed",
        type: "dot",
        
        onTurnStart: function(_target, _data) {
            BattleChangeHP(_target, -_data.damage);
            return _target.name + " bleeds for " + string(_data.damage) + " damage!";
        }
    },
    
    // ========== TURN SKIP EFFECTS ==========
    
    stun: {
        name: "Stun",
        type: "disable",
        
        // This function determines if the unit can act this turn
        // Return false to prevent action
        canAct: function(_target, _data) {
            return false; // Stunned units cannot act
        },
        
        onTurnStart: function(_target, _data) {
            return _target.name + " is stunned and cannot move!";
        }
    },
    
    sleep: {
        name: "Sleep",
        type: "disable",
        
        canAct: function(_target, _data) {
            // Check if unit wakes up randomly (30% chance each turn)
            if (random(1) < 0.3) {
                return true; // Wake up and can act
            }
            return false; // Still asleep
        },
        
        onTurnStart: function(_target, _data) {
            // Check if they woke up this turn
            if (random(1) < 0.3) {
                // This will be checked again in canAct, but we need consistent behavior
                // So we'll handle wake-up in onTakeDamage instead
                return _target.name + " is sleeping...";
            }
            return _target.name + " is sleeping...";
        },
        
        // Called when unit takes damage - sleep breaks on damage
        onTakeDamage: function(_target, _data, _damageAmount) {
            // Return true to remove this status effect
            return true;
        },
        
        // Message shown when status is removed by damage
        onRemoveByDamage: function(_target, _data) {
            return _target.name + " woke up from the hit!";
        }
    },
    
    paralysis: {
        name: "Paralysis",
        type: "disable",
        
        canAct: function(_target, _data) {
            // 50% chance to act
            _data.canActThisTurn = (random(1) < 0.5);
            return _data.canActThisTurn;
        },
        
        onTurnStart: function(_target, _data) {
            if (_data.canActThisTurn) {
                return _target.name + " pushes through the paralysis!";
            } else {
                return _target.name + " is paralyzed and cannot move!";
            }
        }
    },
    
    freeze: {
        name: "Freeze",
        type: "disable",
        
        canAct: function(_target, _data) {
            return false; // Cannot act while frozen
        },
        
        onTurnStart: function(_target, _data) {
            return _target.name + " is frozen solid!";
        },
        
        // Freeze breaks when taking damage
        onTakeDamage: function(_target, _data, _damageAmount) {
            return true; // Remove freeze
        },
        
        onRemoveByDamage: function(_target, _data) {
            return _target.name + " broke free from the ice!";
        }
    },
    
    // ========== DAMAGE MODIFICATION EFFECTS ==========
    
    weakened: {
        name: "Weakened",
        type: "debuff",
        
        // Called when this unit DEALS damage
        // Modify the outgoing damage amount
        modifyDamageDealt: function(_attacker, _data, _baseDamage) {
            // Reduce damage by 50%
            return _baseDamage * 0.5;
        },
        
        onTurnStart: function(_target, _data) {
            return _target.name + " is weakened!";
        }
    },
    
    vulnerable: {
        name: "Vulnerable",
        type: "debuff",
        
        // Called when this unit TAKES damage
        // Modify the incoming damage amount
        modifyDamageTaken: function(_target, _data, _incomingDamage) {
            // Increase damage taken by 50%
            return _incomingDamage * 1.5;
        },
        
        onTurnStart: function(_target, _data) {
            return _target.name + " is vulnerable!";
        }
    },
    
    strengthened: {
        name: "Strengthened",
        type: "buff",
        
        modifyDamageDealt: function(_attacker, _data, _baseDamage) {
            // Increase damage by 50%
            return _baseDamage * 1.5;
        },
        
        onTurnStart: function(_target, _data) {
            return _target.name + " is strengthened!";
        }
    },
    
    protected: {
        name: "Protected",
        type: "buff",
        
        modifyDamageTaken: function(_target, _data, _incomingDamage) {
            // Reduce damage taken by 30%
            return _incomingDamage * 0.7;
        },
        
        onTurnStart: function(_target, _data) {
            return _target.name + " is protected!";
        }
    },
    
    // ========== HEALING OVER TIME ==========
    
    regen: {
        name: "Regeneration",
        type: "buff",
        
        onTurnStart: function(_target, _data) {
            // Heal over time
            BattleChangeHP(_target, _data.healing);
            return _target.name + " regenerates " + string(_data.healing) + " HP!";
        }
    }
};

// =====================================================
// CORE STATUS FUNCTIONS
// =====================================================

/// @function StatusApply(_target, _statusType, _duration, _customData)
/// @description Apply a status effect to a unit
/// @param {instance} _target - The unit to apply the status to
/// @param {string} _statusType - Name of status from global.statusEffects (e.g., "poison")
/// @param {real} _duration - Number of turns the status lasts
/// @param {struct} _customData - Additional data (damage, healing, etc.)
function StatusApply(_target, _statusType, _duration, _customData = {}) {
    
    // Verify the status effect exists
    if (!variable_struct_exists(global.statusEffects, _statusType)) {
        show_debug_message("ERROR: Status effect '" + _statusType + "' does not exist!");
        return false;
    }
    
    // Get the status definition
    var _statusDef = global.statusEffects[$ _statusType];
    
    // Check if target already has this status
    // If so, refresh the duration instead of stacking
    for (var i = 0; i < array_length(_target.statusEffects); i++) {
        if (_target.statusEffects[i].type == _statusType) {
            _target.statusEffects[i].duration = _duration;
            _target.statusEffects[i].data = _customData;
            return true; // Status refreshed
        }
    }
    
    // Create new status instance
    var _status = {
        type: _statusType,           // Name of the status (e.g., "poison")
        definition: _statusDef,      // Reference to the definition
        duration: _duration,         // Turns remaining
        data: _customData            // Custom data (damage, healing, etc.)
    };
    
    // Add to target's active status effects
    array_push(_target.statusEffects, _status);
    
    return true;
}

/// @function StatusRemove(_target, _statusType)
/// @description Remove a specific status from a unit
/// @param {instance} _target - The unit to remove status from
/// @param {string} _statusType - Name of status to remove
function StatusRemove(_target, _statusType) {
    for (var i = array_length(_target.statusEffects) - 1; i >= 0; i--) {
        if (_target.statusEffects[i].type == _statusType) {
            array_delete(_target.statusEffects, i, 1);
            return true;
        }
    }
    return false;
}

/// @function StatusClearAll(_target)
/// @description Remove all status effects from a unit
/// @param {instance} _target - The unit to clear statuses from
function StatusClearAll(_target) {
    _target.statusEffects = [];
}

/// @function StatusProcessTurnStart(_target)
/// @description Process all status effects at the start of a unit's turn
/// @param {instance} _target - The unit whose turn is starting
/// @return {struct} Result containing: {canAct: bool, messages: array}
function StatusProcessTurnStart(_target) {
    var _result = {
        canAct: true,      // Can the unit take action this turn?
        messages: []       // Array of messages to display
    };
    
    // Process each active status effect
    for (var i = array_length(_target.statusEffects) - 1; i >= 0; i--) {
        var _status = _target.statusEffects[i];
        var _def = _status.definition;
        
        // Check if this status prevents action
        if (variable_struct_exists(_def, "canAct")) {
            if (!_def.canAct(_target, _status.data)) {
                _result.canAct = false;
            }
        }
        
        // Call onTurnStart callback if it exists
        if (variable_struct_exists(_def, "onTurnStart")) {
            var _message = _def.onTurnStart(_target, _status.data);
            if (_message != "" && _message != undefined) {
                array_push(_result.messages, _message);
            }
        }
        
        // Tick down duration
        _status.duration--;
        
        // Remove expired status effects
        if (_status.duration <= 0) {
            array_delete(_target.statusEffects, i, 1);
        }
    }
    
    return _result;
}

/// @function StatusModifyDamageDealt(_attacker, _baseDamage)
/// @description Modify outgoing damage based on attacker's status effects
/// @param {instance} _attacker - The unit dealing damage
/// @param {real} _baseDamage - The base damage amount
/// @return {real} Modified damage amount
function StatusModifyDamageDealt(_attacker, _baseDamage) {
    var _finalDamage = _baseDamage;
    
    // Apply each status effect's damage modification
    for (var i = 0; i < array_length(_attacker.statusEffects); i++) {
        var _status = _attacker.statusEffects[i];
        var _def = _status.definition;
        
        if (variable_struct_exists(_def, "modifyDamageDealt")) {
            _finalDamage = _def.modifyDamageDealt(_attacker, _status.data, _finalDamage);
        }
    }
    
    return _finalDamage;
}

/// @function StatusModifyDamageTaken(_target, _incomingDamage)
/// @description Modify incoming damage based on target's status effects
/// @param {instance} _target - The unit taking damage
/// @param {real} _incomingDamage - The base damage amount (negative value)
/// @return {real} Modified damage amount
function StatusModifyDamageTaken(_target, _incomingDamage) {
    var _finalDamage = _incomingDamage;
    
    // Apply each status effect's damage modification
    for (var i = 0; i < array_length(_target.statusEffects); i++) {
        var _status = _target.statusEffects[i];
        var _def = _status.definition;
        
        if (variable_struct_exists(_def, "modifyDamageTaken")) {
            _finalDamage = _def.modifyDamageTaken(_target, _status.data, _finalDamage);
        }
    }
    
    return _finalDamage;
}

/// @function StatusOnTakeDamage(_target, _damageAmount)
/// @description Notify status effects when unit takes damage (for sleep/freeze breaking)
/// @param {instance} _target - The unit that took damage
/// @param {real} _damageAmount - Amount of damage taken (positive value)
/// @return {array} Messages from statuses that were removed
function StatusOnTakeDamage(_target, _damageAmount) {
    var _messages = [];
    
    // Check each status effect
    for (var i = array_length(_target.statusEffects) - 1; i >= 0; i--) {
        var _status = _target.statusEffects[i];
        var _def = _status.definition;
        
        // If this status has an onTakeDamage callback
        if (variable_struct_exists(_def, "onTakeDamage")) {
            var _shouldRemove = _def.onTakeDamage(_target, _status.data, _damageAmount);
            
            // If the status should be removed
            if (_shouldRemove) {
                // Get removal message if it exists
                if (variable_struct_exists(_def, "onRemoveByDamage")) {
                    var _message = _def.onRemoveByDamage(_target, _status.data);
                    array_push(_messages, _message);
                }
                
                // Remove the status
                array_delete(_target.statusEffects, i, 1);
            }
        }
    }
    
    return _messages;
}

/// @function StatusHas(_target, _statusType)
/// @description Check if a unit has a specific status effect
/// @param {instance} _target - The unit to check
/// @param {string} _statusType - Name of status to check for
/// @return {bool} True if unit has the status
function StatusHas(_target, _statusType) {
    for (var i = 0; i < array_length(_target.statusEffects); i++) {
        if (_target.statusEffects[i].type == _statusType) {
            return true;
        }
    }
    return false;
}
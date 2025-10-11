global.enemyAIBehaviors = {
    
    // AGGRESSIVE BEHAVIORS
    aggressive: function(_user) {
        // Always attacks, prioritizes lowest HP target
        var _action = _user.actions[0]; // Get attack action
        var _possibleTargets = array_filter(Obj_Battle.partyUnits, function(_unit) {
            return (_unit.hp > 0);
        });
        
        // Find target with lowest HP
        var _target = _possibleTargets[0];
        for (var i = 1; i < array_length(_possibleTargets); i++) {
            if (_possibleTargets[i].hp < _target.hp) {
                _target = _possibleTargets[i];
            }
        }
        
        return [_action, _target];
    },
    
    randomAttack: function(_user) {
        //Attack Randomly
        var _action = _user.actions[0];
        var _possibleTargets = array_filter(Obj_Battle.partyUnits, function(_unit) {
            return (_unit.hp > 0);
        });
        var _target = _possibleTargets[irandom(array_length(_possibleTargets) - 1)];
        return [_action, _target];
    },
    
    // DEFENSIVE BEHAVIORS
    defensive: function(_user) {
        // Defends 60% of time, attacks 40%
        if (random(1) < 2) {
            // Find defend action in actions array
            var _defendAction = -1;
            for (var i = 0; i < array_length(_user.actions); i++) {
                if (_user.actions[i].name == "Defend") {
                    _defendAction = _user.actions[i];
                    break;
                }
            }
            
            if (_defendAction != -1) {
                return [_defendAction, _user]; // Defend self
            }
        }
        
        // Fall back to random attack
        return global.enemyAIBehaviors.randomAttack(_user);
    },
    
    cautiousDefender: function(_user) {
        // Defends when HP is below 50%, otherwise attacks
        var _hpPercent = _user.hp / _user.hpMax;
        
        if (_hpPercent < 0.5) {
            // Try to defend
            var _defendAction = -1;
            for (var i = 0; i < array_length(_user.actions); i++) {
                if (_user.actions[i].name == "Defend") {
                    _defendAction = _user.actions[i];
                    break;
                }
            }
            
            if (_defendAction != -1) {
                return [_defendAction, _user];
            }
        }
        
        // Attack if healthy or no defend action
        return global.enemyAIBehaviors.randomAttack(_user);
    },
    
    // BALANCED BEHAVIORS
    balanced: function(_user) {
        // Uses multiple actions if available, otherwise attacks
        if (array_length(_user.actions) > 1) {
            // Pick random action that we can afford
            var _availableActions = [];
            for (var i = 0; i < array_length(_user.actions); i++) {
                var _action = _user.actions[i];
                if (!_action.requiresMP || _action.mpCost <= _user.mp) {
                    array_push(_availableActions, _action);
                }
            }
            
            if (array_length(_availableActions) > 0) {
                var _action = _availableActions[irandom(array_length(_availableActions) - 1)];
                
                // Determine target based on action
                if (_action.targetEnemyByDefault) {
                    var _possibleTargets = array_filter(Obj_Battle.partyUnits, function(_unit) {
                        return (_unit.hp > 0);
                    });
                    var _target = _possibleTargets[irandom(array_length(_possibleTargets) - 1)];
                    return [_action, _target];
                } else {
                    // Self-target for buffs/heals
                    return [_action, _user];
                }
            }
        }
        
        // Default to random attack
        return global.enemyAIBehaviors.randomAttack(_user);
    },
    
    // SUPPORT BEHAVIORS
    healer: function(_user) {
        // Tries to heal weakest ally, otherwise attacks
        var _healAction = -1;
        for (var i = 0; i < array_length(_user.actions); i++) {
            if (_user.actions[i].name == "Heal" && _user.actions[i].mpCost <= _user.mp) {
                _healAction = _user.actions[i];
                break;
            }
        }
        
        if (_healAction != -1) {
            // Find weakest ally
            var _weakestAlly = -1;
            var _lowestHpPercent = 1;
            
            for (var i = 0; i < array_length(Obj_Battle.enemyUnits); i++) {
                var _ally = Obj_Battle.enemyUnits[i];
                if (_ally.hp > 0) {
                    var _hpPercent = _ally.hp / _ally.hpMax;
                    if (_hpPercent < _lowestHpPercent && _hpPercent < 0.7) {
                        _lowestHpPercent = _hpPercent;
                        _weakestAlly = _ally;
                    }
                }
            }
            
            // Heal if someone needs it
            if (_weakestAlly != -1) {
                return [_healAction, _weakestAlly];
            }
        }
        
        // No one to heal, attack instead
        return global.enemyAIBehaviors.randomAttack(_user);
    },
    
    // SPECIAL BEHAVIORS
    berserker: function(_user) {
        // Gets more aggressive as HP lowers, always targets lowest HP enemy
        var _hpPercent = _user.hp / _user.hpMax;
        
        // If HP is very low, use strongest attack if available
        if (_hpPercent < 0.3 && array_length(_user.actions) > 1) {
            // Try to use a special attack (assume it's not first action)
            var _action = _user.actions[irandom_range(1, array_length(_user.actions) - 1)];
            if (!_action.requiresMP || _action.mpCost <= _user.mp) {
                var _possibleTargets = array_filter(Obj_Battle.partyUnits, function(_unit) {
                    return (_unit.hp > 0);
                });
                
                if (_action.targetAll == MODE.ALWAYS) {
                    return [_action, _possibleTargets];
                } else {
                    var _target = _possibleTargets[irandom(array_length(_possibleTargets) - 1)];
                    return [_action, _target];
                }
            }
        }
        
        // Otherwise use aggressive behavior
        return global.enemyAIBehaviors.aggressive(_user);
    },
    
    // TACTICAL BEHAVIORS
    tactical: function(_user) {
        // Analyzes party state and responds accordingly
        var _partyAvgHp = 0;
        var _aliveCount = 0;
        
        for (var i = 0; i < array_length(Obj_Battle.partyUnits); i++) {
            if (Obj_Battle.partyUnits[i].hp > 0) {
                _partyAvgHp += Obj_Battle.partyUnits[i].hp / Obj_Battle.partyUnits[i].hpMax;
                _aliveCount++;
            }
        }
        _partyAvgHp /= _aliveCount;
        
        // If party is weak, go aggressive
        if (_partyAvgHp < 0.4) {
            return global.enemyAIBehaviors.aggressive(_user);
        }
        // If party is healthy, defend or use support
        else if (_partyAvgHp > 0.8) {
            return global.enemyAIBehaviors.defensive(_user);
        }
        // Otherwise balanced approach
        else {
            return global.enemyAIBehaviors.balanced(_user);
        }
    }
};

// Helper function to get behavior by name - MUST be global
global.GetEnemyAIBehavior = function(_behaviorName) {
    if (variable_struct_exists(global.enemyAIBehaviors, _behaviorName)) {
        return global.enemyAIBehaviors[$ _behaviorName];
    }
    
    // Default fallback
    show_debug_message("Warning: AI behavior '" + string(_behaviorName) + "' not found. Using randomAttack.");
    return global.enemyAIBehaviors.randomAttack;
}
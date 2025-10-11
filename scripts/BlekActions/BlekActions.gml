global.blekActionLibrary =
{
GhostCatV2 :
{
    name : "Ghost Cat",
    description: "{0} triggers lingering wounds!",
    subMenu : -1,
    requiresMP: true,
    mpCost: 15, // Base MP cost shown in menu
    targetRequired : true,
    targetEnemyByDefault : true,
    targetAll : MODE.NEVER,
    userAnimation : "attack",
    effectSprite : sAttackSlash,
    effectOnTarget : MODE.ALWAYS,
    
    func : function(_user, _targets)
    {
        var target = _targets[0];
        var totalDoTDamage = 0;
        var extraMPCost = 0;
        var detonatedEffects = []; // Track which effects we removed
        
        // Loop through all active status effects on the target
        for (var i = array_length(target.statusEffects) - 1; i >= 0; i--)
        {
            var _status = target.statusEffects[i];
            var _def = _status.definition;
            
            // Only detonate damage-over-time effects
            // Check if the status type is "dot" (damage over time)
            if (_def.type == "dot")
            {
                // Calculate total remaining damage
                // damage * turns remaining = total damage left to deal
                var _remainingDamage = _status.data.damage * _status.duration;
                totalDoTDamage += _remainingDamage;
                
                // Add to MP cost (1 MP per turn of DoT remaining)
                extraMPCost += _status.duration;
                
                // Track which effect we're removing
                array_push(detonatedEffects, _status.type);
                
                // Remove the DoT effect from target
                array_delete(target.statusEffects, i, 1);
            }
            // Ignore all other status types (disable, debuff, buff)
            // Sleep and freeze will break naturally from taking damage
        }
        
        // Deal the detonated damage
        if (totalDoTDamage > 0)
        {
            show_debug_message("Ghost Cat detonated " + string(array_length(detonatedEffects)) + " effects!");
            show_debug_message("Total detonation damage: " + string(totalDoTDamage));
            
            // Deal all the damage at once
            BattleChangeHP(target, -totalDoTDamage);
            
            // Note: Sleep and freeze will break automatically via StatusOnTakeDamage
            // which is called inside BattleChangeHP when damage is dealt
        }
        else
        {
            show_debug_message("Ghost Cat found no DoT effects to detonate!");
        }
        
        // Deduct MP dynamically based on how much damage was detonated
        var finalMPCost = mpCost + extraMPCost;
        BattleChangeMP(_user, -finalMPCost);
        
        show_debug_message("Ghost Cat MP cost: " + string(finalMPCost) + " (base: " + string(mpCost) + " + extra: " + string(extraMPCost) + ")");
    }
},

	defend :
	{
	    name: "Defend",
	    description: "{0} defends!",
	    subMenu: -1,
		requiresMP: false,
	    targetRequired: false,
	    targetEnemyByDefault: false,
	    targetAll: MODE.NEVER,
	    userAnimation: "defend",
	    func: function(_user, _targets)
	    {
	        // Set a flag or property in the user object to indicate they are defending
	        _user.defending = true;
		}
	},
	flee :
	{
		name: "Flee",
		description: "{0} attempts to flee!",
		subMenu: -1,
		requiresMP: false,
		targetRequired: false,
	    targetEnemyByDefault: false,
	    targetAll: MODE.NEVER,
	    userAnimation: "defend",
	    func: function(_user, _targets)
	    {
			var escapeChance = 100; // Example: Set escape chance here
			AttemptEscape(_user, escapeChance); // Call AttemptEscape with the specified escape chance
		}
	},
	HealCat :
	{
		name : "Life Cat",
		description : "{0} calls a soothing cat.",
		subMenu : "Magic",
		requiresMP: true,
		mpCost : 25,
		targetRequired: true,
		targetEnemyByDefault: false, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		userAnimation : "attack",
		effectSprite : sAttackHeal,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
		    var healPercentage = 0.50; // Adjust this value for the percentage of max HP to be healed
		    var targetMaxHP = _targets[0].hpMax; // Accessing max HP from party data
		    var healAmount = targetMaxHP * healPercentage;
    
		    BattleChangeHP(_targets[0], healAmount);
		    BattleChangeMP(_user, -mpCost);
		}
	},
	SleepCat :
	{
		name : "Sleep Cat",
		description : "{0} calls a sleeping cat.",
		subMenu : "Magic",
		requiresMP: true,
		mpCost : 10,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		userAnimation : "attack",
		effectSprite : sAttackSleep,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			BattleChangeMP(_user, -mpCost)
			_targets[0].statusEffects.Sleep = true;
		}	
	},
	PoisonCat :
	{
		name : "Poison Cat",
		description : "{0} calls a poisoned cat.",
		subMenu : "Magic",
		requiresMP: true,
		mpCost : 5,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		userAnimation : "attack",
		effectSprite : sAttackSlash,
		effectOnTarget : MODE.ALWAYS,
		//DoT Properties
		poisonDoTTurns : 10,   // Poison lasts for X turns
		poisonDoTDamage : 5,  // Poison deals Y damage per turn
		func : function(_user, _targets)
		{
			// Apply initial damage
	        BattleChangeHP(_targets[0], -5 * _targets[0].aspects.slash); // You can set the initial damage as needed
	        // Apply DoT if DoTTurns is greater than 0
	        if (poisonDoTTurns > 0)
	        {
	            var DoTTarget = _targets[0];
	            // Set DoT parameters
	            DoTTarget.poisonDoTTurns = poisonDoTTurns;
	            DoTTarget.poisonDoTDamage = poisonDoTDamage;
	        }
			BattleChangeMP(_user, -mpCost)
		}		
	},
	BurnCat :
	{
		name : "Burn Cat",
		description : "{0} calls a burnt cat.",
		subMenu : "Magic",
		requiresMP: true,
		mpCost : 15,
		targetRequired: true,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetAll: MODE.ALWAYS,
		userAnimation : "attack",
		effectSprite : sAttackFire,
		effectOnTarget : MODE.ALWAYS,
		//DoT Properties
		burnDoTTurns : 10,   // DoT lasts for X turns
		burnDoTDamage : 15,  // DoT deals Y damage per turn
		func : function(_user, _targets)
		{
			audio_play_sound(Snd_Fireball, 1, false);
			
		    for (var i = 0; i < array_length(_targets); i++)
		    {
		        var target = _targets[i];

		        // Apply initial damage
		        var dmg = 5 * real(target.aspects.fire);
		        BattleChangeHP(target, -dmg);

		        // Apply DoT if applicable
		        if (real(burnDoTTurns) > 0)
		        {
		            target.burnDoTTurns = real(burnDoTTurns);
		            target.burnDoTDamage = real(burnDoTDamage) * real(target.aspects.fire);
		        }
		    }

		    BattleChangeMP(_user, -mpCost);
		}
	},
	Attack :
	{
		name : "Attack",
		description : "{0} attacks!",
		subMenu : -1,
		requiresMP: false,
		targetRequired : true,
		targetEnemyByDefault : true,
		targetAll : MODE.NEVER,
		userAnimation : "attack",
		effectSprite : sAttackSlash,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 0.25, _user.strength * 0.25));
			BattleChangeHP(_targets[0], -_damage * _targets[0].aspects.slash,);
		}
	},
	potion: {
    name: "Potion",
    description: "{0} uses a Potion!",
    subMenu: "Item",
    requiresMP: false,
    targetRequired: true,
    targetEnemyByDefault: false, //0: party/self, 1: enemy
    targetAll: MODE.NEVER,
    func: function(_user, _targets) {
        var _heal = 30;
            BattleChangeHP(_targets[0], _heal); // In-battle healing
		}
},
	ether : 
	{
		name : "Ether",
		description : "{0} uses an Ether!",
		subMenu : "Item",
		requiresMP: false,
		targetEnemyByDefault: false, //0: party/self, 1: enemy
		targetAll: MODE.NEVER,
		targetRequired: true,
		func : function(_user, _targets)
		{
			var _healMP = 50;
			BattleChangeMP(_targets[0], _healMP, true);
		}		
	}
};

enum MODE
{
	NEVER = 0,
	ALWAYS = 1,
	VARIES = 2
}

	function RemoveItemFromInventory(_item, _amount)
{
	for (var i = 0; i < array_length(global.battleInventory); i++)
	{
		if (global.battleInventory[i][0] == _item)
		{
			global.battleInventory[i][1] -= _amount;
			global.inventory [i][1] -= _amount;
		}
	}
}
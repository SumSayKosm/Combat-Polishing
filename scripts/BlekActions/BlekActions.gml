global.blekActionLibrary =
{
	GhostCat :
	{
		name : "Ghost Cat",
		description: "{0} calls a cat.",
		subMenu : -1,
		requiresMP: false,
		targetRequired : true,
		targetEnemyByDefault : true, //0: party/self, 1: enemy
		targetAll : MODE.NEVER,
		userAnimation : "cast",
		effectSprite : sAttackSlash,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = 5;
			BattleChangeHP(_targets[0], -_damage * _targets[0].aspects.slash );
			BattleChangeMP(_user, 15)
		}
	},
	GhostCatV2 :
	{
		name : "Ghost Cat",
		description: "{0} calls a cat.",
		subMenu : -1,
		requiresMP: false,
		targetRequired : true,
		targetEnemyByDefault : true, //0: party/self, 1: enemy
		targetAll : MODE.NEVER,
		userAnimation : "cast",
		effectSprite : sAttackSlash,
		effectOnTarget : MODE.ALWAYS,
		func : function(_user, _targets)
		{
			var _damage = 5;
			BattleChangeHP(_targets[0], -_damage * _targets[0].aspects.slash );
			BattleChangeMP(_user, 15)
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
		userAnimation : "cast",
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
		userAnimation : "cast",
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
		userAnimation : "cast",
		effectSprite : sAttackSlash,
		effectOnTarget : MODE.ALWAYS,
		//Dot Properties
		poisonDotTurns : 5,   // Poison lasts for 3 turns
		poisonDotDamage : 5,  // Poison deals 5 damage per turn
		func : function(_user, _targets)
		{
			// Apply initial damage
	        BattleChangeHP(_targets[0], -5 * _targets[0].aspects.slash); // You can set the initial damage as needed
	        // Apply DoT if dotTurns is greater than 0
	        if (poisonDotTurns > 0)
	        {
	            var dotTarget = _targets[0];
	            // Set DoT parameters
	            dotTarget.poisonDotTurns = poisonDotTurns;
	            dotTarget.poisonDotDamage = poisonDotDamage;
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
		userAnimation : "cast",
		effectSprite : sAttackFire,
		effectOnTarget : MODE.ALWAYS,
		//Dot Properties
		burnDotTurns : 3,   // DOT lasts for 3 turns
		burnDotDamage : 15,  // DOT deals 5 damage per turn
		func : function(_user, _targets)
		{
			// Apply initial damage
	        BattleChangeHP(_targets[0], -5 * _targets[0].aspects.fire); // You can set the initial damage as needed
	        // Apply DoT if dotTurns is greater than 0
	        if (burnDotTurns > 0)
	        {
	            var dotTarget = _targets[0];
	            // Set DoT parameters
	            dotTarget.burnDotTurns = burnDotTurns;
	            dotTarget.burnDotDamage = burnDotDamage * _targets[0].aspects.fire;
	        }
			BattleChangeMP(_user, -mpCost)
		}
	},
	nervesAttack :
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
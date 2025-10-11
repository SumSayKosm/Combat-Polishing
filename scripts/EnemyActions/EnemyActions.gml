global.enemyActionLibrary =
{
	attack :
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
	fireball :
	{
		name : "Fireball",
		description : "{0} casts Fireball!",
		subMenu : "Magic",
		requiresMP: true,
		mpCost : 20,
		targetEnemyByDefault: true, //0: party/self, 1: enemy
		targetRequired: true,
		targetAll: MODE.ALWAYS,
		userAnimation : "cast",
		effectSprite: sAttackFire,
		effectOnTarget: MODE.ALWAYS,
		func : function(_user, _targets)
		{
			for (var i = 0; i < array_length(_targets); i++)
			{
				var _damage = irandom_range(15,20) * _targets[i].elements.fire;
				if (array_length(_targets) > 1) _damage = ceil(_damage*0.75);
				BattleChangeHP(_targets[i], -_damage);
			}
			BattleChangeMP(_user, -mpCost)
		}		
	},
	heal :
	{
		name : "Heal",
		description : "{0} casts heal!",
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
}
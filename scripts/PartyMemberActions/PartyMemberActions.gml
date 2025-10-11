global.ActionLibrary =
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
			var _damage = ceil(_user.strength + random_range(-_user.strength * 2, _user.strength * 5));
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
	        _user.defending = true;
		}
	},
		PowerUp :
	{
	    name : "Concentrate",
	    description : "{0} focuses on their next strike.",
	    subMenu : "Skills",
	    requiresMP: true,
	    mpCost: 10,
	    targetRequired : true,
	    targetEnemyByDefault : false,
	    targetAll : MODE.NEVER,
	    userAnimation : "cast",
	    effectSprite : sBuffEffect,
	    effectOnTarget : MODE.ALWAYS,
	    func : function(_user, _targets)
	    {
	        StatusApply(_targets[0], "strengthened", 2, {});
	    }
	},
	HeavyBlow :
	{
		name : "Heavy Blow",
		description : "{0} attacks with all their might.",
		subMenu : "Skills",
		requiresMP : true,
		mpCost : 20,
		targetRequired : true,
		targetEnemyByDefault : true,
		targetAll : MODE.NEVER,
		userAnimation : "attack",
		effectSprite : sAttackSlash,
		effectOnTarget : MODE.ALWAYS,
		func: function (_user, _targets)
		{
			var _damage = ceil(_user.strength + random_range(-_user.strength * 5, _user.strength * 10));
			BattleChangeHP(_targets[0], -_damage * _targets[0].aspects.slash,);
		}
	},
	
	Fireball :
	{
		name : "Fireball",
		description : "{0} hurls a ball of flame.",
		subMenu : "Magic",
		requiresMP : true,
		mpCost : 50,
		targetRequired : true,
		targetEnemyByDefault : true,
		targetAll : MODE.ALWAYS,
		userAnimation : "attack",
		effectSprite : sAttackFire,
		effectOnTarget : MODE.ALWAYS,
		func : function (_user, _targets)
		{
	    for (var i = 0; i < array_length(_targets); i++)
		    {
		        var target = _targets[i];

		        // Apply initial damage
		        var _damage = _user.magic + 5 * real(target.aspects.fire);
		        BattleChangeHP(target, -_damage);
			}
		}
	},
	
	Bolt :
	{
		name: "Bolt",
		description : "{0} unleashes a bolt of magical energy.",
		subMenu : "Magic",
		requiresMP : true,
		mpCost : 10,
		targetRequired : true,
		targetEnemyByDefault : true,
		targetAll : MODE.NEVER,
		userAnimation : "attack",
		effectSprite : sAttackExplode,
		effectOnTarget : MODE.ALWAYS,
		func : function (_user, _targets)
		{
			var _damage = _user.magic * 3;
			BattleChangeHP(_targets[0], -_damage);
		}
	}
}
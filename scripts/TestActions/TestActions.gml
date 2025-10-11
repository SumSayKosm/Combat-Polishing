global.testAction = {
	PoisonStrike :
{
    name : "Poison Strike",
    description : "{0} strikes with poison!",
    subMenu : "Magic",
    requiresMP: true,
    mpCost: 5,
    targetRequired : true,
    targetEnemyByDefault : true,
    targetAll : MODE.NEVER,
    userAnimation : "attack",
    effectSprite : sPoisonEffect,
    effectOnTarget : MODE.ALWAYS,
    func : function(_user, _targets)
    {
        // Deal initial damage
        var _damage = ceil(_user.strength * 0.5);
        _damage = StatusModifyDamageDealt(_user, _damage);
        BattleChangeHP(_targets[0], -_damage);
        
        // Apply poison status: 5 damage per turn, lasts 3 turns
        StatusApply(_targets[0], "poison", 3, { damage: 5 });
    }
},

// Example 2: Stunning Blow
StunAttack :
{
    name : "Stunning Blow",
    description : "{0} strikes with a powerful blow!",
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
        // Deal damage
        var _damage = ceil(_user.strength * 1.2);
        _damage = StatusModifyDamageDealt(_user, _damage);
        BattleChangeHP(_targets[0], -_damage);
        
        // 30% chance to stun for 1 turn
        if (random(1) < 0.3)
        {
            StatusApply(_targets[0], "stun", 1, {});
        }
    }
},

// Example 3: Strengthen Self
PowerUp :
{
    name : "Power Up",
    description : "{0} powers up!",
    subMenu : -1,
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
        // Apply strengthened buff for 3 turns
        StatusApply(_targets[0], "strengthened", 3, {});
    }
}
}
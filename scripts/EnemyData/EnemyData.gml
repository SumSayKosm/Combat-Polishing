global.enemyData =
{
	WallWight:
		{
		name: "Wall Wight",
		hp: 15,
		hpMax: 15,
		mp: 15,
		mpMax: 15,
		mpRegen : .50,
		strength: 5,
		sprites: {idle: Spr_WallWight, attack: Spr_WallWight_Attack},
		aspects: { fire: 2, ice: 2, slash: 2, poison: 2 },
		statusEffects: {Sleep: false},
		defending: false, // Flag for regular defense
		dotDefense: false, // Flag for defense against DoT effects
		poisonDotDamage : 0,
		poisonDotTurns : 0,
		burnDotTurns : 0,
		burnDotDamage : 0,
		actions : [global.enemyActionLibrary.attack],
		AIscript: function ()
		{
		//attack random party member
		var _action = actions[0];
		var _possibletargets = array_filter(Obj_Battle.partyUnits, function(_unit, _index)
			{
			return (_unit.hp > 0);
			});
			var _target = _possibletargets[irandom(array_length(_possibletargets)-1)];
			return [_action, _target];
			}
		}
}
global.enemyData =
{
	StoneSlime:
		{
		name: "Stone Slime",
		hp: 1000,
		hpMax: 1000,
		mp: 15,
		mpMax: 15,
		mpRegen : .50,
		strength: 1,
		sprites: {idle: Spr_StoneSlime_Idle, hurt: Spr_StoneSlime_Hurt, attack: Spr_StoneSlime_Attack},
		aspects: { fire: 2, ice: 2, slash: 2, poison: 2 },
		statusEffects: {Sleep: false},
		defending: false, // Flag for regular defense
		DoTDefense: false, // Flag for defense against DoT effects
		poisonDoTDamage : 0,
		poisonDoTTurns : 0,
		burnDoTTurns : 0,
		burnDoTDamage : 0,
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
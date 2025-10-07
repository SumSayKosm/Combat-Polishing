	global.testEnemies =
	{
		Demon:
		{
				name: "Demon",
				hp: 15,
				hpMax: 15,
				mp: 15,
				mpMax: 15,
				mpRegen : .50,
				strength: 5,
				sprites: {idle: Spr_Demon},
				elements: { fire: 0, ice: 2 },
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
					var _possibletargets = array_filter(Obj_Battle_Old.partyUnits, function(_unit, _index)
					{
						return (_unit.hp > 0);
					});
					var _target = _possibletargets[irandom(array_length(_possibletargets)-1)];
					return [_action, _target];
				}
		}
	,

		ArchDemon:
			{
				name: "Arch Demon",
				hp: 15,
				hpMax: 15,
				mp: 50,
				mpMax: 50,
				mpRegen : .25,
				strength: 0,
				sprites: {idle: Spr_ArchDemon},
				elements: { fire: 1, ice: 1 },
				defending: false, // Flag for regular defense
				dotDefense: false, // Flag for defense against DoT effects
				poisonDotDamage : 0,
				poisonDotTurns : 0,
				burnDotTurns : 0,
				burnDotDamage : 0,
				actions : [global.enemyActionLibrary.heal, global.enemyActionLibrary.fireball],
				AIscript: function () 
				{	 
					{
							// Heal random ally
							var _action = actions[0];
							var _possibletargets = array_filter(Obj_Battle_Old.enemyUnits, function(_unit, _index) {
							    return (_unit.hp > 0);
							});
							var _target = [irandom(array_length(_possibletargets))];
							return [_action, _target];
						}
				}
			},
			
		NormalArchDemon:
			{
				name: "Arch Demon",
				hp: 15,
				hpMax: 15,
				mp: 50,
				mpMax: 50,
				mpRegen : .25,
				strength: 0,
				sprites: {idle: Spr_ArchDemon},
				elements: { fire: 1, ice: 1 },
				defending: false, // Flag for regular defense
				dotDefense: false, // Flag for defense against DoT effects
				poisonDotDamage : 0,
				poisonDotTurns : 0,
				burnDotTurns : 0,
				burnDotDamage : 0,
				actions : [global.enemyActionLibrary.heal, global.enemyActionLibrary.fireball],
				AIscript: function () 
				{	
					if (array_any(Obj_Battle_Old.enemyUnits, function(_unit) {
						return (_unit.hp <= hpMax * 0.3);
						 })) { 
							// Heal random ally
							var _action = actions[0];
							var _possibletargets = array_filter(Obj_Battle_Old.enemyUnits, function(_unit, _index) {
							    return (_unit.hp > 0);
							});
							var _target = [irandom(array_length(_possibletargets))];
							return [_action, _target];
						} else {
					        // Fire ball
					        var _action = actions[1];
					        var _possibletargets = array_filter(Obj_Battle_Old.partyUnits, function(_unit, _index) {
					            return (_unit.hp > 0);
					        });
					        var _target = _possibletargets; // Get the first target
					        return [_action, _target];
							}
				}
			}	
	}
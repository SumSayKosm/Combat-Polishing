global.party =
[
	{
		name: "Blek",
		hp: 1,
		hpMax: 20,
		mp: 30,
		mpMax: 30,
		mpRegen : .25,
		aspects: { fire: 1, ice: 1 },
		statusEffects: {Sleep: false},
		strength: 5,
		defending: false, // Flag for regular defense
		dotDefense: false, // Flag for defense against DoT effects
		poisonDotDamage : 0,
		poisonDotTurns : 0,
		burnDotTurns : 0,
		burnDotDamage : 0,
		sprites: { idle: spr_Blek_combat_idle, head: spr_Blek_combat_idle},
		actions : [global.blekActionLibrary.GhostCat, global.blekActionLibrary.defend, global.blekActionLibrary.flee, global.blekActionLibrary.BurnCat, global.blekActionLibrary.PoisonCat, global.blekActionLibrary.HealCat, global.blekActionLibrary.SleepCat]
	},
	
	{
		name: "Nerves",
		hp: 1,
		hpMax: 50,
		mp: 10,
		mpMax: 10,
		mpRegen : .50,
		aspects: { fire: 1, ice: 1 },
		statusEffects: {Sleep: false},
		strength: 10,
		defending: false, // Flag for regular defense
		dotDefense: false, // Flag for defense against DoT effects
		poisonDotDamage : 0,
		poisonDotTurns : 0,
		burnDotTurns : 0,
		burnDotDamage : 0,
		sprites: { idle: spr_Nerves_combat_idle, head: spr_Nerves_combat_idle },
		actions : [global.blekActionLibrary.nervesAttack, global.blekActionLibrary.defend, global.blekActionLibrary.flee]
	}
]

global.battleInventory =
[
	[global.blekActionLibrary.potion, 1],
	[global.blekActionLibrary.ether, 4],
]

global.inventory =
[
	[global.Items.potion, 1],
	[global.Items.ether, 4],
]
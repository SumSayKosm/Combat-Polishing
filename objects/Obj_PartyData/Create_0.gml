global.party =
[
	{
		name: "Blek",
		hp: 20,
		hpMax: 20,
		mp: 30,
		mpMax: 30,
		mpRegen : .25,
		aspects: { fire: 1, ice: 1 },
		statusEffects: {Sleep: false},
		strength: 5,
		defending: false, // Flag for regular defense
		DoTDefense: false, // Flag for defense against DoT effects
		poisonDoTDamage : 0,
		poisonDoTTurns : 0,
		burnDoTTurns : 0,
		burnDoTDamage : 0,
		sprites: { idle: Spr_CombatBlek_Idle, hurt: Spr_CombatBlek_Hurt, attack: Spr_CombatBlek_Attack},
		actions : [global.blekActionLibrary.GhostCatV2, global.blekActionLibrary.defend, global.blekActionLibrary.flee, global.blekActionLibrary.BurnCat, global.blekActionLibrary.PoisonCat, global.blekActionLibrary.HealCat, global.blekActionLibrary.SleepCat]
	},
	
	//{
	//	name: "Nerves",
	//	hp: 50,
	//	hpMax: 50,
	//	mp: 10,
	//	mpMax: 10,
	//	mpRegen : .50,
	//	aspects: { fire: 1, ice: 1 },
	//	statusEffects: {Sleep: false},
	//	strength: 10,
	//	defending: false, // Flag for regular defense
	//	DoTDefense: false, // Flag for defense against DoT effects
	//	poisonDoTDamage : 0,
	//	poisonDoTTurns : 0,
	//	burnDoTTurns : 0,
	//	burnDoTDamage : 0,
	//	sprites: { idle: spr_Nerves_combat_idle, head: spr_Nerves_combat_idle },
	//	actions : [global.blekActionLibrary.nervesAttack, global.blekActionLibrary.defend, global.blekActionLibrary.flee]
	//}
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
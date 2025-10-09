global.party =
[
	{
		name: "Blek",
		hp: 100,
		hpMax: 100,
		mp: 250,
		mpMax: 250,
		mpRegen : .25,
		aspects: { fire: 1, ice: 1 , slash: 1},
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
	
	{
		name: "Swordsman",
		hp: 200,
		hpMax: 200,
		mp: 75,
		mpMax: 75,
		mpRegen : .50,
		aspects: { fire: 1, ice: 1, slash: 1 },
		statusEffects: {Sleep: false},
		strength: 10,
		defending: false, // Flag for regular defense
		DoTDefense: false, // Flag for defense against DoT effects
		poisonDoTDamage : 0,
		poisonDoTTurns : 0,
		burnDoTTurns : 0,
		burnDoTDamage : 0,
		sprites: { idle: Spr_Swordsman_Idle ,hurt: Spr_Swordsman_Hurt, attack: Spr_Swordsman_Attack},
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
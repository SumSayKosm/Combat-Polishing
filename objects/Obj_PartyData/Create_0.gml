global.party =
[
	{
		name: "Knight",
		hp: 250,
		hpMax: 250,
		mp: 100,
		mpMax: 100,
		mpRegen : .25,
		aspects: { fire: 1, ice: 1 , slash: 1},
		strength: 10,
		magic: 1,
		defending: false, // Flag for regular defense
		DoTDefense: false, // Flag for defense against DoT effects
		sprites: {idle: Spr_Knight, hurt: noone},
		actions : [global.ActionLibrary.attack, global.ActionLibrary.HeavyBlow, global.ActionLibrary.PowerUp, global.ActionLibrary.defend]
	},
	{
		name: "Witch",
		hp: 200,
		hpMax: 200,
		mp: 150,
		mpMax: 150,
		mpRegen : .25,
		aspects: { fire: 1, ice: 1 , slash: 1},
		strength: 1,
		magic: 10,
		defending: false, // Flag for regular defense
		DoTDefense: false, // Flag for defense against DoT effects
		sprites: {idle: Spr_Witch, hurt: noone},
		actions : [global.ActionLibrary.attack, global.ActionLibrary.Bolt, global.ActionLibrary.Fireball, global.ActionLibrary.defend]
	},
		{
		name: "Rogue",
		hp: 500,
		hpMax: 500,
		mp: 100,
		mpMax: 100,
		mpRegen : .25,
		aspects: { fire: 1, ice: 1 , slash: 1},
		strength: 1,
		defending: false, // Flag for regular defense
		DoTDefense: false, // Flag for defense against DoT effects
		sprites: {idle: Spr_Rogue, hurt: noone},
		actions : [global.ActionLibrary.attack, global.ActionLibrary.defend]
	},	
	{
		name: "Doctor",
		hp: 500,
		hpMax: 500,
		mp: 100,
		mpMax: 100,
		mpRegen : .25,
		aspects: { fire: 1, ice: 1 , slash: 1},
		strength: 1,
		defending: false, // Flag for regular defense
		DoTDefense: false, // Flag for defense against DoT effects
		sprites: {idle: Spr_Doctor, hurt: noone},
		actions : [global.ActionLibrary.attack, global.ActionLibrary.defend]
	},
	]
	
	
	global.battleInventory =
[
	//[global.ActionLibrary.potion, 1],
	//[global.ActionLibrary.ether, 4],
]

global.inventory =
[
	//[global.Items.potion, 1],
	//[global.Items.ether, 4],
]

global.activeParty = [
    global.party[0], // Knight
    global.party[1]  // Witch (default two members)
];

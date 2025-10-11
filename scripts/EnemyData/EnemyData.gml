global.enemyData =
{
	Skeleton_1:
		{
		name: "Decrepit Skeleton",
		hp: 100,
		hpMax: 100,
		mp: 15,
		mpMax: 15,
		mpRegen : .50,
		strength: 5,
		magic: 1,
		sprites: {idle: Spr_Skeleton_1, hurt: noone},
		aspects: { fire: 1, ice: 1, slash: 1, poison: 1 },
		defending: false, // Flag for regular defense
		DoTDefense: false, // Flag for defense against DoT effects
		actions : [global.enemyActionLibrary.attack, global.enemyActionLibrary.defend],
		AIBehavior:  "defensive"
		}
}
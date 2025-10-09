//NewEncounter(
//		[global.enemyData.StoneSlime, global.enemyData.StoneSlime],
//		Spr_BattleBackground
//	);

// Define a pool of 3 behaviors
NewEncounterCustom(
    [global.enemyData.StoneSlime, global.enemyData.StoneSlime, global.enemyData.StoneSlime],
    Spr_BattleBackground,
    ["defensive", "defensive", "defensive"]
);
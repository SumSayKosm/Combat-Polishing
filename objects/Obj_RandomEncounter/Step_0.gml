if encountersteps <= global.steps
{
	NewEncounter(
		choose(
		[global.enemies.Demon, global.enemies.Demon],
		[global.enemies.Demon, global.enemies.ArchDemon],
		[global.enemies.Demon, global.enemies.Demon,global.enemies.Demon],
		[global.enemies.Demon, global.enemies.ArchDemon,global.enemies.Demon]
		),
		Spr_Background_Battle
	);
}
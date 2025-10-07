function NewEncounter(_enemies, _bg)
{
	instance_create_depth
	(
		camera_get_view_x(view_camera[0]),
		camera_get_view_y(view_camera[0]),
		-9999,
		Obj_Battle,
		{enemies: _enemies, creator: id, battleBackground: _bg}
	);
}

function BattleChangeHP(_target, _amount, _livingCheck = 0)
{
		//_livingCheck: 0 = alive only, 1 = dead only, 2 = any
		var _failed = false;
		if (_livingCheck == 0) && (_target.hp <= 0) _failed = true;
		if (_livingCheck == 1) && (_target.hp > 0) _failed = true;
	
	
	var _col = c_white;
	//Check if target is healed
	if (_amount > 0) _col = c_lime;
	if _failed
	{
		_col = c_white;
		_amount = "failed";
	}
	
	// Check if the target is defending
	var _defenseMultiplier = 1.0; // Default multiplier
    if (_target.defending)
    {
        _defenseMultiplier = 0.5; // Adjust this value as needed for your game
    }

    _amount *= _defenseMultiplier;
	// Ensure that the damage is a whole number
    _amount = floor(_amount);
	
	instance_create_depth
	(
	_target.x,
	_target.y,
	_target.depth-1,
	Obj_BattleFloatingText,
	{font: Font1, col: _col, text: string(_amount)}
	);
	
	if (!_failed) _target.hp = clamp(_target.hp + _amount, 0, _target.hpMax);
	
	// Update the global party data
        for (var i = 0; i < array_length(global.party); i++)
        {
            if (global.party[i].name == _target.name)
            {
                global.party[i].hp = _target.hp;
                break;
            }
        }
}

function BattleChangeMP(_target, _amount, _show = false)
{
	if (_show) instance_create_depth(_target.x,_target.y,_target.depth-1, Obj_BattleFloatingText, {font: Font2, col: c_aqua, text: string(_amount) + "mp"})
	_target.mp = clamp(_target.mp + _amount, 0, _target.mpMax);
}

function MPRegenerationPerTurn() {

	//var mpRegenerationRate = 0.25; // 50% regeneration rate per turn

    var currentActor = unitTurnOrder[turn]; // Get the current actor
    var mpRegenerated = currentActor.mpMax * currentActor.mpRegen; // Calculate regenerated MP for the current actor
    mpRegenerated = floor(mpRegenerated);
	
    // Add regenerated MP to the current actor's MP
    currentActor.mp += mpRegenerated;
    
    // Ensure MP does not exceed maximum MP
    if (currentActor.mp > currentActor.mpMax) {
        currentActor.mp = currentActor.mpMax;
    }
}

function AttemptEscape(_unit, _escapeChance)
{
    var attemptToEscape = random(1) < _escapeChance;

    if (attemptToEscape)
    {
        // Successful escape
        Obj_Battle_Old.battleWin = 2;
		Obj_Battle_Old.battleState = Obj_Battle_Old.BattleStateWaitingForInput;
    }
    else
    {
        // Failed to escape
        battleText = "You failed to run away!";
		Obj_Battle_Old.battleWin = 3;
        Obj_Battle_Old.battleState = Obj_Battle_Old.BattleStateWaitingForInput;
    }
}
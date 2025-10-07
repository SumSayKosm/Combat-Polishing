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

#macro DEFENSE_MULTIPLIER 0.5

//function BattleChangeHP(_target, _amount, _livingCheck = 0)
//{
//	//_livingCheck: 0 = alive only, 1 = dead only, 2 = any
//	var _failed = false;
//	if (_livingCheck == 0) && (_target.hp <= 0) _failed = true;
//	if (_livingCheck == 1) && (_target.hp > 0) _failed = true;

//	var _col = c_white;
//	//Check if target is healed
//	if (_amount > 0) _col = c_lime;
//	if (_failed)
//	{
//		_col = c_white;
//		_amount = "failed";
//	}

//	// Check if the target is defending
//	if (_target.defending)
//	{
//		_amount *= DEFENSE_MULTIPLIER;
//	}

//	// Ensure that the damage is a whole number
//	_amount = floor(_amount);

//	instance_create_depth
//	(
//		_target.x,
//		_target.y,
//		_target.depth-1,
//		Obj_BattleFloatingText,
//		{font: Font1, col: _col, text: string(_amount)}
//	);

//	if (!_failed) _target.hp = clamp(_target.hp + _amount, 0, _target.hpMax);

//	// Update the global party data
//	for (var i = 0; i < array_length(global.party); i++)
//	{
//		if (global.party[i].name == _target.name)
//		{
//			global.party[i].hp = _target.hp;
//			break;
//		}
//	}
//}

function BattleChangeHP(_target, _amount, _livingCheck = 0)
{
	// Skip if target is dead and trying to take damage
    if ((_amount < 0) && (_target.hp <= 0)) return;
	
    var _failed = false;
    if ((_livingCheck == 0) && (_target.hp <= 0)) _failed = true;
    if ((_livingCheck == 1) && (_target.hp > 0)) _failed = true;

    var _col = c_white;
    if (_amount > 0) _col = c_lime;

    var _displayAmount = _amount; // separate variable for floating text

    if (_failed)
    {
        _col = c_white;
        _displayAmount = "failed"; // only for display
        _amount = 0; // set numeric value to 0 so floor() works
    }

    if (_target.defending)
    {
        _amount *= DEFENSE_MULTIPLIER;
		_col = c_gray;
		_displayAmount = "Blocked!" + string(_amount);
    }

    _amount = floor(_amount);

    instance_create_depth(
        _target.x,
        _target.y,
        _target.depth-1,
        Obj_BattleFloatingText,
        {font: Font1, col: _col, text: string(_displayAmount)}
    );

    if (!_failed) _target.hp = clamp(_target.hp + _amount, 0, _target.hpMax);
	
		// If damage was taken
	    if (_amount < 0)
	    {
	        // Show hurt animation
	        if (variable_instance_exists(_target, "sprites") && variable_struct_exists(_target.sprites, "hurt"))
	        {
	            _target.sprite_index = _target.sprites.hurt;
				_target.image_speed = 1;
				_target.image_index = 0;
	        }

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
}

function BattleChangeMP(_target, _amount, _show = false)
{
	if (_show)
	{
		instance_create_depth(_target.x, _target.y, _target.depth-1, Obj_BattleFloatingText, {font: Font2, col: c_aqua, text: string(_amount) + "mp"});
	}
	_target.mp = clamp(_target.mp + _amount, 0, _target.mpMax);
}

function MPRegenerationPerTurn()
{
	var currentActor = unitTurnOrder[turn];
	var mpRegenerated = floor(currentActor.mpMax * currentActor.mpRegen);

	currentActor.mp = clamp(currentActor.mp + mpRegenerated, 0, currentActor.mpMax);
}

function AttemptEscape(_unit, _escapeChance)
{
	var attemptToEscape = random(1) < _escapeChance;

	if (attemptToEscape)
	{
		Obj_Battle.battleWin = BATTLE_OUTCOME.FLED;
		Obj_Battle.battleState = Obj_Battle.BattleStateWaitingForInput;
	}
	else
	{
		Obj_Battle.battleWin = BATTLE_OUTCOME.FAILED_ESCAPE;
		Obj_Battle.battleState = Obj_Battle.BattleStateWaitingForInput;
	}
}
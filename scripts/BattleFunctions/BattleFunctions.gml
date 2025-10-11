//function NewEncounter(_enemies, _bg)
//{
//	instance_create_depth
//	(
//		camera_get_view_x(view_camera[0]),
//		camera_get_view_y(view_camera[0]),
//		-9999,
//		Obj_Battle,
//		{enemies: _enemies, creator: id, battleBackground: _bg}
//	);
//}

function NewEncounterCustom(_enemies, _bg, _behaviors)
{
    instance_create_depth
    (
        camera_get_view_x(view_camera[0]),
        camera_get_view_y(view_camera[0]),
        -9999,
        Obj_Battle,
        {
            enemies: _enemies, 
            creator: id, 
            battleBackground: _bg,
            customBehaviors: _behaviors  // Array of behavior names to pick from randomly
        }
    );
}

#macro DEFENSE_MULTIPLIER 0.5

//function BattleChangeHP(_target, _amount, _livingCheck = 0)
//{
//	// Skip if target is dead and trying to take damage
//    if ((_amount < 0) && (_target.hp <= 0)) return;
	
//    var _failed = false;
//    if ((_livingCheck == 0) && (_target.hp <= 0)) _failed = true;
//    if ((_livingCheck == 1) && (_target.hp > 0)) _failed = true;

//    var _col = c_white;
//    if (_amount > 0) _col = c_lime;

//    var _displayAmount = _amount; // separate variable for floating text

//    if (_failed)
//    {
//        _col = c_white;
//        _displayAmount = "failed"; // only for display
//        _amount = 0; // set numeric value to 0 so floor() works
//    }

//    if (_target.defending)
//    {
//        _amount *= DEFENSE_MULTIPLIER;
//		_col = c_gray;
//		_displayAmount = "Blocked!" + string(_amount);
//    }

//    _amount = floor(_amount);

//    instance_create_depth(
//        _target.x,
//        _target.y,
//        _target.depth-1,
//        Obj_BattleFloatingText,
//        {font: Font1, col: _col, text: string(_displayAmount)}
//    );

//    if (!_failed) _target.hp = clamp(_target.hp + _amount, 0, _target.hpMax);
	
//		// If damage was taken
//	    if (_amount < 0)
//	    {
//	        // Show hurt animation
//	        if (variable_instance_exists(_target, "sprites") && variable_struct_exists(_target.sprites, "hurt"))
//	        {
//	            _target.sprite_index = _target.sprites.hurt;
//				_target.image_speed = 1;
//				_target.image_index = 0;
//	        }

//	    // Update the global party data
//	    for (var i = 0; i < array_length(global.party); i++)
//	    {
//	        if (global.party[i].name == _target.name)
//	        {
//	            global.party[i].hp = _target.hp;
//	            break;
//	        }
//	    }
//		}
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
    var _displayAmount = _amount;
    
    if (_failed)
    {
        _col = c_white;
        _displayAmount = "failed";
        _amount = 0;
    }
    
    if (_target.defending)
    {
        _amount *= DEFENSE_MULTIPLIER;
        _col = c_gray;
        _displayAmount = "Blocked!" + string(_amount);
    }
    
    // ===== APPLY STATUS EFFECT DAMAGE MODIFIERS =====
    // Only modify damage (negative amounts), not healing
    if (_amount < 0)
    {
        // Apply status-based damage modifications (vulnerable, protected, etc.)
        _amount = StatusModifyDamageTaken(_target, _amount);
        _displayAmount = abs(_amount); // Update display to show modified damage
        
        // Notify status effects that damage was taken (breaks sleep/freeze)
        var _statusMessages = StatusOnTakeDamage(_target, abs(_amount));
        
        // Add any status removal messages to battle
        if (array_length(_statusMessages) > 0) {
            for (var i = 0; i < array_length(_statusMessages); i++) {
                array_push(Obj_Battle.battleMessageQueue, _statusMessages[i]);
            }
        }
    }
    
    _amount = floor(_amount);
    
    // Display the damage/healing number
    instance_create_depth(
        _target.x,
        _target.y,
        _target.depth-1,
        Obj_BattleFloatingText,
        {font: Font1, col: _col, text: string(_displayAmount)}
    );
    
    // Apply the HP change
    if (!_failed) _target.hp = clamp(_target.hp + _amount, 0, _target.hpMax);
    
    // If damage was taken, show hurt animation
    if (_amount < 0)
    {
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

//function MPRegenerationPerTurn()
//{
//	var currentActor = unitTurnOrder[turn];
//	var mpRegenerated = floor(currentActor.mpMax * currentActor.mpRegen);

//	currentActor.mp = clamp(currentActor.mp + mpRegenerated, 0, currentActor.mpMax);
//}

function MPRegenerationPerTurn()
{
    for (var i = 0; i < array_length(units); i++)
    {
        var _unit = units[i];
        if (!instance_exists(_unit)) continue; // skip destroyed units

        if (_unit.hp > 0) // optional: only regen for living units
        {
            var mpRegenerated = floor(_unit.mpMax * _unit.mpRegen);
            _unit.mp = clamp(_unit.mp + mpRegenerated, 0, _unit.mpMax);
        }
    }
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

/// Draw target tooltip safely (handles single + multi target)
function draw_target_tooltip(_target)
{
    // Nothing to draw
    if (_target == noone || _target == undefined) return;

    // Ensure we use the correct font
    draw_set_font(Font1);
    draw_set_color(c_white);

    var pad = 6;            // padding inside the box
    var boxH = 24;          // box height (adjust if your font is bigger)
    var margin = 8;         // screen margin for clamping

    // --- MULTI-TARGET: show one centered "All Enemies" label ---
    if (is_array(_target))
    {
        // count valid instances
        var validCount = 0;
        for (var i = 0; i < array_length(_target); i++)
        {
            if (instance_exists(_target[i])) validCount++;
        }
        if (validCount <= 0) return;

        var label = "All Enemies";
        var boxW = string_width(label) + pad * 2;

        var centerX = x+160;
        var tx = centerX - boxW * 0.5;
        var ty = 24; // top area; tweak as desired

        // Clamp so it never goes off-screen
        tx = clamp(tx, margin, room_width - boxW - margin);
        ty = clamp(ty, margin, room_height - boxH - margin);

        // Draw box then text (centered)
        draw_sprite_stretched(Spr_UIBox, 0, tx, ty, boxW, boxH);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_text(centerX, ty + boxH * 0.5, label);

        // restore defaults
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        return;
    }

    // --- SINGLE TARGET ---
    if (!instance_exists(_target)) return;

    var label = string(_target.name);
    var boxW = string_width(label) + pad * 2;

    // Prefer to draw above and slightly right of the target sprite
    var tx = _target.x + 16;
    var ty = _target.y - boxH - 8;

    // If you want the box centered on the text, use:
    // tx = _target.x - boxW * 0.5;

    // Clamp to screen so it never draws off-screen
    tx = clamp(tx, margin, room_width - boxW - margin);
    ty = clamp(ty, margin, room_height - boxH - margin);

    // Draw box then text (left aligned inside)
    draw_sprite_stretched(Spr_UIBox, 0, tx, ty, boxW, boxH);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_text(tx + pad, ty + boxH * 0.5, label);

    // restore defaults (optional)
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

//Draw background art
draw_sprite(battleBackground,0,x,y);

//Draw units in depth order
var _unitWithCurrentTurn = unitTurnOrder[turn].id;
for (var i = 0; i < array_length(unitRenderOrder); i++)
{
	with (unitRenderOrder[i])
	{
		draw_self();
	}
}

// Helper function to get stat color based on current/max ratio
// Returns different colors to indicate health status at a glance
GetStatColor = function(_current, _max, _isDead)
{
	if (_isDead) return c_red;
	if (_current < (_max * 0.5)) return c_orange;
	return c_white;
}

// ===== NEW SIDE PANEL UI =====
// Draw a vertical panel on the left side for party status

// Panel dimensions
var panelX = x + 5;
var panelY = y + 10;
var panelWidth = 70;
var partyMemberHeight = 70;
var partyMemberSpacing = 5;

// Draw party member panels
for (var i = 0; i < array_length(partyUnits); i++)
{
	var _char = partyUnits[i];
	var memberY = panelY + (i * (partyMemberHeight + partyMemberSpacing));
	
	// Draw background box for this party member
	draw_sprite_stretched(Spr_UIBox, 0, panelX, memberY, panelWidth, partyMemberHeight);
	
	// Determine if this unit has the current turn (for highlighting)
	var isCurrentTurn = (_char.id == _unitWithCurrentTurn);
	var isDead = (_char.hp <= 0);
	
	// Draw character name
	draw_set_font(Font1);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	
	// Color code the name based on status
	if (isCurrentTurn) {
		draw_set_color(c_yellow); // Yellow = currently acting
	} else if (isDead) {
		draw_set_color(c_red); // Red = dead
	} else {
		draw_set_color(c_white); // White = normal
	}
	
	draw_text(panelX + (panelWidth / 2), memberY + 3, _char.name);
	
	// Draw HP bar
	var barX = panelX + 5;
	var barY = memberY + 18;
	var barWidth = panelWidth - 10;
	var barHeight = 8;
	
	// HP bar background (darker)
	draw_set_color(c_dkgray);
	draw_rectangle(barX, barY, barX + barWidth, barY + barHeight, false);
	
	// HP bar fill (proportional to current HP)
	var hpPercent = _char.hp / _char.hpMax;
	var hpBarWidth = barWidth * hpPercent;
	
	// Color the HP bar based on percentage
	if (isDead) {
		draw_set_color(c_red);
	} else if (_char.hp < (_char.hpMax * 0.5)) {
		draw_set_color(c_orange);
	} else {
		draw_set_color(c_lime);
	}
	draw_rectangle(barX, barY, barX + hpBarWidth, barY + barHeight, false);
	
	// HP bar outline
	draw_set_color(c_white);
	draw_rectangle(barX, barY, barX + barWidth, barY + barHeight, true);
	
	// Draw HP text (numerical value)
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(panelX + (panelWidth / 2), barY + 10, "HP: " + string(_char.hp) + "/" + string(_char.hpMax));
	
	// Draw MP bar
	barY = memberY + 40; // Position below HP bar
	
	// MP bar background (darker)
	draw_set_color(c_dkgray);
	draw_rectangle(barX, barY, barX + barWidth, barY + barHeight, false);
	
	// MP bar fill (proportional to current MP)
	var mpPercent = _char.mp / _char.mpMax;
	var mpBarWidth = barWidth * mpPercent;
	
	// Color the MP bar based on percentage
	if (isDead) {
		draw_set_color(c_red);
	} else if (_char.mp < (_char.mpMax * 0.5)) {
		draw_set_color(c_orange);
	} else {
		draw_set_color(c_aqua); // Blue for MP
	}
	draw_rectangle(barX, barY, barX + mpBarWidth, barY + barHeight, false);
	
	// MP bar outline
	draw_set_color(c_white);
	draw_rectangle(barX, barY, barX + barWidth, barY + barHeight, true);
	
	// Draw MP text (numerical value)
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(panelX + (panelWidth / 2), barY + 10, "MP: " + string(_char.mp) + "/" + string(_char.mpMax));
}

// Draw enemy info panel (optional - shows enemy names)
// This creates a small panel on the right side showing active enemies
var enemyPanelX = x + 525;
var enemyPanelY = y + 10;

// Calculate the width needed based on longest enemy name
draw_set_font(Font1); // Set font first so string_width is accurate
var maxNameWidth = 0;
for (var i = 0; i < array_length(enemyUnits); i++)
{
	var nameWidth = string_width(enemyUnits[i].name);
	if (nameWidth > maxNameWidth) maxNameWidth = nameWidth;
}

// Width = longest name + padding for comfortable margins
var enemyPanelWidth = maxNameWidth + 20; // 10px padding on each side
var enemyPanelHeight = 20 + (array_length(enemyUnits) * 12);

draw_sprite_stretched(Spr_UIBox, 0, enemyPanelX, enemyPanelY, enemyPanelWidth, enemyPanelHeight);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_text(enemyPanelX + (enemyPanelWidth / 2), enemyPanelY + 3, "ENEMIES");

// List enemy names
var _drawLimit = 5; // Maximum enemies to show in list
for (var i = 0; (i < array_length(enemyUnits)) && (i < _drawLimit); i++)
{
	var _char = enemyUnits[i];
	if (_char.hp > 0)
	{
		draw_set_halign(fa_center);
		// Highlight if it's this enemy's turn
		if (_char.id == _unitWithCurrentTurn) {
			draw_set_color(c_red);
		} else {
			draw_set_color(c_white);
		}
		draw_text(enemyPanelX + (enemyPanelWidth / 2), enemyPanelY + 18 + (i * 12), _char.name);
	}
}

// Draw target highlight (shows which unit is being targeted)
if (cursor.active)
{
    with (cursor)
    {
        if (activeTarget != noone)
        {
            if (!is_array(activeTarget))
            {
                // Highlight single target by making them flash or have a visual indicator
                activeTarget.highlighted = true;
            }
            else
            {
                // Highlight multiple targets
                for (var i = 0; i < array_length(activeTarget); i++)
                {
                    activeTarget[i].highlighted = true;
                }
            }
        }
    }
}

// Draw battle text at the top center
// This shows action descriptions like "Ghost used Attack!"
if (battleText != "")
{
	var _w = string_width(battleText) + 20;
	draw_sprite_stretched(Spr_UIBox, 0, x + 320 - (_w * 0.5), y + 5, _w, 25);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_color(c_white);
	draw_text(x + 320, y + 10, battleText);
}

//// Reset draw settings to defaults
//draw_set_color(c_white);
//draw_set_halign(fa_left);
//draw_set_valign(fa_top);

////Show Turn Order
//var xStart = x +80;  // starting X position (adjust for your layout)
//var yStart = 20;   // starting Y position on screen
//var spacing = 10;  // vertical space between each unit entry

//    draw_set_font(Font1);
//    draw_set_halign(fa_left);
//    draw_set_color(c_white);

//    draw_text(xStart, yStart - 10, "Turn Order:");

//    for (var i = 0; i < array_length(unitTurnOrder); i++)
//    {
//        var _unit = unitTurnOrder[i];

//        // Skip if unit is no longer valid
//        if (!instance_exists(_unit)) continue;
//        if (_unit.hp <= 0) continue; // skip dead units

//        // Optional: Highlight current actor
//        if (i == turn)
//            draw_set_color(c_yellow);
//        else
//            draw_set_color(c_white);

//        // Draw either sprite, name, or portrait
//        draw_text(xStart, yStart + (i * spacing), _unit.name);

//		draw_sprite_stretched(Spr_UIBox,0,x,y,1,1);
//    }

//    draw_set_color(c_white);

// === TURN ORDER DISPLAY ===
var _x = 100; // starting x position (adjust for your layout)
var _y = 20;  // top position
var _padding = 8;
var _lineHeight = 20;

// Measure total width and height needed
var _maxWidth = 0;
var _totalHeight = 0;
var _validUnits = [];

// Collect valid units (skip dead ones)
for (var i = 0; i < array_length(unitTurnOrder); i++)
{
    var _unit = unitTurnOrder[i];
    if (instance_exists(_unit))
    {
        array_push(_validUnits, _unit);
        var _textWidth = string_width(_unit.name);
        if (_textWidth > _maxWidth) _maxWidth = _textWidth;
        _totalHeight += string_height(_unit.name);
    }
}

// Add spacing between names
_totalHeight += (_lineHeight - string_height("A")) * (array_length(_validUnits) - 1);

// Add padding for box
var _boxWidth = _maxWidth + (_padding * 2);
var _boxHeight = _totalHeight + (_padding * 2);

// Draw the stretched box first
draw_sprite_stretched(Spr_UIBox, 0, _x - _padding, _y - _padding, _boxWidth, _boxHeight);

// Title (optional)
draw_set_font(Font1);
draw_set_color(c_white);
draw_text(_x + 45, _y - 20, "Turn Order:");

// Draw the names inside the box
var _textY = _y;
for (var i = 0; i < array_length(_validUnits); i++)
{
    var _unit = _validUnits[i];
    draw_set_color(c_white);
    draw_text(_x+ 45, _textY, _unit.name);
    _textY += _lineHeight;
}

draw_set_color(c_white);

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
GetStatColor = function(_current, _max, _isDead)
{
	if (_isDead) return c_red;
	if (_current < (_max * 0.5)) return c_orange;
	return c_white;
}

//Old Boxes
//draw_sprite_stretched(Spr_Box,0,x+75,y+120,245,60);
//draw_sprite_stretched(Spr_Box,0,x,y+120,74,60);

//for (var i = 0; i < array_length(global.party); i++)
//	{
//		draw_sprite_stretched(Spr_Box,0,x + 75 + (i * 100),y+120,75,60);
//	}

//Positions
#macro COLUMN_ENEMY 15
#macro COLUMN_NAME 90
#macro COLUMN_HP 160
#macro COLUMN_MP 220

//Draw headings
draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_gray);
//draw_text(x+COLUMN_ENEMY,y+120,"ENEMY");
//draw_text(x+COLUMN_NAME,y+120,"NAME");
//draw_text(x+COLUMN_HP,y+120,"HP");
//draw_text(x+COLUMN_MP,y+120,"MP");

//for (var i = 0; i < array_length(global.party); i++)
//{
//	//draw_text(x+COLUMN_NAME+(i*100),y+120,"NAME");
//	draw_text(x+COLUMN_HP+(i*100),y+130,"HP");
//	draw_text(x+COLUMN_MP+(i*100),y+150,"MP");
//}


////Draw enemy names
//draw_set_font(Font1);
//draw_set_halign(fa_left);
//draw_set_valign(fa_top);
//draw_set_color(c_white);
//var _drawLimit = 3;
//var _drawn = 0;
//for (var i = 0; (i < array_length(enemyUnits)) && (_drawn < _drawLimit); i++)
//{
//	var _char = enemyUnits[i];
//	if (_char.hp > 0)
//	{
//		_drawn++;
//		draw_set_halign(fa_left);
//		draw_set_color(c_white);
//		if (_char.id == _unitWithCurrentTurn) draw_set_color(c_yellow);
//		draw_text(x+COLUMN_ENEMY,y+130+(i*12),_char.name);
//	}
//}

////Draw party info
//for (var i = 0; i < array_length(partyUnits); i++)
//{
//	draw_set_halign(fa_left);
//	draw_set_color(c_blue);
//	var _char = partyUnits[i];
//	if (_char.id == _unitWithCurrentTurn) draw_set_color(c_yellow);
//	if (_char.hp <= 0) draw_set_color(c_red);
//	draw_text(x+COLUMN_NAME,y+110+(i*12),_char.name);
//	draw_set_halign(fa_right);
	
//	draw_set_color(c_white);
//	if (_char.hp < (_char.hpMax * 0.5)) draw_set_color(c_orange);
//	if (_char.hp <= 0) draw_set_color(c_red);
//	draw_text(x+COLUMN_HP+50,y+130+(i*12),string(_char.hp) + "/" + string(_char.hpMax));
	
//	draw_set_color(c_white);
//	if (_char.mp < (_char.mpMax * 0.5)) draw_set_color(c_orange);
//	if (_char.hp <= 0) draw_set_color(c_red);
//	draw_text(x+COLUMN_MP+50,y+130+(i*12),string(_char.mp) + "/" + string(_char.mpMax));
	
//	draw_set_color(c_white);
//}

//var baseX = 75;
//var baseY = 120;

//// bar sizing
//var tileWidth = sprite_get_width(Spr_HPBarTile);
//var tileHeight = sprite_get_height(Spr_HPBarTile);
//var barWidth = 60; // total bar width in pixels
//var barSpacing = 2; // space between HP and MP bars
//var memberSpacing = 10; // space between party members

//for (var i = 0; i < array_length(partyUnits); i++)
//{
//    var _char = partyUnits[i];
//    var drawX = baseX;
//    var drawY = baseY + i * ((tileHeight * 2) + barSpacing + memberSpacing);

//    // --- HP Bar ---
//    var hpPercent = clamp(_char.hp / _char.hpMax, 0, 1);
//    var maxTiles = barWidth div tileWidth;
//    var tilesToDraw = ceil(maxTiles * hpPercent);

//    // background
//    draw_sprite(Spr_BarBG, 0, drawX, drawY);

//    // fill
//    for (var t = 0; t < tilesToDraw; t++)
//    {
//        draw_sprite(Spr_HPBarTile, 0, drawX + t * tileWidth, drawY);
//    }

//    // border
//    draw_sprite(Spr_BarBorder, 0, drawX, drawY);

//    // --- MP Bar (below HP bar) ---
//    var mpPercent = clamp(_char.mp / _char.mpMax, 0, 1);
//    var tilesToDrawMP = ceil(maxTiles * mpPercent);
//    var mpY = drawY + tileHeight + barSpacing;

//    draw_sprite(Spr_BarBG, 0, drawX, mpY);

//    for (var t = 0; t < tilesToDrawMP; t++)
//    {
//        draw_sprite(Spr_MPBarTile, 0, drawX + t * tileWidth, mpY);
//    }

//    draw_sprite(Spr_BarBorder, 0, drawX, mpY);
//}

/// DrawPartyHUD()
// Call this in Obj_Battle Draw Event

var startX = 16;               // top-left corner X
var startY = 16;               // top-left corner Y
var spacingY = 28;             // vertical space between each unit's bars
var boxPadding = 4;            // padding inside the background box
var barWidth = 100;            // width of the HP/MP bars
var barHeight = 8;             // height of each bar

for (var i = 0; i < array_length(partyUnits); i++)
{
    var _unit = partyUnits[i];
    if (!instance_exists(_unit)) continue;

    var posX = startX;
    var posY = startY + i * spacingY;

    // Draw background box (slightly larger than bars)
    var boxWidth = barWidth + boxPadding*2;
    var boxHeight = barHeight*2 + boxPadding*3; // space for HP + MP
    draw_sprite_stretched(Spr_UIBox, 0, posX, posY, boxWidth, boxHeight);

    // --- HP Bar ---
    var hpPercent = clamp(_unit.hp / _unit.hpMax, 0, 1);
    var hpBarWidth = hpPercent * barWidth;

    draw_set_color(c_black);
    draw_rectangle(posX + boxPadding, posY + boxPadding, posX + boxPadding + barWidth, posY + boxPadding + barHeight, false); // bar background
    draw_set_color(_unit.hp <= 0 ? c_red : (hpPercent < 0.5 ? c_orange : c_green));
    draw_rectangle(posX + boxPadding, posY + boxPadding, posX + boxPadding + hpBarWidth, posY + boxPadding + barHeight, false);

    // --- MP Bar ---
    var mpPercent = clamp(_unit.mp / _unit.mpMax, 0, 1);
    var mpBarWidth = mpPercent * barWidth;

    draw_set_color(c_black);
    draw_rectangle(posX + boxPadding, posY + boxPadding + barHeight + boxPadding, posX + boxPadding + barWidth, posY + boxPadding + barHeight*2 + boxPadding, false); // bar background
    draw_set_color(_unit.mp <= 0 ? c_red : (mpPercent < 0.5 ? c_orange : c_blue));
    draw_rectangle(posX + boxPadding, posY + boxPadding + barHeight + boxPadding, posX + boxPadding + mpBarWidth, posY + boxPadding + barHeight*2 + boxPadding, false);

    draw_set_color(c_white); // reset color
}







//// Draw party info
//for (var i = 0; i < array_length(partyUnits); i++)
//{
//    draw_set_halign(fa_left);
//    draw_set_color(c_blue);
//    var _char = partyUnits[i];
//    var _isDead = _char.hp <= 0;

//    if (_char.id == _unitWithCurrentTurn) draw_set_color(c_yellow);
//    if (_isDead) draw_set_color(c_red);
//    draw_text(x + COLUMN_NAME + (i * 100), y + 110, _char.name);

//    // Draw head sprite next to the name
//    var headSprite = _char.sprites.head;
//    draw_sprite(headSprite, 0, x + COLUMN_NAME + (i * 100) - 20, y + 110);

//    draw_set_halign(fa_right);

//    // Draw HP with color based on value
//    draw_set_color(GetStatColor(_char.hp, _char.hpMax, _isDead));
//    draw_text(x + COLUMN_HP + (i * 100), y + 130, string(_char.hp) + "/" + string(_char.hpMax));

//    // Draw MP with color based on value
//    draw_set_color(GetStatColor(_char.mp, _char.mpMax, _isDead));
//    draw_text(x + COLUMN_MP + (i * 100), y + 150, string(_char.mp) + "/" + string(_char.mpMax));

//    draw_set_color(c_white);
//}




////Draw target cursor
//if (cursor.active)
//{
//	with (cursor)
//	{
//		if (activeTarget != noone) 
//		{
//			if (!is_array(activeTarget))
//			{
//				draw_sprite(Spr_TarSelect,-1,activeTarget.x,activeTarget.y);
//			}
//			else 
//			{
//				draw_set_alpha(sin(get_timer()/50000)+1);
//				for (var i = 0; i < array_length(activeTarget); i++)
//				{
//					draw_sprite(Spr_TarSelect,-1,activeTarget[i].x,activeTarget[i].y);
//				}
//				draw_set_alpha(1.0);
//			}
//		}
//	}
//}
if (cursor.active && cursor.activeTarget != noone){
	var _target = cursor.activeTarget;
draw_target_tooltip(_target);
}
//// Assuming `cursor.active` is true and `cursor.activeTarget` is set
//if (cursor.active && cursor.activeTarget != noone) {
//    var _target = cursor.activeTarget;

//    // Tooltip position
//    var tooltipX = _target.x + 16; // offset so it doesn't overlap the sprite
//    var tooltipY = _target.y - 16;

//    // Draw box
//    draw_sprite_stretched(Spr_Box, 0, tooltipX, tooltipY, 100, 24);

//    // Draw enemy name
//    draw_set_color(c_white);
//    draw_set_font(Font1);
//    draw_set_halign(fa_left);
//    draw_set_valign(fa_middle);
//    draw_text(tooltipX + 4, tooltipY + 12, _target.name);
//}


// Draw target highlight instead of a cursor sprite
if (cursor.active)
{
    with (cursor)
    {
        if (activeTarget != noone)
        {
            if (!is_array(activeTarget))
            {
                // Highlight single target
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


//Draw battle text
if (battleText != "")
{
	var _w = string_width(battleText)+20;
	draw_sprite_stretched(Spr_Box,0,x+160-(_w*0.5),y+5,_w,25);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_text(x+160,y+10,battleText);
}
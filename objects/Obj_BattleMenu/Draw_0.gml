var menuXpos = x;
var menuYpos = y;
var actorOffset = (global.currentActor == "Nerves") ? 100 : 0;

for (var i = 0; i < array_length(global.party); i++)
{
    draw_sprite_stretched(Spr_Box, 0, menuXpos + actorOffset, menuYpos, widthFull, heightFull);
}

draw_set_colour(c_white);
draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

var _desc = (description != -1);
var _scrollPush = max(0, hover - (visibleOptionsMax - 1));

for (var l = 0; l < (visibleOptionsMax + _desc); l++)
{
    if (l >= array_length(options)) break;
    
    draw_set_colour(c_white);

    if (l == 0 && _desc)
    {
        draw_text(menuXpos + xmargin + actorOffset, menuYpos + ymargin, description);
    }
    else
    {
        var _optionToShow = l - _desc + _scrollPush;
        var _str = options[_optionToShow][0];

        if (hover == _optionToShow - _desc) 
        {
            draw_set_colour(c_yellow);
        }
        
        if (options[_optionToShow][3] == false) 
        {
            draw_set_colour(c_gray);
        }
        
        draw_text(menuXpos + xmargin + actorOffset, menuYpos + ymargin + l * heightLine, _str);
    }
}

draw_sprite(Spr_Pointer, 0, menuXpos + xmargin + 8 + actorOffset, menuYpos + ymargin + ((hover - _scrollPush) * heightLine) + 7);

if (visibleOptionsMax < array_length(options) && hover < array_length(options) - 1) 
{
    draw_sprite(Spr_DownArrow, 0, x + widthFull * 0.5 + actorOffset, y + heightFull - 7);
}

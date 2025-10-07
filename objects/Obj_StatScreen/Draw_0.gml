draw_sprite_stretched(Spr_Box,0,x,y,width_full,height_full);

margin = 2
draw_set_colour(c_white);
draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(x + margin, y + margin, text_full);
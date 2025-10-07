// Default draw override for highlighting
if (highlighted)
{
	image_blend = c_yellow;
    highlighted = false; // reset after drawing
}
else
{
    draw_sprite(sprite_index, image_index, x, y);
}

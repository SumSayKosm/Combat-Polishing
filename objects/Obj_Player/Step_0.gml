//set controls
if global.menu_active = false
{
	right_key = keyboard_check(vk_right);
	left_key = keyboard_check(vk_left);
	up_key = keyboard_check(vk_up);
	down_key = keyboard_check(vk_down);


	//get xspd and yspd

	xspd = (right_key - left_key) * move_spd;
	yspd = (down_key - up_key) * move_spd;

	//movement
	x += xspd;
	y += yspd;

	//step counter
	if(x != xprevious || y != yprevious)
	{
	    global.steps++;
	}

	if keyboard_check_pressed(vk_space)
	{
		show_message(global.steps);	
	}
}
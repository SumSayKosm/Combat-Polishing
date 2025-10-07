	if (keyboard_check_pressed(vk_escape))
	{
		instance_destroy();
		global.menu_active = false;
	}
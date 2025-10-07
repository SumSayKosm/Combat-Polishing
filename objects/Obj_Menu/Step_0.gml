hover += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);

	//Looping cursor
	if (hover > array_length(options)-1) hover = 0;
	if (hover < 0) hover = array_length(options)-1;

	//Execute selected option
	if	(keyboard_check_pressed(vk_enter)) 
	{
		if (array_length(options[hover]) == 2)
		{
				var _func = options[hover][1];
				if (_func != -1) _func();
		}
		instance_destroy();
	}
	
	if (keyboard_check_pressed(vk_escape))
	{
		instance_destroy();
		global.menu_active = false;
	}
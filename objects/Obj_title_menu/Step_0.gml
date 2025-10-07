

up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_space);

//store number of options in menu
op_length = array_length(option[menu_level])


//move through menu

pos += down_key - up_key;

if pos >= op_length
{
	pos = 0
}


if pos < 0
{
pos = op_length - 1
}


//using options
if accept_key {
	switch(menu_level) {
		
		//pause menu
		case 0:
switch(pos) {
		//start
		case 0: room_goto_next(); break; 
		//settings
		case 1: menu_level = 1; break;
		//Quit
		case 2: game_end(); break;
		}
		break;

//settings
case 1: 
switch(pos) {
	//op 1
	case 0: break;
case 1: break;
//back 
case 2:menu_level = 0; break;
}
}
}
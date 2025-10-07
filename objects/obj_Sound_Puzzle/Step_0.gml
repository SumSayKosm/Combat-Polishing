if place_meeting(x, y, Obj_Blek)  && Collision = 0
{
state = 1;
audio_play_sound(SOUND, 10, false)
global.current_code += Buttonid
Collision = 1
}

if !place_meeting(x, y, Obj_Blek)
{
Collision = 0
state = 0
	
}



image_index = state

depth = -10


if place_meeting(x, y, obj_block_blue) or place_meeting(x, y, Obj_Blek)
{
state = 1;
} else{
	state = 0;
}

if state = 1 && playedSound = false
{
	audio_play_sound(snd_Button_Activate, 10, false)
	playedSound = true
}

if state = 0
{
playedSound = false	
}





image_index = state

depth = -10
SONG = snd_Echo_in_the_Halls;

if not audio_is_playing(snd_Echo_in_the_Halls)

{
audio_play_sound(snd_Echo_in_the_Halls, 99, true)
}

if audio_is_playing(snd_Echo_in_the_Halls)
{
	
	instance_destroy(inst_5C155A1E)
}


if audio_is_playing(snd_Echo_in_the_Halls) = true
{
audio_stop_sound(snd_OLDVillage_of_Good_Boys)	
}
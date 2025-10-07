

//play target song
if song_Asset != target_Song_Asset
{
	
	//tell the old song to fade out
	if audio_is_playing(song_Instance)
	{
	//add to array
	array_push(fade_Out_Instances, song_Instance);
	//add songInst starting volume
	array_push(fade_Out_Inst_Volume, fade_In_Inst_Volume);
	array_push(fade_Out_Inst_Time, end_Fade_Out_Time);
	
	//reset songInst
	song_Instance = noone;
	song_Asset = noone;
	}
	
	
//play the song if old song has faded
if array_length(fade_Out_Instances) == 0
{
if audio_exists(target_Song_Asset)
{
//play song and store inst in a variable
song_Instance = audio_play_sound(target_Song_Asset, 4, true)

//start song's volume at 0
audio_sound_gain(song_Instance, 0, 0);
fade_In_Inst_Volume = 0;
}
//set song
song_Asset = target_Song_Asset
}

}


var _finalVol = global.musicVolume

//volume control
//main song volume
if audio_is_playing(song_Instance)
{
//fade song in
if start_Fade_In_Time > 0
{
if fade_In_Inst_Volume < 1 {fade_In_Inst_Volume+= 1/start_Fade_In_Time} else fade_In_Inst_Volume = 1; }
	
	else
	{
		fade_In_Inst_Volume = 1;
	}
	
	//actually set gain
	audio_sound_gain(song_Instance, fade_In_Inst_Volume*_finalVol, 0);
}



//fading songs out
for (var i = 0; i < array_length(fade_Out_Instances); i++)
{
//fade the volume
if fade_Out_Inst_Time[i] > 0
{
if fade_Out_Inst_Volume[i] > 0 {fade_Out_Inst_Volume[i] -= 1/fade_Out_Inst_Time[i];};
}
else
{
	fade_Out_Inst_Volume[i] = 0
}
//actually set gain
audio_sound_gain(fade_Out_Instances[i], fade_Out_Inst_Volume[i]*_finalVol, 0);

//stop song completly at 0, remove from every array
if fade_Out_Inst_Volume[i] <= 0
{
//stop song
if audio_is_playing(fade_Out_Instances[i]) {audio_stop_sound(fade_Out_Instances[i]);};
//remove from arrays
array_delete(fade_Out_Instances, i, 1);
array_delete(fade_Out_Inst_Volume, i, 1);
array_delete(fade_Out_Inst_Time, i, 1);
//set loop back
i--;
}
}

if audio_is_playing(snd_Something_Fishy_This_Way_Comes)
{
set_song_in_game(noone);	
}
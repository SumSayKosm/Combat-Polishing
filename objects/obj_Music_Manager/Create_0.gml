//global volume
global.musicVolume = 1;

//info for song
song_Instance = noone;
song_Asset = noone;
target_Song_Asset = noone;
end_Fade_Out_Time = 0; //Frames to fade out
start_Fade_In_Time = 0; //Frames to fade in
fade_In_Inst_Volume = 0; //the volume of song inst

//fading music out and stopping songs
fade_Out_Instances = array_create(0); //audio instances to fade out
fade_Out_Inst_Volume = array_create(0); //volumes of induvidual audio inst
fade_Out_Inst_Time = array_create(0);


page = 0;
page_number = 0;
text_id = "";
troutTheme = false
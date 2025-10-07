
function set_song_in_game(_song, _fadeOutCurrentSong = 0, _fadeIn = 0)
{
//_song = set to any song (including "noone" to stop the track completly)
//_fadeOutCurrentSong = time (in frames) the current song will take to fade out
//_fadeIn = time (in frames) the target song will take to fade in (if not "noone")

with(obj_Music_Manager)
{
target_Song_Asset = _song;
end_Fade_Out_Time = _fadeOutCurrentSong
start_Fade_In_Time = _fadeIn
}


}
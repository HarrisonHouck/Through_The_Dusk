width = 400
height = 125

op_border = -64
op_space = 32

pos = 0;

option[0] = "Start Game"
option[1] = "Instructions"
option[2] = "Credits"
option[3] = "Quit Game"

op_length = array_length(option)

if(audio_is_playing(snd_music))
{
	
}else{
	audio_play_sound(snd_music,2,true)
}
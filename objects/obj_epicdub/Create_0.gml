width = 300
height = 200

op_border = 8
op_space = 16
obj_player.visible=false
global.light_cheat=true
obj_scoreboard.visible=false
option[0] = "Congratulations!"
option[1] = "You have successfully"
option[2] = "found the source of the corruption!"
option[3] = "Your score total was: " +string(global.score)
option[4] = "Thank you for for playing!"
option[5] = "Press 'Space' to go to the menu"

pos = option[5];

op_length = array_length(option)
audio_stop_sound(snd_ambient)

global.fuel = 100000
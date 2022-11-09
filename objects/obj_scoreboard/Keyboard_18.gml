if(keyboard_check_pressed(ord("R"))){
	room_restart()
}
if(keyboard_check_pressed(ord("G"))){
	game_restart()
}
if(keyboard_check_pressed(ord("P"))){
	global.healthregen = 10000
	global.hp = 10000000
	global.fuel = 1000000
	global.light_cheat=true
	
}
if(keyboard_check_pressed(ord("N"))){
	room_goto_next()
}


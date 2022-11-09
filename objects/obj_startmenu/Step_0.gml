//get inputs
up_key = keyboard_check_pressed(vk_up)
down_key = keyboard_check_pressed(vk_down)
accept_key = keyboard_check_pressed(vk_space)

//move through menu
pos += down_key - up_key
if(pos >= op_length) {
	pos = 0
}
if(pos<0){
	pos=op_length-1
}

//using options
if(accept_key){
	switch(pos){
		//start
		case 0: 
		room_goto(5)
		break;
	
		//instructions
		case 1:
		room_goto_next()
		break;
		
		//credits 
		case 2: 
		room_goto(2)
		break;
		
		//quit
		case 3:
		game_end()
		break;
	}
}

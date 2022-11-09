

if(!keyboard_check(vk_left) and !keyboard_check(vk_right) and !keyboard_check(vk_up) and !keyboard_check(vk_down)){
	sprite_index = spr_still
	audio_stop_sound(snd_player_walk)
}
else{
	
	if(global.fuel == 0){
	sprite_index = spr_nolightrun
	
	}	
	else{
	sprite_index = spr_player
	if(audio_is_playing(snd_player_walk)==false){
		audio_play_sound(snd_player_walk,1,true)
	}
	}
}

if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_stopper_dummy)) {
	image_xscale = -.25
	x += -move_speed
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_stopper_dummy)) {
	image_xscale = .25
	x += move_speed
}
if(keyboard_check_pressed(vk_up)){
	if (instance_place(x, y+1, obj_stopper_dummy)) {
		jump_height = -14
		vspeed = jump_height
	}
}
	
if(!instance_place(x, y+1, obj_stopper_dummy)){
	gravity = .5
}
else if(instance_place(x, y+1, obj_passable) and keyboard_check(vk_down)){
	gravity=.5
	obj_passable.solid=false
}
else{
	gravity=0
	obj_passable.solid=true
}
if(global.hp<100){
	alarm[0] = 1
}
if(burnable_prompt==1 or burnable_prompt==2){
burnable_prompt=0
}
if(global.hp<=0){
instance_destroy()	
}
global.fuel-=0.01
if(global.fuel<=0){
global.fuel=0
if(alarm_get(2)==-1){
	alarm_set(2,210)
}
}
else{
alarm_set(2,-1)	
}
if(instance_exists(obj_enemy1) and distance_to_object(obj_enemy1)<600){
	if(audio_is_playing(snd_enemy_walk)==false){
	audio_play_sound_at(snd_enemy_walk,x,y,0,10,30,1,true,0)
	}
}
else{
audio_stop_sound(snd_enemy_walk)	
}
/// @description Insert description here
// You can write your code in this editor
global.burn_cost=25
if(global.fuel>=global.burn_cost){
burnable_prompt=1	
}
else{
burnable_prompt=2	
}
if(keyboard_check_pressed(ord("E"))and global.fuel>=global.burn_cost){
instance_destroy(other)	
global.fuel-=global.burn_cost
}


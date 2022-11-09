/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
x=obj_player.x
y=obj_player.y-obj_player.sprite_height/2
}
if(global.fuel<=0){
visible=false	
}
else{
visible=true	
}


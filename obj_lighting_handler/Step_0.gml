/// @description Insert description here
// You can write your code in this editor
if(surface_exists(darkness)){
surface_set_target(darkness)
draw_set_color(c_black)
draw_set_alpha(1)
draw_rectangle(0,0,room_width,room_height,0)
}
else{
darkness=surface_create(room_width,room_height)
surface_set_target(darkness)
draw_clear_alpha(c_black,0)
surface_reset_target()	
}
gpu_set_blendmode(bm_subtract)

draw_set_color(c_white)
draw_set_alpha(1)
draw_sprite(spr_light_circle,0,obj_lantern.x,obj_lantern.y)
	//also spawn an object to control ai/other interactions
gpu_set_blendmode(bm_normal)
draw_set_alpha(1)
surface_reset_target()

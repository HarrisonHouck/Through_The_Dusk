

draw_set_alpha(1)
if(global.fuel>0){
draw_self()
}
if(burnable_prompt==1){
draw_text(x-50,y-sprite_height,"Press E to burn")
}
else if(burnable_prompt==2){
draw_text(x-50,y-sprite_height,"Not enough fuel")
}
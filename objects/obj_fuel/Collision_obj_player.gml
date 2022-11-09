/// @description Insert description here
// You can write your code in this editor
global.hp+=25
if(global.fuel+100/3>100){
global.score+=global.fuel+100/3-100
global.fuel=100

}
else{
global.fuel+=100/3	
}
global.score+=15
instance_destroy()



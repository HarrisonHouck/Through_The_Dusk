/// @description Insert description here
// You can write your code in this editor

if(guaranteed==false){
chance=irandom(1)	
if(chance==1 and global.room_pickup_lim!=0){
global.room_pickup_lim--	
}
else{
	if(chance==0 or global.room_pickup_lim==0){
	instance_destroy()	
	}
}
}

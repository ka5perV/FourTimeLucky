 /// @description Insert description here
// You can write your code in this editor




if (global.HP >= 3){

global.HP = 3;


} else {

audio_play_sound(snPickup_Carrot,5,false);
global.HP++;
instance_destroy();

	
	}
	

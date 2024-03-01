sprite_index = sPlayerPushB;
	
if(global.HP < 1){
	with (oGun) instance_destroy();
instance_change(oPDead,true);

direction = point_direction(other.x,other.y,x,y);
//slight push when dead
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(4,direction)-2;
if (sign(hsp) !=0) image_xscale = sign(hsp);


global.mytime = 0;
} else { // take damage
	
	if (canTakeDamage) {
		
	// push back here
	
    global.HP--;
	audio_play_sound(snDeath,5,false); //
	
    canTakeDamage = false; // Prevent further damage 
    alarm[0] = damageDelay; // delay
	}
}
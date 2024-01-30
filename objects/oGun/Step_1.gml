/// @description Insert description here
// You can write your code in this editor
x = oPlayer.x-5;
y = oPlayer.y-15;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay - 1;
recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left)) && (firingdelay<0)
{
	firingdelay = 5;
	recoil = 4;
	
//Screenshake
	ScreenShake(2,10);

//Sound when shooting
	audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
	audio_play_sound(snShot,5,false);
	
	
	with(instance_create_layer(x,y, "Bullets",oBullet))
	{
		spd = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
	//Gun Kickback
	with (oPlayer)
	{
		gunkickx = lengthdir_x(1.5, other.image_angle-180);
		gunkicky = lengthdir_y(1, other.image_angle-180);
	}
}
recoil = max (0, recoil -1);
x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}







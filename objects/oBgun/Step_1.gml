//Step event for Enemy shooting // position of gun
x = owner.x-300;
y = owner.y-100;


//resize the gun depend on the enemy size
image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer))
{
	if (oPlayer.x < x) image_yscale = -image_yscale;
	//pointing the gun to oPlayer
	if (point_distance(oPlayer.x,oPlayer.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
		if (countdown <=0 )
		{
			countdown = countdownrate;
			if (!collision_line(x,y,oPlayer.x,oPlayer.y,oWall,false,false))
				{
				//bullet code here
				//Sound when shooting
				audio_sound_pitch(snShot,choose(0.8,1.0,1.2));
				audio_play_sound(snShot,5,false);
	
				with(instance_create_layer(x,y, "Bullets",oBossBullet))
				{
					spd = 5;
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;
					//image_index = oEnemyShooting;
				}
				}
			
		}
	}	
}
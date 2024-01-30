#region //Get player input
if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

//Calculate movement
var move = key_right -  key_left;

hsp = (move * walksp) + gunkickx; // orig code before gunkick hsp = move * walksp;
gunkickx = 0; // additional code

vsp = (vsp + grv) + gunkicky; // orig code before gunkick vsp = vsp + grv;
gunkicky = 0; // additional code

//jumping code before jump buffer
//if (place_meeting(x,y+1,oWall)) && (key_jump)
//jump buffer
canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -7
	//jump buffer
	canjump = 0;
}
#endregion

#region //Collide and move

//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
	x += sign(hsp)
	}
	hsp = 0;
}

x += hsp;

//Vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
	y += sign(vsp)
	}
	vsp = 0;
}

y += vsp;
#endregion

#region //Animation

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp)>0) image_index = 1; else image_index = 0;
}
else
{
	//jump buffer
	canjump = 10;
	//sound when landing
	if (sprite_index == sPlayerA) 
	{
		audio_sound_pitch(snLanding,choose(0.8,1.0,1.2));
		audio_play_sound(snLanding,4,false);
		//code for oDust from jumping to hitting the floor
		repeat (5)
		{
			with (instance_create_layer(x,bbox_bottom,"Bullets",oDust))
			{
				vsp = 0;
				
			}
		}
	}
	
	//Continuation before adding sfx
	image_speed = 1;
	if (hsp==0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}
if (hsp != 0) image_xscale = sign (hsp);
#endregion





 //Get player input
if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_up) || keyboard_check(ord("W"));
	dash_key_left = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("A"));
	dash_key_right = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"));
	dash_key_jump = keyboard_check(vk_up) || keyboard_check(ord("W"));
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

//Calculate movement
var move = key_right -  key_left;

hsp = move * walksp;
vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7
}

var currentTime = current_time;

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

//Animation

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp)>0) image_index = 1; else image_index = 0;
}
else
{
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


// dash left
if (dash_key_left) {
    if (currentTime - leftPressedTime <= doubleClickThreshold && canDash) {
		vspeed = 0; 
        hspeed = -dashSpeed;
        canDash = false; 
        alarm[0] = dashDuration; 
		image_xscale = -1
    }
    leftPressedTime = currentTime;
}

// dash right
if (dash_key_right) {
	if (currentTime - rightPressedTime <= doubleClickThreshold && canDash) {
        vspeed = 0;
        hspeed = dashSpeed; 
        canDash = false;
        alarm[0] = dashDuration;
		image_xscale = 1
    }
    rightPressedTime = currentTime;
}




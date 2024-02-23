/*
//Get player input

key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

//Calculate movement
var move = key_right -  key_left;

hsp = move * walksp;
*/

vsp = vsp + grv;
if (frozen) exit;

/*
if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7
}
*/

//Don't walk on edges
if (grounded) && (afraidofheights) && (!place_meeting(x+hsp,y+1,oWall))
{
	hsp = -hsp;
}

//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
	x += sign(hsp)
	}
	hsp = -hsp;
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
	//code for ledges
	grounded = false;
	//
	if (frozen) {
		sprite_index = sFrozenEnemy;
	}
	else {
		sprite_index = sEnemyA;
	}
	image_speed = 0;
	if (sign(vsp)>0) image_index = 1; else image_index = 0;
}
else
{
	//code for ledges
	grounded = true;
	//
	image_speed = 1;
	if (frozen) {
		sprite_index = sFrozenEnemy;

	}
	else if (hsp==0)
	{
		sprite_index = sEnemy;
	}
	else
	{
		sprite_index = sEnemyR;
	}
}
if (hsp != 0) image_xscale = sign (hsp) * size;
image_yscale = size;

var margin = 150;
var view_x = view_xview[0];
var view_y = view_yview[0];
var view_width = view_wview[0];
var view_height = view_hview[0];

var bullet_interval = 8;
// show_debug_message("x:" + string(x) + ",y:" + string(y) + ",view_x:" + string(view_x) + ",view_y:" + string(view_y)  + ",view_width:" + string(view_width) + ",view_height:" + string(view_height));
if (x > view_x + margin && x < view_x + view_width - margin && y > view_y + margin && y < view_y + view_height - margin) {
 
	fire_timer += 1;

	if (fire_timer >= (bullet_interval + random(5)) * room_speed) { 
	    fire_timer = 0;
	    var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	    var bullet = instance_create_layer(x, y, "Enemy", oEBullet);
	    bullet.direction = dir;
	    bullet.speed = 10;
		show_debug_message(dir);
	}
}
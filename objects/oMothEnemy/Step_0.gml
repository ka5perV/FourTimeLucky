

/*
/
/Antonio's code
//Moth following the player
if (instance_exists(oPlayer)) {
    move_towards_point(oPlayer.x, oPlayer.y, spd);
} else {
}    
*/

// move the butterfly left and right

if (frozen) exit;


/*

x += horizontal_speed * dir;

if (x < position_from || x > position_to)
{
	dir *= -1;
}
*/


hsp = dir * movespeed;

//Horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
	x += sign(hsp)
	}
	hsp = 0; //-hsp;
	dir *= -1;
}

x += hsp;

if (!frozen && !(x > view_xview[0] && x < view_xview[0] + view_wview[0] &&
    y > view_yview[0] && y < view_yview[0] + view_hview[0])) {
 

	if (alarm[0] <= 0) { 
		bullet_x = x + 120;
		bullet_y = y + 90;
	    var bullet = instance_create_layer(bullet_x, bullet_y, "Bullets", oMothBullet); 
	    bullet.direction = point_direction(bullet_x, bullet_y, oPlayer.x, oPlayer.y); 
		bullet.image_angle = bullet.direction;
	    bullet.speed = 10; 
	    alarm[0] = 300; 
	}
}
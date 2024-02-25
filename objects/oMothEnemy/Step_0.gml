/*
//Antonio's code
//Moth following the player
if (instance_exists(oPlayer)) {
    move_towards_point(oPlayer.x, oPlayer.y, spd);
} else {
}    
*/

// move the butterfly left and right

if (frozen) exit;

x += horizontal_speed * dir;

if (x <= position_from || x >= position_to)
{
	dir *= -1;
}
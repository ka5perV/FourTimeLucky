// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//code from oPlayer
function KillPlayer()
{
	with (oGun) instance_destroy();
	instance_change(oPDead,true);
	
	direction = point_direction(other.x,other.y,x,y);
	//slight push when dead
	hsp = lengthdir_x(6,direction);
	vsp = lengthdir_y(4,direction)-2;
	if (sign(hsp) !=0) image_xscale = sign(hsp);
	
	//refresh scrore when a player dies
	global.kills -= global.killsthisroom;
}
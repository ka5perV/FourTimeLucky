
/*
//Die
with (oGun) instance_destroy();
instance_change(oPDead,true);

direction = point_direction(other.x,other.y,x,y);
//slight push when dead
hsp = lengthdir_x(6,direction);
vsp = lengthdir_y(4,direction)-2;
if (sign(hsp) !=0) image_xscale = sign(hsp);
*/

//Kill and create scripts when a player hit by bullets
if (global.hasgun == true) KillPlayer();






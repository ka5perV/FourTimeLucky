 //Facing of dead enemy


if (hp <=0) 
{
	with (instance_create_layer(x,y,layer,oDead))
	{
		direction = other.hitfrom;
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3,direction)-2;
		if (sign(hsp) !=0) image_xscale = sign(hsp) * other.size; // Parent+child object
		image_yscale = other.size; // Parent+child object
	}
	//code when enemy hasweapon // when enemy dies gun is also destroyed
	with (mygun) instance_destroy();
	instance_destroy();
}

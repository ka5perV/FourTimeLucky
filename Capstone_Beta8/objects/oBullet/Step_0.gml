//changing speed variable to spd from oGun
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);


//code after deleting collision with pShootable event

if (place_meeting(x,y,pShootable))
{
	with (instance_place(x,y,pShootable))
	{
		hp --;
		flash = 3;
		hitfrom = other.direction;
	}
	instance_destroy();
}

if (place_meeting(x,y,oWall)) && (image_index !=0) 
{
	while (place_meeting(x,y,oWall))
	{
		//code for hitspark to look real not showing inside wall
		x -= lengthdir_x(1, direction);
		y -= lengthdir_y(1, direction);
	}
	spd = 0;
	//shows the oHitSpark when hitting walls
	instance_change(oHitSpark,true);
	
}







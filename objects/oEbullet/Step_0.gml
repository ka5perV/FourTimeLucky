//changing speed variable to spd from oGun
x += lengthdir_x(spd, direction);
y += lengthdir_y(spd, direction);


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







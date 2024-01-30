//Screenshake(magnitude,frames)
//@arg magnitude sets the strength of the shake (radius in pixels)
//@args Frame sets the length of the shake in frame (60 = 1 seconds at 60fps)

with (oCamera)
{
	if (argument0 > shake_remain)
	{
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}
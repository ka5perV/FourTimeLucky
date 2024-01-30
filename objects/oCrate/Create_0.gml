//Create wall

mywall = instance_create_layer(x,y,layer,oWall);
//need to rescale since oWall is different in size
with (mywall)
{
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_height;
}







//update camera

//update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
	//when a player died
	if ((follow).object_index == oPDead)
	{
		x = xTo;
		y = yTo;
	}
}


//Update object position
x += (xTo - x) / 15;
y += (yTo - y) / 15;


//Keep camera center inside room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//screenshake
x += random_range(-shake_remain,shake_remain);
y += random_range(-shake_remain,shake_remain);
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
//if (layer_exists("Mountains"))
//layer_x("Mountains",x/4);

if (room != rMenu) && (room != rEnding)
{
	if (layer_exists("Mountains"))
	{
	layer_x("Background",x/2);
	}
	if (layer_exists("Trees"))
	{
	layer_y("Background",y-180);
	}
}




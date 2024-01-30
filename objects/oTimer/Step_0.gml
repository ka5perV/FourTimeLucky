/// @description Insert description here
// You can write your code in this editor

//Timer for a player to survive the game
if (mytime >0)
{
	mytime = mytime - delta_time/1000000;
}
else mytime = 0; showTime = ceil (mytime);



if (mytime <= 10)
{
	if (layer_get_visible("Effect") == 0)
	{
		layer_set_visible("Effect", 1)
	}
	else
	{
		layer_set_visible("Effect", 0);
	}
}
if (mytime <=0)
{
	show_message("You didn't save the girl :(\nClick ok to restart the game");
	game_restart()
}









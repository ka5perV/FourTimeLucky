//Tick down a spawner if one exists
if (instance_exists(oSpawner))
{
	with(oSpawner)
	{
		if(triggered)
		{
			remaining[current_wave]--;
		}
	}
}







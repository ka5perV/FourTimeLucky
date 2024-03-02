//Enemy with weapon
if (hasweapon)
{
	mygun = instance_create_layer(x,y,"Gun",oBgun)
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;


countdownrate = 40;
countdown = countdownrate;
alarm[0] = 300
with (other)
{
	hp --;
	flash = 3;
	hitfrom = other.direction;
	frozen = true;
	oEnemy.alarm[0] = 60;
}
instance_destroy();








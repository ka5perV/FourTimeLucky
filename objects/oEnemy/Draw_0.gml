 draw_self();

if (flash >0)
{
	flash--;
	sprite_index = sFrozenEnemy;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}










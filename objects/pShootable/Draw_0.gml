//Inherit elements for oEnemy and oCrate

draw_self();

if (flash >0)
{
	flash--;
	shader_set(shWhite);
	draw_self();
	shader_reset();
}









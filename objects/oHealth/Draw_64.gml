/// @description Inserte aquí la descripción
// Puede escribir su código en este editor




showHP = global.HP;

draw_set_font(fnt_smaller);
draw_set_color(c_black);
//draw_text(x, y,"HP: " + string (showHP));




var _xoffset= 0;

repeat (global.HP) 
{
    draw_sprite(sCarrotHealthBar, 15, 65 + _xoffset, 35);
	_xoffset += 18 
	
             }              
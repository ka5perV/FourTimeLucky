 /// @description Insert description here
// You can write your code in this editor

showHP = global.HP;

draw_set_font(fnt_smaller);
draw_set_color(c_black);
draw_text(x, y,"HP: " + string (showHP));




var _xoffset= 0;

repeat (global.HP) 
{
    draw_sprite(sCarrotHealthBar, 15, 110 + _xoffset, 05);
	_xoffset += 18 
	
}              
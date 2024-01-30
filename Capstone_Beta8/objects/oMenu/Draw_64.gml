//Strings
draw_set_font(fMenu);
draw_set_color(c_gray);
draw_set_halign(fa_left);
draw_text_transformed(700, 50, controls1, .5, .5, 0)
draw_text_transformed(700, 70, controls2, .5, .5, 0)
draw_text_transformed(700, 90, controls3, .5, .5, 0)
draw_text_transformed(700, 110, controls4, .5, .5, 0)
draw_text_transformed(700, 130, controls5, .5, .5, 0)
draw_text_transformed(700, 150, controls6, .5, .5, 0)
draw_text_transformed(700, 170, controls7, .5, .5, 0)
draw_text_transformed(700, 190, controls8, .5, .5, 0)


//Draw Menu

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++)
{
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor ==i)
	{
		txt = string_insert(">", txt, 0);
		var col = c_white;
	}
	else
	{
		var col = c_gray;
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(c_black);
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}
//When game is in fullscreen rest of the space will be captured as well
draw_set_color(c_black);
draw_rectangle(gui_width,gui_height-200,gui_width+900,gui_height,false);








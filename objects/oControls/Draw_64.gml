//Strings
draw_set_font(fMenu);
draw_set_color(c_gray);
draw_set_halign(fa_left);
draw_text_transformed(300, 310, controls1, .5, .5, 0)
draw_text_transformed(300, 330, controls2, .5, .5, 0)
draw_text_transformed(300, 350, controls3, .5, .5, 0)
draw_text_transformed(300, 370, controls4, .5, .5, 0)
draw_text_transformed(300, 390, controls5, .5, .5, 0)
draw_text_transformed(300, 410, controls6, .5, .5, 0)
draw_text_transformed(300, 430, controls7, .5, .5, 0)
draw_text_transformed(300, 450, controls8, .5, .5, 0)
draw_text_transformed(300, 470, controls9, .5, .5, 0)
draw_text_transformed(300, 490, controls10, .5, .5, 0)



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

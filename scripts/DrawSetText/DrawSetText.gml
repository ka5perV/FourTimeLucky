//DrawSetText (colour,font,halign,valign);
//colour
//font
//halign
//valign
//hello!
//Allows one line setup of major text drawing vars.
//requiring all four prevents silly coders from forgetting one
//And therefore creating a dumb dependency on other event calls.
//(Then wondering why their text changes later in development.)

/*
draw_set_colour(argument0);
draw_set_font(argument1);
draw_set_halign(argument2);
draw_set_valign(argument3);
*/

function DrawSetText(argument0, argument1, argument2, argument3) {
		draw_set_colour(argument0);
		draw_set_font(argument1);
		draw_set_halign(argument2);
		draw_set_valign(argument3);
	};
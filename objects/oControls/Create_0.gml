//Draw Text
// control instructions Menu

controls1 = "A Key = Move to the left"
controls2 = "D Key = Move to the right"
controls3 = "W = Jump"
controls4 = "ctrl a+ f = Full Screen"
controls5 = "R Key = Restart the game"
controls6 = "Enter = Select"
controls7 = "Double A = Dash to the left"
controls8 = "Double D = Dash to the right"

//GUI Bars Menu Setup

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width + 200;
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fMenu;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;


//Array for Menu Options
//menu[2] = "Play";
menu[1] = "Menu";
menu[0] = "Quit";

menu_items = array_length_1d(menu);
menu_cursor = 1;
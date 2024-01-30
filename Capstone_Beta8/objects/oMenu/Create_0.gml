//Draw Text
// control instructions Menu

controls1 = "A Key = Move to the left"
controls2 = "D Key = Move to the right"
controls3 = "Up Key = Move upward"
controls4 = "Down Key = Move downward"
controls5 = "R Key = Restart the game"
controls6 = "Enter = Select"
controls7 = "Left Click = Shoot"
controls8 = "Right Click = Check Post"

//GUI/Vars/Savefile/Menu Setup

#macro SAVEFILE "Save.sav"


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
menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_items = array_length(menu);

//Mouse Menu
menu_top = menu_y - ((menu_itemheight * 1.5) * menu_items);
menu_cursor = 3;





///scr_clue_menu();
//Disc - This script overlays the game screen when the clue button is clicked.
//Notes
//1 - Make sure the script blocks the player from clicking outside
//2 - Objects are in UI - Clue_Menu

//If menu is open, close it:
if (menu_open == true) {
if (instance_exists(obj_clue_menu_bg)){
with (obj_clue_menu_bg) instance_destroy();
}
menu_open = false;
} else {
menu_open = true;
instance_create(room_width/2, room_height/2, obj_clue_menu_bg);
}

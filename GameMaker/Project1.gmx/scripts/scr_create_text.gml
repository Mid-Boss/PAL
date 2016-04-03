///scr_create_text(text, x, y, spr_wid)
// Create Text

var c_padd = 5;

var spr_wid = argument3;


instance_create(argument1+spr_wid+c_padd*2, argument2+c_padd, obj_display_text);
obj_display_text.text = argument0;

// Create Rectangle Background
instance_create(argument1+spr_wid+c_padd, argument2, obj_display_text_box);


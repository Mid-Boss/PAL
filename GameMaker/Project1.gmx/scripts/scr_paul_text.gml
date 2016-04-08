/// scr_paul_text(text, [color, font])

if (argument_count > 1) { draw_set_colour(argument[1]); } else { draw_set_colour(c_white); }

if (argument_count > 1) { draw_set_font(argument[2]); } else { draw_set_font(font1); }


var c_padd = 5;
var text = argument[0];
var length = string_length(text);
var dialog_wid = 400;

draw_set_alpha(1);
draw_text_ext(x, y, text, font_get_size(font1)*1.55, dialog_wid-c_padd*2);








//draw_setup(c_white, font1, fa_left, fa_top, self);
//draw_text(1000,500, "We did it Boiz");


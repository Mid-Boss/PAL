/// scr_paul_text(text)

//draw_set_alpha(0.5);
draw_set_font(font1);
//draw_set_colour(c_black);
//draw_text(x+50, y+50, argument0);

var c_padd = 5;
var text = argument0;
var length = string_length(text);
var dialog_wid = 400;

draw_set_alpha(1);
draw_set_colour(c_white);
draw_text_ext(x, y, text, font_get_size(font1)*1.55, dialog_wid-c_padd*2);








//draw_setup(c_white, font1, fa_left, fa_top, self);
//draw_text(1000,500, "We did it Boiz");


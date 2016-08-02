///scr_run_dialogue(text, font, location(left or right))
text = argument0;
font = argument1;
location = argument2;
//x_padding = 10;
//y_padding = 5;
y_spot = 350;
maxwidth = 200;

draw_set_font(argument1);
size = font_get_size(font);
sep = size;
x_padding = size;
y_padding = size/2;
lines = ceil(string_width(text)/maxwidth);
box_height = (lines*size)+((lines-1)*sep)+2*y_padding; 
box_width = (maxwidth+(2*x_padding));

if location == 'right'
    x_spot = 500;
else if location == 'left'
    x_spot = 300;

dia_box = instance_create(x_spot,y_spot,obj_dialogue_box);
dia_box.image_yscale = box_height/sprite_get_height(spr_dia_bubble);
dia_box.image_xscale = box_width/sprite_get_width(spr_dia_bubble);
dia_box.x_padding = x_padding;
dia_box.y_padding = y_padding;
dia_box.text = text;
dia_box.sep = sep;
dia_box.maxwidth = maxwidth;

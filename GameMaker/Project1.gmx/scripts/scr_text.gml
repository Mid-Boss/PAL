//scr_text("Test",speed,x,y,x2,y2);
txt = instance_create(argument2,argument3,Dialog_Box_Object);

with (txt)
{
    font = font1;
    font_size = font_get_size(font);
    if (argument4 < 1.0)
        padding = font_size * argument4;
    else
        padding = font_size;
    
    maxlength = (Dialog_Box_Object.sprite_width * argument4)-padding;
    text = argument0;
    spd = argument1;
    
    text_length = string_length(text);
    
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2),maxlength);
    text_height = string_height_ext(text,font_size+(font_size/2),maxlength);
    
    boxwidth_ratio = argument4;
    boxheight_ratio = argument5;
    
}


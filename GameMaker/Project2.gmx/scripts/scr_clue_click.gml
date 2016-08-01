///scr_clue_click();

if (global.clue_box == false && click_stall == false)
{
    if (x+id.sprite_width+boxwidth > room_width)
        the_object = instance_create(x-boxwidth,y,obj_display_text_box);
    else
        the_object = instance_create(x+id.sprite_width,y,obj_display_text_box);
    
    the_object.text = id.text;
    the_object.color = id.color;

    click_stall = true;
    global.clue_box = true;
} else if (global.clue_box == true && click_stall == false) {
    if instance_exists(obj_display_text_box){
        global.clue_box = false;
            with (obj_display_text_box){
            instance_destroy();
        }
    }
}
alarm[8] = room_speed/4;


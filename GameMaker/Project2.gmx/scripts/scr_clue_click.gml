///scr_clue_click();
//Simple click stall check at the beginning
if (click_stall == true) exit;

//No dialog box open:
if (global.clue_box == false)
{
    //Check to see if the text would go off screen to the right then:
    //Left
    if (x+id.sprite_width+boxwidth > room_width)
        the_object = instance_create(x-boxwidth,y,obj_display_text_box);
    //Right
    else
        the_object = instance_create(x+id.sprite_width,y,obj_display_text_box);
    
    the_object.text = id.text;
    the_object.color = id.color;
    //Dialogue box is up
    global.clue_box = true;
//Dialog box is open
} else if (global.clue_box == true) {
scr_close_all_dialog();
}
scr_click_stall();

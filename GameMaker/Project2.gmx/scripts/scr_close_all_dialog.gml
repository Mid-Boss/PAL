///scr_close_all_dialog();

while instance_exists(obj_display_text_box){
    with (obj_display_text_box) {
    instance_destroy();
    }
}
global.clue_box = false;

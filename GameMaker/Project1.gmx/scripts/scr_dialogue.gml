///scr_dialogue([id, location, actor, sound, text, [alterations])])

//Creates a dialogue object and stores it within the current branch on tree.
//Requires that the branch have been created/found using scr_set_branch.

//  id                 = Unique value returned to controller when dialogue is played.
//  location           = Where to display actor on screen. Using MACROS "LEFT" or "RIGHT".
//  actor              = Actor object name who are speaking the dialogue.
//  sound              = Soundfile to be played during dialogue.
//  text               = Dialogue text to be displayed on screen.

//Converts arguments to locals.
var d_id = argument[0];
var location = argument[1];
var actor = argument[2];
var sound = argument[3];
var text = argument[4];
var alteration_string = "";
//var new_spd = 0;
//var new_font_size = 0;
//var color_choice = 0;
/*for (var n=0; n < argument_count; n+=1)
{
    if n == 0
        d_id = argument[0];
    else if n == 1
        location = argument[1];
    else if n == 2
        actor = argument[2];
    else if n == 3
        sound = argument[3];
    else if n == 4
        text = argument[4];
    else if n == 5
        newspd = argument[5];
}*/
if (argument_count >= 6) { alteration_string = argument[5]; }
//if (argument_count >= 6) { new_spd = argument[5]; }
//if (argument_count >= 7) { new_font_size = argument[6]; }
//if (argument_count >= 8) { color_choice = argument[7]; }

//Calls script to create dialogue.
scr_dialogue_create(branch, d_id, location, actor, sound, text, alteration_string);//, new_spd, new_font_size, color_choice);

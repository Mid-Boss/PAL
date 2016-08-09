///scr_clue_text(Case# (int),"Room" (string),Instance# (int), Clue (string))
///Outputs string to populate text for clue box

the_case = "case_" + string(argument0);
the_room = argument1;
room_part = "instance_" + string(argument2);
clue = argument3;

filename = "text_tree\" + the_case + "\" + the_room + "\" + room_part + "\clues" + "\Clues.txt";

fid = file_text_open_read(filename);

while (!file_text_eof(fid))
{
    the_header = file_text_read_string(fid);
    file_text_readln(fid);
    if the_header == clue
    {
        the_string = file_text_read_string(fid);
        return the_string;
    }
    file_text_readln(fid);
}

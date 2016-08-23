///scr_dialogue_reader(array of strings, count(Optional))

master_array = argument[0];
if argument_count > 1
    array_count = argument[1];
else
    array_count = 0;

current_line = master_array[array_count];
var header_array = "";
    
header_start = string_pos("[",current_line);
header_end = string_pos("]",current_line);

for (var k = header_start; k < header_end; k+=1)
{
    header += string_char_at(current_line,k);
}
    
alarm[0] = 1;

///scr_dialogue()

var master_array;
count = 0;

filename = "text_tree\case_1\sidharth_office\instance_1\dialogue\Dialogue.txt";

fid = file_text_open_read(filename);

while (!file_text_eof(fid))
{
    master_array[count] = file_text_read_string(fid);
    count++;
}

scr_dialogue_reader(master_array);

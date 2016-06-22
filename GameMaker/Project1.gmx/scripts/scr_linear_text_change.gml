/// scr_linear_text_change(text, startX, startY, xRate, yRate, xSpace)
// positive rates increase the size
// negative rates decrease the size
// xSpace = length in pixels where the text can be put

// TODO: spacing between text vertical and horizontal is fixed
// TODO: angle of rotation is always 0

yscale = 1;
xscale = 1;
text = argument[0];
text_x = argument[1];
text_y = argument[2];
xRate = argument[3];
yRate = argument[4];
xSpace = argument[5];

// fonts look blurry when scaled, should make max size then always scale them smaller
for (var i = 0; i <= string_length(text); i++) {
    if (text_x-argument[1] >= (xSpace - string_width(string_char_at(text,i))*xscale)) {
        text_x = argument[1];
        text_y = text_y + 45; // TODO: it shouldn't be constant   
    }
    draw_text_ext_transformed(text_x, text_y, string_char_at(text,i), 45, 350, xscale, yscale, 0);
    text_x += string_width(string_char_at(text,i))*xscale;
    xscale += xRate;
    yscale += yRate;
}

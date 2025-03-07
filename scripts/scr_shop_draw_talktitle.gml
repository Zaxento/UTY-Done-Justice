var line, highlight, text, menu_x, text_x, text_space, scale, text_width;

line = argument0;
highlight = argument1;
text = argument2;
menu_x = 15;
text_x = menu_x + 15;
text_space = scr_shop_divider_pos() - 10 - text_x;

if (highlight)
    draw_set_colour(c_yellow);
else
    draw_set_colour(c_white);

scale = 1;
text_width = string_width(text);

if (text_width > text_space)
    scale = text_space / text_width;

draw_text_transformed(text_x, 130 + (20 * line), text, scale, 1, 0);

if (highlight)
    draw_set_color(c_white);


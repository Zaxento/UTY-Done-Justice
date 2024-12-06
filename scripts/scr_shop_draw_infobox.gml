var y_top, text, divider_x, text_x, text_y;
y_top = argument0
text = argument1
divider_x = scr_shop_divider_pos()
draw_set_color(c_white)
ossafe_fill_rectangle(divider_x, 120, 320, y_top)
if (y_top < 116)
{
    draw_set_color(c_black)
    ossafe_fill_rectangle((divider_x + 4), 120, 316, (y_top + 4))
    draw_set_color(c_white)
}
text_x = (divider_x + 14)
text_y = (y_top + 14)
if (global.language == "ja")
    text_y -= 4
draw_text(text_x, text_y, text)

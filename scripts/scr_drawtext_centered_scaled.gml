var xx, yy, text, xscale, yscale, display_scale, lineheight, eol, line, width, line_x;
xx = argument0
yy = argument1
text = argument2
xscale = argument3
yscale = argument4
display_scale = (surface_get_width(application_surface) / view_wview[view_current])
lineheight = round((string_height(" ") * yscale))
eol = string_pos("#", text)
yy = (round((yy * display_scale)) / display_scale)
while (eol != 0)
{
    line = substr(text, 1, eol)
    text = substr(text, (eol + 1))
    width = (string_width(line) * xscale)
    line_x = (round(((xx - (width / 2)) * display_scale)) / display_scale)
    draw_text_transformed(line_x, yy, line, xscale, yscale, 0)
    yy += lineheight
    eol = string_pos("#", text)
}
width = (string_width(text) * xscale)
draw_text_transformed(round((xx - (width / 2))), yy, text, xscale, yscale, 0)

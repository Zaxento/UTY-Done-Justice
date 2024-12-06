var font, color, colorx, fontx, xscale, yscale, angle;
var outline = false;
var outlinecolor = c_black;
color = draw_get_color();
font = fnt_maintext;
colorx = color;
fontx = font;
xscale = 1;
yscale = 1;
angle = 0;
if (argument3 != false)
    colorx = argument3;
if (argument4 != false)
    fontx = argument4;
if (argument5 != false)
    xscale = argument5;
if (argument6 != false)
    yscale = argument6;
if (argument7 != false)
    angle = argument7;
if (argument8 != false)
    outline = argument8;
if (argument9 != false)
    outlinecolor = argument9;
draw_set_font(fontx);
if (outline == true)
{
    draw_set_color(outlinecolor);
    draw_text_transformed(argument0 - xscale, argument1, argument2, xscale, yscale, angle);
    draw_text_transformed(argument0 - xscale, argument1 - yscale, argument2, xscale, yscale, angle);
    draw_text_transformed(argument0 - xscale, argument1 + yscale, argument2, xscale, yscale, angle);
    draw_text_transformed(argument0 + xscale, argument1, argument2, xscale, yscale, angle);
    draw_text_transformed(argument0 + xscale, argument1 + yscale, argument2, xscale, yscale, angle);
    draw_text_transformed(argument0 + xscale, argument1 - yscale, argument2, xscale, yscale, angle);
    draw_text_transformed(argument0, argument1 + yscale, argument2, xscale, yscale, angle);
    draw_text_transformed(argument0, argument1 - yscale, argument2, xscale, yscale, angle);
}
draw_set_color(colorx);
draw_text_transformed(argument0, argument1, argument2, xscale, yscale, angle);
draw_set_color(color);
draw_set_font(font);

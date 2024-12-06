var bg, xx, yy, scale;
bg = argument0
xx = argument1
yy = argument2
if (os_type == os_ps4)
{
    scale = (window_get_width() / 1920)
    draw_background_stretched(bg, (xx * scale), (yy * scale), (background_get_width(bg) * scale), (background_get_height(bg) * scale))
}
else
    draw_background(bg, xx, yy)

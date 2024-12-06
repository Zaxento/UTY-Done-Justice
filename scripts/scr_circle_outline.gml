    pos_x = argument0
    pos_y = argument1
    min_rad = argument2
    max_thickness = argument3
    circ_color = argument4
    draw_set_colour(circ_color)
    for (var i = 0; i <= max_thickness; i++)
        draw_circle(pos_x, pos_y, (min_rad + (i * 0.25)), 1)

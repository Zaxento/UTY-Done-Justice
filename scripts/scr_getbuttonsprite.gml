var control, type, button;
control = argument0
type = argument1
if (control == "A")
{
    if (os_type == os_ps4)
        return button_ps4_dpad_l;
    if (os_type == os_psvita)
        return button_vita_dpad_l;
    return -4;
}
if (control == "D")
{
    if (os_type == os_ps4)
        return button_ps4_dpad_r;
    if (os_type == os_psvita)
        return button_vita_dpad_r;
    return -4;
}
button = -4
if (control == "Z")
    button = global.button0
if (control == "X")
    button = global.button1
if (control == "C")
    button = global.button2
if (button == gp_face1)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_cross;
        return button_ps4_cross;
    }
    if (os_type == os_psvita)
    {
        if (type == 1)
            return buttonL_vita_cross;
        return button_vita_cross;
    }
}
if (button == gp_face2)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_circle;
        return button_ps4_circle;
    }
    if (os_type == os_psvita)
    {
        if (type == 1)
            return buttonL_vita_circle;
        return button_vita_circle;
    }
}
if (button == gp_face3)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_square;
        return button_ps4_square;
    }
    if (os_type == os_psvita)
    {
        if (type == 1)
            return buttonL_vita_square;
        return button_vita_square;
    }
}
if (button == gp_face4)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_triangle;
        return button_ps4_triangle;
    }
    if (os_type == os_psvita)
    {
        if (type == 1)
            return buttonL_vita_triangle;
        return button_vita_triangle;
    }
}
if (button == gp_shoulderl)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_l1;
        return button_ps4_l1;
    }
    if (os_type == os_psvita)
    {
        if (type == 1)
            return buttonL_vita_l;
        return button_vita_l;
    }
}
if (button == gp_shoulderlb)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_l2;
        return button_ps4_l2;
    }
}
if (button == gp_shoulderr)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_r1;
        return button_ps4_r1;
    }
    if (os_type == os_psvita)
    {
        if (type == 1)
            return buttonL_vita_r;
        return button_vita_r;
    }
}
if (button == gp_shoulderrb)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_r2;
        return button_ps4_r2;
    }
}
if (button == gp_stickl)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_l3;
        return button_ps4_l3;
    }
}
if (button == gp_stickr)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_r3;
        return button_ps4_r3;
    }
}
if (button == gp_select)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_touchpad;
        return button_ps4_touchpad;
    }
    if (os_type == os_psvita)
    {
        if (type == 1)
            return buttonL_vita_select;
        return button_vita_select;
    }
}
if (button == gp_start)
{
    if (os_type == os_ps4)
    {
        if (type == 1)
            return buttonL_ps4_options;
        return button_ps4_options;
    }
    if (os_type == os_psvita)
    {
        if (type == 1)
            return buttonL_vita_start;
        return button_vita_start;
    }
}
return -4;

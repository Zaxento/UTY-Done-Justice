var radio, hovering, mousex, mousey;

xx = argument0;
yy = argument1;
radio = 0;
if (argument_count > 2)
    radio = argument2;
mousex = mouse_x;
mousey = mouse_y;
if !window_get_fullscreen() // cuz gamemaker is dumb, when you hover the mouse out the window it will stay on its last position.
{
    if (mousex <= 0)
        mousex = 666 * radio+1;
    if (mousey <= 0)
        mousey = 666 * radio+1;
}
// nvm the above, i got a better solution.
if !window_has_focus() // this did not work fuckkkk
{
    mousex = 666 * radio+1;
    mousey = 666 * radio+1;
}
// i know why this all above isn't working: game runs at 30 fps. fuck you.
// !-------------reminder to NOT use "0" as the desired X or Y position. most likely.--------------!
hovering = false;
if abs(point_distance(mousex, mousey, xx, yy)) <= radio
    hovering = true;

return hovering;

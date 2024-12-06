var message, setfullscreen;
// this is for handling show_message, get_string and show_question, because gamemaker is so fucking awesome that it crashes when using them fullscreen.
message = -1;
setfullscreen = false;
if window_get_fullscreen()
{
    window_set_fullscreen(window_get_fullscreen() == false);
    setfullscreen = true;
}
if (argument0 == 0)
    message = show_message(argument1);
if (argument0 == 1)
    message = get_string(argument1, argument2);
if (argument0 == 2)
    message = show_question(argument1);
if (setfullscreen == true)
{
    window_set_fullscreen(window_get_fullscreen() == false);
}

return message;

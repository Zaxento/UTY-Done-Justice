var flag;
flag = argument0
flag = flag != false
if (flag != global.screen_border_active)
{
    global.screen_border_active = flag != false
    global.screen_border_state = 0
    global.screen_border_dynamic_fade_id = 0
    global.screen_border_dynamic_fade_level = 0
}

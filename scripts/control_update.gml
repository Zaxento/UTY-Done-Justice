var new_state, i;
new_state = (keyboard_check(ord("Z")) || keyboard_check(vk_return))
if (global.osflavor >= 4)
    new_state = (new_state || gamepad_button_check(0, global.button0))
else if (obj_time.j_ch > 0)
    new_state = (new_state || joystick_check_button(obj_time.j_ch, global.button0))
global.control_new_state[0] = new_state
new_state = (keyboard_check(ord("X")) || keyboard_check(vk_shift))
if (global.osflavor >= 4)
    new_state = (new_state || gamepad_button_check(0, global.button1))
else if (obj_time.j_ch > 0)
    new_state = (new_state || joystick_check_button(obj_time.j_ch, global.button1))
global.control_new_state[1] = new_state
new_state = (keyboard_check(ord("C")) || keyboard_check(vk_control))
if (global.osflavor >= 4)
    new_state = (new_state || gamepad_button_check(0, global.button2))
else if (obj_time.j_ch > 0)
    new_state = (new_state || joystick_check_button(obj_time.j_ch, global.button2))
global.control_new_state[2] = new_state
for (i = 0; i <= 2; i++)
{
    global.control_pressed[i] = ((!global.control_state[i]) && global.control_new_state[i])
    global.control_state[i] = global.control_new_state[i]
}

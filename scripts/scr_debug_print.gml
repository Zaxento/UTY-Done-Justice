if !debug_mode
    exit;
if (!instance_exists(obj_debug_gui))
{
    instance_create((view_xview + 10), (view_yview + 10), obj_debug_gui)
    obj_debug_gui.depth = -9999
}
obj_debug_gui.newtext = text
with (obj_debug_gui)
{
if !variable_instance_exists(id, "messagecount")
messagecount = 0;
if !variable_instance_exists(id, "totaltimer")
totaltimer = 0;
    _message[messagecount] = text
    newtext = ""
    timer[messagecount] = (90 - totaltimer)
    totaltimer += timer[messagecount]
    messagecount++
    debugmessage = _message[0]
    for (i = 1; i < messagecount; i++)
        debugmessage += ("#" + _message[i])
}

//This will be used a lot, so it will be handy to just have one script do this in case any reload changes are made, and to slightly reduce code lines in each object.
global.msc = 0
global.msg[0] = scr_gettext("scr_battlereload_1") // * You recover your expended ammo and put it back into your gun./^
if global.bp = global.maxbp
{
    global.msg[0] = scr_gettext("scr_battlereload_2") // * You spill out the ammo in your gun and put them back into your gun./^
}
global.bp = global.maxbp
if instance_exists(OBJ_WRITER)
{
    OBJ_WRITER.halt = 3
}
iii = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
with (iii)
    halt = false

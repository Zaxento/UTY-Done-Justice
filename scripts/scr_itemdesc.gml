var i, desc;
global.msg[0] = scr_gettext("scr_itemdesc_2") // * If you are reading this,&  I messed up somehow./%
i = 0
while 1
{
    desc = scr_gettext(((("item_desc_" + string(argument0)) + "_") + string(i)))
    if (string_length(desc) == 0)
        break
    else
    {
        global.msg[i] = desc
        i++
        continue
    }
}
global.item[8] = argument1
for (i = argument0; i < 8; i += 1)
    global.item[i] = global.item[(i + 1)]
script_execute(scr_itemnameb)
script_execute(scr_itemname)

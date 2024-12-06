if (global.armor == 88) //Steel Buckle
    global.w2strength -= 5
if (argument0 >= 0)
    global.item[argument0] = global.armor2
global.armor2 = argument1
if (global.armor2 == 65) //Patch
    global.a2def = 0
if (global.armor2 == 67) //Feather
    global.a2def = 3
if (global.armor2 == 85) //Honeydew Pin
    global.a2def = 6
if (global.armor2 == 86) //Band Merch Pin
    global.a2def = 8
if (global.armor2 == 87) //Silver Scarf
    global.a2def = 9
if (global.armor2 == 88) //Steel Buckle
{
    global.a2def = 7
    global.w2strength += 5
}
if (global.armor2 == 89) //Safety Jacket
    global.a2def = 12
if (global.armor2 == 90) //Fancy Holster
    global.a2def = 10
if (global.armor2 == 91) //Safety Goggles
    global.a2def = 9
if (global.armor2 == 92) //Golden Bandana
    global.a2def = 18
if (global.armor2 == 93) //Delta Rune Patch
    global.a2def = 15
script_execute(scr_itemnameb)
script_execute(scr_itemname)

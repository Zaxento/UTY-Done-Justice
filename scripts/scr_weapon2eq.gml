if (argument0 >= 0)
    global.item[argument0] = global.weapon2
global.weapon2 = argument1
if (global.weapon2 == 66) //Rubber Ammo
    global.w2strength = 1
if (global.weapon2 == 68) //Pebbles
    global.w2strength = 3
if (global.weapon2 == 78) //Ice Pellets
    global.w2strength = 6
if (global.weapon2 == 79) //Coffee Beans
    global.w2strength = 4
if (global.weapon2 == 80) //Flint
    global.w2strength = 10
if (global.weapon2 == 81) //Glass Ammo
    global.w2strength = 7
if (global.weapon2 == 82) //Silver Ammo
    global.w2strength = 8
if (global.weapon2 == 83) //Nails
    global.w2strength = 12
if (global.weapon2 == 84) //Friendliness Pellets
    global.w2strength = 15
if (global.weapon2 != 0 && global.armor2 = 88) //Steel Buckle ATK Bonus
    global.w2strength += 5
script_execute(scr_itemnameb)
script_execute(scr_itemname)

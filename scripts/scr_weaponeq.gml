if (global.weapon == 14 && global.inbattle == 1 && global.flag[78] == 1)
    global.at = (8 + (global.lv * 2))
if (argument0 >= 0)
    global.item[argument0] = global.weapon
global.weapon = argument1
if (global.weapon == 3) //Stick
    global.wstrength = 0
if (global.weapon == 13) //Toy Knife
    global.wstrength = 3
if (global.weapon == 14) //Tough Glove
    global.wstrength = 5
if (global.weapon == 25) //Ballet Shoes
    global.wstrength = 7
if (global.weapon == 45) //Torn Notebook
    global.wstrength = 2
if (global.weapon == 47) //Burnt Pan
    global.wstrength = 10
if (global.weapon == 49) //Empty Gun
    global.wstrength = 12
if (global.weapon == 51) //Worn Dagger
    global.wstrength = 15
if (global.weapon == 52) //Real Knife
    global.wstrength = 99
if global.weapon = 74 //Toy Gun
    global.wstrength = 5
if (global.armor == 48) //Cowboy Hat ATK Bonus
    global.wstrength += 5
if (global.armor == 64) //Temmie Armor ATK Bonus
    global.wstrength += 10
if (global.armor == 76) //Worn Hat ATK Bonus
    global.wstrength += 3
script_execute(scr_itemnameb)
script_execute(scr_itemname)

global.door_warp = 0 //This tells the door object where to take you. Right now? Nowhere.
global.chemg_god_mode = false //I think this like, determines if you are immortal or something. Lolchick Debugger thing.
global.weapon2 = 66 //Secondary Weapon, for in case you decide to have one for whatever reason.
global.w2strength = 0 //Strength value of the Secondary Weapon.
global.armor2 = 65 //Like Weapon2, but for armors.
global.a2def = 0 //Armor value of the Secondary Armor.
global.damagebonus_effect = 0 //A Bonus Effect that appears on hit. Exists solely because of UTY Ammos

//Bullet Points UTY Reloaded
global.bp = 6
global.maxbp = 6

//SETTINGS PROTOTYPE! May be relocated.
global.artstyle_yellow = "Yellow"

global.flag[28] = 0 //Allows you to skip text with C
//global.flag_yellow exists just in case UT's global.flag contents are used. UTY is really adjacent to Undertale so much of the same events can occur.
for (i = 0; i < 20; i += 1)
{
    global.flag_yellow[i] = 0
    global.flowey_flag[i] = 0 //Made a dedicated variable for this like UTY did, since it's likely I will need to have this on hand for a lot of Flowey Save Dialogue.
}

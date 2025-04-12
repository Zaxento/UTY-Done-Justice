if (global.weapon == 3 || global.weapon == 13 || global.weapon == 14 || global.weapon == 51 || global.weapon == 52)
    instance_create((global.idealborder[0] + 6), (global.idealborder[2] + 6), obj_target)
if (global.weapon == 25 || global.weapon == 49 || global.weapon == 47 || global.weapon == 45)
    instance_create((global.idealborder[0] + 6), (global.idealborder[2] + 6), obj_shoetargettest)

//UNDERTALE YELLOW WEAPONS
if (global.weapon == 74) && global.bp > 0 && global.fightmode = 1
    instance_create(320, 320, obj_toy_gun_battle_circle)
if (global.weapon == 75) && global.bp > 0 && global.fightmode = 1
{
    instance_create(320, 320, obj_wild_revolver_battle_outline)
}
if ((global.weapon == 74) || global.weapon == 75) && (global.bp < 1 || global.fightmode = 0)
{
    instance_create((global.idealborder[0] + 6), (global.idealborder[2] + 6), obj_target)
}

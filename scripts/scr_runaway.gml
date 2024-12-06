if (global.flag[6] == 0)
    runvalue = (random(100) + (10 * global.turn))
else
{
    if (global.turn == 0)
        runvalue = 0
    if (global.turn >= 1)
        runvalue = (random(100) + (10 * (global.turn - 1)))
}
if instance_exists(obj_undyneboss)
    runvalue = 100
if (global.flag[6] == 0)
{
    if (global.armor == 4) || (global.armor2 == 65)
        runvalue = 100
}
if (runvalue > 50)
{
    runaway = 1
    audio_play_sound(snd_escaped,80,false)
    obj_heart.hspeed = -3
    obj_heart.sprite_index = spr_heartgtfo_yellow
    obj_heart.image_speed = 0.5
    OBJ_WRITER.halt = 3
    global.xp += global.xpreward[3]
    global.gold += global.goldreward[3]
    tlvl = global.lv
    script_execute(scr_levelup)
    if (levelup == 1)
        audio_play_sound(snd_levelup,80,false)
    global.msc = 14
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER)
    global.flag[11] = 1
    global.flag[24] += 1
}

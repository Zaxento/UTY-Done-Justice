global.monster[0] = false
global.monster[1] = false
global.monster[2] = false
global.monster[3] = false
global.turn = 0
switch global.battlegroup
{
    case 1:
        global.monstertype[0] = 1
        global.monstertype[1] = 1
        global.monstertype[2] = 1
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 2
        global.battlelv = 1
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(216, 136, obj_testmonster)
        global.monsterinstance[1] = instance_create(418, 136, obj_testmonster)
        global.monsterinstance[2] = instance_create(14, 136, obj_testmonster)
        break
    case 2:
        global.monstertype[0] = 2
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(216, 136, obj_dummymonster)
        break
    case 3:
        global.monstertype[0] = 3
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(216, 136, obj_fakefroggit)
        break
    case 4:
        global.monstertype[0] = 4
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(216, 136, obj_froggit)
        break
    case 5:
        global.monstertype[0] = 5
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(214, 16, obj_whimsun)
        break
    case 6:
        global.monstertype[0] = 4
        global.monstertype[1] = 5
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(216, 136, obj_froggit)
        global.monsterinstance[1] = instance_create(317, 16, obj_whimsun)
        break
    case 7:
        global.monstertype[0] = 6
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(216, 156, obj_moldsmal)
        break
    case 8:
        global.monstertype[0] = 6
        global.monstertype[1] = 6
        global.monstertype[2] = 6
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = (global.battlegroup + 3000)
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msc = 0
        global.msg[0] = scr_gettext("scr_battlegroup_116") // * You tripped into a&  line of Moldsmals.
        global.monsterinstance[0] = instance_create(15, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(217, 156, obj_moldsmal)
        global.monsterinstance[2] = instance_create(421, 156, obj_moldsmal)
        break
    case 9:
        global.monstertype[0] = 4
        global.monstertype[1] = 4
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_133") // * A pair of Froggits hop&  towards you.
        global.monsterinstance[0] = instance_create(116, 136, obj_froggit)
        global.monsterinstance[1] = instance_create(320, 136, obj_froggit)
        break
    case 10:
        global.monstertype[0] = 6
        global.monstertype[1] = 6
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_148") // * Moldsmal and Moldsmal&  block the way.
        global.monsterinstance[0] = instance_create(116, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(320, 156, obj_moldsmal)
        break
    case 11:
        global.monstertype[0] = 6
        global.monstertype[1] = 7
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_163") // * Migosp crawled up close!
        global.monsterinstance[0] = instance_create(116, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(320, 136, obj_migosp)
        break
    case 12:
        global.monstertype[0] = 7
        global.monstertype[1] = 8
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_178") // * Vegetoid came out of the earth!
        global.monsterinstance[0] = instance_create(116, 136, obj_migosp)
        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
        break
    case 13:
        global.monstertype[0] = 9
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_193") // * Loox drew near!
        global.monsterinstance[0] = instance_create(218, 124, obj_loox)
        break
    case 14:
        global.monstertype[0] = 9
        global.monstertype[1] = 8
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_207") // * Vegetoid and Loox attacked!
        global.monsterinstance[0] = instance_create(116, 124, obj_loox)
        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
        break
    case 15:
        global.monstertype[0] = 9
        global.monstertype[1] = 8
        global.monstertype[2] = 7
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_222") // * Loox and co. decided to&  pick on you!
        global.monsterinstance[0] = instance_create(14, 124, obj_loox)
        global.monsterinstance[1] = instance_create(218, 136, obj_vegetoid)
        global.monsterinstance[2] = instance_create(422, 136, obj_migosp)
        break
    case 16:
        global.monstertype[0] = 8
        global.monstertype[1] = 8
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_238") // * A pair of Vegetoids&  came out of the ground!
        global.monsterinstance[0] = instance_create(116, 136, obj_vegetoid)
        global.monsterinstance[1] = instance_create(320, 136, obj_vegetoid)
        break
    case 17:
        global.monstertype[0] = 9
        global.monstertype[1] = 9
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_253") // * A pair of Loox&  decided to pick on you!
        global.monsterinstance[0] = instance_create(116, 124, obj_loox)
        global.monsterinstance[1] = instance_create(320, 124, obj_loox)
        break
    case 18:
        global.monstertype[0] = 8
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_268") // * Vegetoid came out of the earth!
        global.monsterinstance[0] = instance_create(218, 136, obj_vegetoid)
        break
    case 19:
        global.monstertype[0] = 0
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.3, 0.5)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 2
        global.msg[2] = scr_gettext("scr_battlegroup_282") // * But nobody came./%
        break
    case 20:
        global.monstertype[0] = 11
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_ghostbattle
        caster_loop(global.batmusic, 1, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_297") // * Here comes Napstablook.
        if (global.flag[6] == 1)
            global.msg[0] = scr_gettext("scr_battlegroup_299") // * Here comes Napstablook^1.&* Same as usual.
        global.monsterinstance[0] = instance_create(266, 106, obj_napstablook)
        break
    case 21:
        global.monstertype[0] = 9
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_193") // * Loox drew near!
        global.monsterinstance[0] = instance_create(218, 124, obj_loox)
        break
    case 22:
        global.monstertype[0] = 10
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_boss1
        caster_loop(global.batmusic, 1, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_327") // * Toriel blocks the way!
        global.monsterinstance[0] = instance_create(250, 42, obj_torielboss)
        break
    case 23:
        global.monstertype[0] = 13
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_342") // * Doggo blocks the way!
        global.monsterinstance[0] = instance_create(196, 28, obj_movedoge)
        break
    case 24:
        global.monstertype[0] = 14
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_357") // * Lesser Dog appears.
        global.monsterinstance[0] = instance_create(216, 38, obj_lesserdoge)
        break
    case 25:
        global.monstertype[0] = 15
        global.monstertype[1] = 16
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_371") // * Dogi assault you!
        global.monsterinstance[0] = instance_create(208, 38, obj_mandog)
        global.monsterinstance[1] = instance_create(208, 38, obj_womandog)
        break
    case 26:
        global.monstertype[0] = 17
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_dogsong
        caster_loop(global.batmusic, 0.7, 0.95)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_386") // * It's the Greater Dog.
        global.monsterinstance[0] = instance_create(208, 38, obj_greatdog)
        break
    case 27:
        global.monstertype[0] = 25
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        if (global.flag[67] < 0)
            global.batmusic = mus_papyrusboss
        else
            global.batmusic = mus_papyrus
        if (scr_murderlv() < 7)
        {
            if (global.flag[67] < 0)
                caster_loop(global.batmusic, 0.9, 1)
            else
                caster_loop(global.batmusic, 0.5, 1)
        }
        else
            caster_loop(global.batmusic, 0, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_411") // * Papyrus blocks the way!
        if (scr_murderlv() >= 7)
            global.msg[0] = scr_gettext("scr_battlegroup_413") // * Papyrus is sparing you.
        global.monsterinstance[0] = instance_create(250, 42, obj_papyrusboss)
        break
    case 28:
        global.monstertype[0] = 22
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_429") // * Gyftrot confronts you!
        global.monsterinstance[0] = instance_create(208, 38, obj_gyftrot)
        break
    case 30:
        global.monstertype[0] = 18
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        if (global.flag[57] == 2)
        {
            global.msg[0] = scr_gettext("scr_battlegroup_445") // * Chilldrake saunters up!
            global.monsterinstance[0] = instance_create(216, 38, obj_chilldrake)
        }
        else
        {
            global.msg[0] = scr_gettext("scr_battlegroup_450") // * Snowdrake flutters forth!
            global.monsterinstance[0] = instance_create(216, 38, obj_snowdrake)
        }
        break
    case 31:
        global.monstertype[0] = 18
        global.monstertype[1] = 18
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_465") // * Chilldrakes flutter forth!
        global.monsterinstance[0] = instance_create(114, 38, obj_chilldrake)
        global.monsterinstance[1] = instance_create(318, 38, obj_chilldrake)
        break
    case 32:
        global.monstertype[0] = 19
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_480") // * Icecap struts into view.
        global.monsterinstance[0] = instance_create(216, 38, obj_icecap)
        break
    case 33:
        global.monstertype[0] = 19
        global.monstertype[1] = 18
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        if (global.flag[57] == 2)
        {
            global.msg[0] = scr_gettext("scr_battlegroup_497") // * Icecap and Chilldrake&  pose like bad guys.
            global.monsterinstance[0] = instance_create(114, 38, obj_icecap)
            global.monsterinstance[1] = instance_create(318, 38, obj_chilldrake)
        }
        else
        {
            global.msg[0] = scr_gettext("scr_battlegroup_503") // * Icecap and Snowdrake&  pose like bad guys.
            global.monsterinstance[0] = instance_create(114, 38, obj_icecap)
            global.monsterinstance[1] = instance_create(318, 38, obj_snowdrake)
        }
        break
    case 34:
        global.monstertype[0] = 21
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_519") // * Jerry clings to you!
        global.monsterinstance[0] = instance_create(216, 127, obj_jerry)
        break
    case 35:
        global.monstertype[0] = 19
        global.monstertype[1] = 21
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_533") // * Icecap appears^1.&* Jerry came too.
        global.monsterinstance[0] = instance_create(15, 38, obj_icecap)
        global.monsterinstance[1] = instance_create(216, 127, obj_jerry)
        break
    case 36:
        global.monstertype[0] = 19
        global.monstertype[1] = 21
        global.monstertype[2] = 18
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        if (global.flag[57] == 2)
            global.msg[0] = scr_gettext("scr_battlegroup_549") // * Icecap and Chilldrake&  confront you^1, sighing.&* Jerry.
        else
            global.msg[0] = scr_gettext("scr_battlegroup_548") // * Icecap and Snowdrake&  confront you^1, sighing.&* Jerry.
        global.monsterinstance[0] = instance_create(15, 38, obj_icecap)
        global.monsterinstance[1] = instance_create(216, 127, obj_jerry)
        if (global.flag[57] == 2)
            global.monsterinstance[2] = instance_create(388, 38, obj_chilldrake)
        else
            global.monsterinstance[2] = instance_create(388, 38, obj_snowdrake)
        break
    case 40:
        global.monstertype[0] = 23
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_566") // * Aaron flexes in!
        global.monsterinstance[0] = instance_create(216, 38, obj_aaron)
        break
    case 41:
        global.monstertype[0] = 24
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_581") // * Special enemy Temmie appears&  here to defeat you!!
        global.monsterinstance[0] = instance_create(216, 38, obj_tembattle)
        break
    case 42:
        global.monstertype[0] = 12
        global.monstertype[1] = 26
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_596") // * You walk into Moldsmal.
        global.monsterinstance[0] = instance_create(114, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(316, 156, obj_moldsmalx)
        break
    case 43:
        global.monstertype[0] = 28
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_612") // * Woshua shuffles up.
        global.monsterinstance[0] = instance_create(114, 136, obj_woshua)
        break
    case 44:
        global.monstertype[0] = 29
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_626") // * Shyren hides in the corner&  but somehow encounters you&  anyway.
        global.monsterinstance[0] = instance_create(218, 36, obj_shyren)
        break
    case 45:
        global.monstertype[0] = 31
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_dummybattle
        caster_loop(global.batmusic, 0.9, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_640") // * Mad Dummy blocks the way!
        global.monsterinstance[0] = instance_create(270, 80, obj_maddummy)
        break
    case 46:
        global.monstertype[0] = 23
        global.monstertype[1] = 28
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_640") // * Mad Dummy blocks the way!
        global.monsterinstance[0] = instance_create(114, 38, obj_aaron)
        global.monsterinstance[1] = instance_create(318, 136, obj_woshua)
        obj_woshbody.con = 1
        obj_woshbody.alarm[4] = 80
        break
    case 47:
        global.monstertype[0] = 32
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_undyneboss
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = " %%"
        global.monsterinstance[0] = instance_create(210, 20, obj_undyneboss)
        break
    case 48:
        global.monstertype[0] = 33
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_mettatonbattle
        caster_loop(global.batmusic, 0.9, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_687") // * Mettaton attacks!
        global.monsterinstance[0] = instance_create(316, 190, obj_mettatonb_quiz)
        instance_create(412, 126, obj_questionasker)
        break
    case 49:
        global.monstertype[0] = 34
        global.monstertype[1] = 35
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_704") // * Royal Guard attacks!
        global.monsterinstance[0] = instance_create(18, 34, obj_bara01)
        global.monsterinstance[1] = instance_create(432, 34, obj_bara02)
        break
    case 50:
        global.monstertype[0] = 36
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_719") // * Tsunderplane gets in the way!&* Not on purpose or anything.
        global.monsterinstance[0] = instance_create(46, 36, obj_tsunderplane)
        break
    case 51:
        global.monstertype[0] = 37
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_733") // * Vulkin strolls in.
        global.monsterinstance[0] = instance_create(106, 125, obj_vulkin)
        break
    case 52:
        global.monstertype[0] = 38
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_747") // * Pyrope bounds towards you!
        global.monsterinstance[0] = instance_create(108, 7, obj_pyrope)
        break
    case 53:
        global.monstertype[0] = 12
        global.monstertype[1] = 12
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_596") // * You walk into Moldsmal.
        global.monsterinstance[0] = instance_create(214, 156, obj_moldsmal)
        global.monsterinstance[1] = instance_create(418, 156, obj_moldsmal)
        break
    case 54:
        global.monstertype[0] = 28
        global.monstertype[1] = 23
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_778") // * Woshua and Aaron appear.
        global.monsterinstance[0] = instance_create(116, 136, obj_woshua)
        global.monsterinstance[1] = instance_create(318, 38, obj_aaron)
        break
    case 55:
        global.monstertype[0] = 28
        global.monstertype[1] = 26
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_795") // * Moldbygg and Woshua appear.
        global.monsterinstance[0] = instance_create(116, 136, obj_woshua)
        global.monsterinstance[1] = instance_create(318, 156, obj_moldsmalx)
        with (obj_moldsmalx)
        {
            with (mypart1)
                instance_destroy()
            visible = false
            stage = 1
            global.monstername[myself] = scr_gettext("monstername_26b") // Moldbygg
            mypart1 = instance_create(x, y, part1)
            mypart1.stage = 1
            global.hurtanim[myself] = 0
            image_index = 0
            scalevalue = 0.01
        }
        break
    case 56:
        global.monstertype[0] = 39
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_spider
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_826") // * Muffet traps you!
        global.monsterinstance[0] = instance_create(214, 37, obj_spiderb)
        break
    case 57:
        global.monstertype[0] = 40
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_mettatonbattle
        caster_loop(global.batmusic, 0.9, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_687") // * Mettaton attacks!
        global.monsterinstance[0] = instance_create(316, 190, obj_mettatonb_second)
        break
    case 58:
        global.monstertype[0] = 41
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_undyneboss
        caster_loop(global.batmusic, 0.9, 1.2)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = " %%"
        global.monsterinstance[0] = instance_create(250, 75, obj_undynebattle2)
        break
    case 59:
        global.monstertype[0] = 42
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_868") // * Madjick pops out of its hat!
        global.monsterinstance[0] = instance_create(244, 50, obj_wizard)
        break
    case 60:
        global.monstertype[0] = 43
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_882") // * Knight Knight blocks the way!
        global.monsterinstance[0] = instance_create(56, 40, obj_finalknight)
        break
    case 61:
        global.monstertype[0] = 44
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_896") // * Final Froggit was already there^1,&  waiting for you.
        global.monsterinstance[0] = instance_create(218, 110, obj_finalfroggit)
        break
    case 62:
        global.monstertype[0] = 45
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_910") // * Astigmatism drew near.
        global.monsterinstance[0] = instance_create(218, 110, obj_astigmatism)
        break
    case 63:
        global.monstertype[0] = 46
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_924") // * Whimsalot rushed in!
        global.monsterinstance[0] = instance_create(218, 110, obj_whimsalot)
        break
    case 64:
        global.monstertype[0] = 46
        global.monstertype[1] = 44
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_938") // * Whimsalot and Final Froggit&  appeared.
        global.monsterinstance[0] = instance_create(106, 110, obj_whimsalot)
        global.monsterinstance[1] = instance_create(416, 110, obj_finalfroggit)
        break
    case 65:
        global.monstertype[0] = 46
        global.monstertype[1] = 45
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_953") // * Whimsalot and Astigmatism&  appeared.
        global.monsterinstance[0] = instance_create(106, 110, obj_whimsalot)
        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
        break
    case 66:
        global.monstertype[0] = 44
        global.monstertype[1] = 45
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_968") // * Final Froggit and Astigmatism&  appeared.
        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
        break
    case 67:
        global.monstertype[0] = 44
        global.monstertype[1] = 45
        global.monstertype[2] = 46
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_983") // * What a nightmare!
        global.monsterinstance[0] = instance_create(16, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(218, 110, obj_astigmatism)
        global.monsterinstance[2] = instance_create(420, 110, obj_whimsalot)
        break
    case 68:
        global.monstertype[0] = 43
        global.monstertype[1] = 42
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_999") // * Mercenaries emerge from&  the shadows.
        global.monsterinstance[0] = instance_create(16, 50, obj_finalknight)
        global.monsterinstance[1] = instance_create(366, 50, obj_wizard)
        break
    case 69:
        global.monstertype[0] = 47
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1015") // * Defuse the bomb!
        global.monsterinstance[0] = instance_create(256, 120, obj_battlebomb)
        break
    case 70:
        global.monstertype[0] = 47
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1029") // * Defuse the dog!
        global.monsterinstance[0] = instance_create(256, 180, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47a") // Annoying Dog
        global.monsterinstance[0].bombtype = 1
        global.monsterinstance[0].mypart1.type = 1
        global.monsterinstance[0].mypart1.bombtype = 1
        global.monsterinstance[0].mypart1.sprite_index = spr_tobdog_sleep_firebattle
        break
    case 71:
        global.monstertype[0] = 47
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1049") // * Defuse the extremely agile&  glass of water!
        global.monsterinstance[0] = instance_create(256, 180, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47b") // Extremely Agile Glass&     Of Water
        global.monsterinstance[0].bombtype = 2
        global.monsterinstance[0].mypart1.type = 2
        global.monsterinstance[0].mypart1.bombtype = 2
        global.monsterinstance[0].mypart1.sprite_index = spr_waterglass_battle
        break
    case 72:
        global.monstertype[0] = 47
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1068") // * Defuse the script!
        global.monsterinstance[0] = instance_create(256, 100, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47c") // Script Bomb
        global.monsterinstance[0].bombtype = 3
        global.monsterinstance[0].mypart1.type = 3
        global.monsterinstance[0].mypart1.bombtype = 3
        break
    case 73:
        global.monstertype[0] = 47
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1088") // * Defuse the basketball!
        global.monsterinstance[0] = instance_create(256, 80, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47d") // Basket Bomb
        global.monsterinstance[0].bombtype = 4
        global.monsterinstance[0].mypart1.type = 4
        global.monsterinstance[0].mypart1.bombtype = 4
        break
    case 74:
        global.monstertype[0] = 47
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1107") // * Defuse the present!
        global.monsterinstance[0] = instance_create(250, 100, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47e") // Present Bomb
        global.monsterinstance[0].bombtype = 5
        global.monsterinstance[0].mypart1.type = 5
        global.monsterinstance[0].mypart1.bombtype = 5
        break
    case 75:
        global.monstertype[0] = 47
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1126") // * Defuse the game!
        global.monsterinstance[0] = instance_create(256, 100, obj_battlebomb)
        global.monstername[0] = scr_gettext("monstername_47f") // Game Bomb
        global.monsterinstance[0].bombtype = 6
        global.monsterinstance[0].mypart1.type = 6
        global.monsterinstance[0].mypart1.bombtype = 6
        break
    case 76:
        global.monstertype[0] = 49
        global.monstertype[1] = 48
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_704") // * Royal Guard attacks!
        global.monsterinstance[0] = instance_create(46, 66, obj_bara04)
        global.monsterinstance[1] = instance_create(460, 66, obj_bara03)
        break
    case 77:
        global.monstertype[0] = 36
        global.monstertype[1] = 37
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1160") // * Tsunderplane attacks!&* Not because it's jealous Vulkin&  is paying attention to you!
        global.monsterinstance[0] = instance_create(46, 36, obj_tsunderplane)
        global.monsterinstance[1] = instance_create(306, 125, obj_vulkin)
        break
    case 78:
        global.monstertype[0] = 38
        global.monstertype[1] = 38
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1176") // * The rare and threatening&  Double Davis.
        global.monsterinstance[0] = instance_create(106, 10, obj_pyrope)
        global.monsterinstance[1] = instance_create(306, 10, obj_pyrope)
        break
    case 79:
        global.monstertype[0] = 37
        global.monstertype[1] = 37
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1191") // * A strange parade blocks the&  path.
        global.monsterinstance[0] = instance_create(106, 125, obj_vulkin)
        global.monsterinstance[1] = instance_create(306, 125, obj_vulkin)
        break
    case 80:
        global.monstertype[0] = 50
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_mettatonbattle
        caster_loop(global.batmusic, 0.9, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_687") // * Mettaton attacks!
        global.monsterinstance[0] = instance_create(300, 190, obj_mettatonb_third)
        break
    case 81:
        global.monstertype[0] = 51
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_mettaton_ex
        caster_loop(global.batmusic, 1, 0.97)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1221") // * Mettaton EX makes his premiere!
        global.monsterinstance[0] = instance_create(210, 60, obj_mettatonex)
        break
    case 82:
        global.monstertype[0] = 53
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_amalgam
        caster_loop(global.batmusic, 0.8, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1236") // * Smells like sweet lemons.
        global.monsterinstance[0] = instance_create(280, 20, obj_lemonbread)
        break
    case 83:
        global.monstertype[0] = 54
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_amalgam
        caster_loop(global.batmusic, 0.8, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1250") // * ,
        global.monsterinstance[0] = instance_create(240, 20, obj_reaperbird)
        break
    case 84:
        global.monstertype[0] = 55
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_snowy
        caster_loop(global.batmusic, 0.9, 0.5)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1264") // * It's so cold.
        global.monsterinstance[0] = instance_create(240, 20, obj_snowdrakemom)
        break
    case 85:
        global.monstertype[0] = 56
        global.monstertype[1] = 56
        global.monstertype[2] = 56
        global.batmusic = mus_amalgam
        caster_loop(global.batmusic, 0.8, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1278") // *        drew near!
        global.monsterinstance[0] = instance_create(15, 146, obj_memoryhead)
        global.monsterinstance[1] = instance_create(217, 146, obj_memoryhead)
        global.monsterinstance[2] = instance_create(421, 146, obj_memoryhead)
        break
    case 86:
        global.monstertype[0] = 57
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_woofenstein_loop
        caster_loop(global.batmusic, 0.8, 0.85)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1294") // * It's the Amalgamate.
        global.monsterinstance[0] = instance_create(180, 90, obj_endogeny)
        break
    case 87:
        global.monstertype[0] = 58
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        if (!audio_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = mus_xpart
            else
                global.batmusic = mus_xpart_2
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1314") // * The Lost Soul appeared.
        global.monsterinstance[0] = instance_create(296, 70, obj_ripoff_undyne)
        break
    case 88:
        global.monstertype[0] = 60
        global.monstertype[1] = 61
        global.monstertype[2] = 0
        if (!audio_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = mus_xpart
            else
                global.batmusic = mus_xpart_2
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1334") // * The Lost Souls appeared.
        global.monsterinstance[0] = instance_create(76, 35, obj_ripoff_papyrus)
        global.monsterinstance[1] = instance_create(456, 148, obj_ripoff_sans)
        break
    case 89:
        global.monstertype[0] = 59
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        if (!audio_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = mus_xpart
            else
                global.batmusic = mus_xpart_2
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1314") // * The Lost Soul appeared.
        global.monsterinstance[0] = instance_create(266, 100, obj_ripoff_alphys)
        break
    case 90:
        global.monstertype[0] = 62
        global.monstertype[1] = 63
        global.monstertype[2] = 0
        if (!audio_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = mus_xpart
            else
                global.batmusic = mus_xpart_2
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1334") // * The Lost Souls appeared.
        global.monsterinstance[0] = instance_create(26, 94, obj_ripoff_toriel)
        global.monsterinstance[1] = instance_create(356, 62, obj_ripoff_asgore)
        break
    case 91:
        global.monstertype[0] = 64
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1
        caster_loop(global.batmusic, 1, 0.25)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1395") // * In my way.
        global.monsterinstance[0] = instance_create(260, 110, obj_mkid_battle)
        break
    case 92:
        global.monstertype[0] = 65
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_x_undyne
        caster_loop(global.batmusic, 1, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1410") // * The heroine appears.
        global.monsterinstance[0] = instance_create(210, 20, obj_undyne_ex)
        break
    case 93:
        global.monstertype[0] = 66
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1422") // * Glad Dummy lets you go.
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(216, 136, obj_gladdummy)
        break
    case 94:
        global.monstertype[0] = 67
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_mettaton_neo
        caster_loop(global.batmusic, 0.7, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1439") // * Mettaton NEO blocks the way!
        global.monsterinstance[0] = instance_create(210, 0, obj_mettaton_neo)
        break
    case 100:
        global.monstertype[0] = 52
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = ""
        global.monster[0] = true
        global.monsterinstance[0] = instance_create(116, 16, obj_asgore_finalintro)
        global.mnfight = -999
        break
    case 101:
        global.monstertype[0] = 52
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_vsasgore
        caster_loop(global.batmusic, 1, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1484") // * ASGORE attacks!
        global.monsterinstance[0] = instance_create(208, 8, obj_asgoreb)
        instance_create(0, 0, obj_purplegradienter)
        instance_create(0, 0, obj_orangeparticlegen)
        break
    case 120:
        global.monstertype[0] = 70
        global.monstertype[1] = 71
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1501") // * That doesn't seem correct.
        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(416, 110, obj_astigmatism)
        break
    case 121:
        global.monstertype[0] = 70
        global.monstertype[1] = 73
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1517") // * Final Froggit stopped chasing&  Migospel around.
        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(426, 130, obj_migospel)
        break
    case 122:
        global.monstertype[0] = 75
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1532") // * Parsnik slithered out of the&  earth!
        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
        break
    case 123:
        global.monstertype[0] = 74
        global.monstertype[1] = 74
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1547") // * You tripped over some&  Moldessas.
        global.monsterinstance[0] = instance_create(118, 127, obj_moldessa)
        global.monsterinstance[1] = instance_create(318, 127, obj_moldessa)
        break
    case 124:
        global.monstertype[0] = 74
        global.monstertype[1] = 74
        global.monstertype[2] = 74
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1563") // * A line of Moldessas block the&  path.
        global.monsterinstance[0] = instance_create(18, 127, obj_moldessa)
        global.monsterinstance[1] = instance_create(218, 127, obj_moldessa)
        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
        break
    case 125:
        global.monstertype[0] = 70
        global.monstertype[1] = 72
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1580") // * Can you believe it?
        global.monsterinstance[0] = instance_create(106, 110, obj_finalfroggit)
        global.monsterinstance[1] = instance_create(416, 120, obj_whimsalot)
        break
    case 126:
        global.monstertype[0] = 70
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1595") // * Final Froggit hopped in...?
        global.monsterinstance[0] = instance_create(208, 110, obj_finalfroggit)
        break
    case 127:
        global.monstertype[0] = 72
        global.monstertype[1] = 75
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1609") // * Whimsalot and Parsnik appeared.
        global.monsterinstance[0] = instance_create(110, 120, obj_whimsalot)
        global.monsterinstance[1] = instance_create(316, 120, obj_parsnik)
        break
    case 128:
        global.monstertype[0] = 74
        global.monstertype[1] = 73
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1624") // * Migospel flutters in^1, carrying&  Moldessa.
        global.monsterinstance[0] = instance_create(116, 127, obj_moldessa)
        global.monsterinstance[1] = instance_create(324, 130, obj_migospel)
        break
    case 129:
        global.monstertype[0] = 75
        global.monstertype[1] = 73
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1639") // * Migospel flutters in^1, carrying&  Parsnik.
        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
        global.monsterinstance[1] = instance_create(324, 130, obj_migospel)
        break
    case 130:
        global.monstertype[0] = 75
        global.monstertype[1] = 75
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1654") // * Parsniks hissed out of the&  earth!
        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
        global.monsterinstance[1] = instance_create(318, 120, obj_parsnik)
        break
    case 131:
        global.monstertype[0] = 75
        global.monstertype[1] = 71
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1669") // * Not only potatoes have eyes.
        global.monsterinstance[0] = instance_create(111, 120, obj_parsnik)
        global.monsterinstance[1] = instance_create(314, 110, obj_astigmatism)
        break
    case 132:
        global.monstertype[0] = 71
        global.monstertype[1] = 71
        global.monstertype[2] = 0
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1684") // * Eyes appeared from the shadows.
        global.monsterinstance[0] = instance_create(108, 110, obj_astigmatism)
        global.monsterinstance[1] = instance_create(312, 110, obj_astigmatism)
        break
    case 133:
        global.monstertype[0] = 71
        global.monstertype[1] = 73
        global.monstertype[2] = 74
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1699") // * Looks like a real party.
        global.monsterinstance[0] = instance_create(8, 110, obj_astigmatism)
        global.monsterinstance[1] = instance_create(213, 130, obj_migospel)
        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
        break
    case 134:
        global.monstertype[0] = 71
        global.monstertype[1] = 75
        global.monstertype[2] = 74
        global.batmusic = mus_battle2
        caster_loop(global.batmusic, 0.75, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1716") // * Party from Hell.
        global.monsterinstance[0] = instance_create(18, 120, obj_whimsalot)
        global.monsterinstance[1] = instance_create(218, 120, obj_parsnik)
        global.monsterinstance[2] = instance_create(418, 127, obj_moldessa)
        break
    case 135:
        global.monstertype[0] = 76
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_battle1
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1733") // * Glyde swooped in!
        global.monsterinstance[0] = instance_create(188, 16, obj_glydeb)
        break
    case 140:
        global.monstertype[0] = 80
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_wrongworld
        caster_loop(global.batmusic, 0.8, 1)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1747") // * You're blocked in politely!
        global.monsterinstance[0] = instance_create(216, 78, obj_sosorry)
        break
    case 255:
        global.monstertype[0] = 99
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        audio_stop_all()
        global.batmusic = mus_xpart
        caster_loop(global.batmusic, 0.8, 0.95)
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1762") // * It's the end.
        global.monsterinstance[0] = instance_create(258, 8, obj_asrielb)
        break
    case 256:
        global.monstertype[0] = 100
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.flag[15] = 1
        global.flag[500] = 1
        if (!audio_is_playing(global.batmusic))
        {
            if (global.flag[501] == 0)
                global.batmusic = mus_a2
            else
                global.batmusic = mus_xpart_2
            caster_loop(global.batmusic, 0.8, 0.95)
        }
        global.msc = 0
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.msg[0] = scr_gettext("scr_battlegroup_1787") // * ASRIEL blocks the way!
        if (global.flag[501] == 2)
            global.msg[0] = scr_gettext("scr_battlegroup_1789") // * ASRIEL's SOUL was awakened&  by the power of your&  friends!
        if (global.flag[501] == 3)
            global.msg[0] = scr_gettext("scr_battlegroup_1791") // * It's time to say goodbye.
        global.border = 0
        SCR_BORDERSETUP()
        global.monsterinstance[0] = instance_create(320, 48, obj_asrielfinal)
        break
//YELLOW Battlegroups
    case 300: //Flier Solo
        global.monstertype[0] = 101
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_1") // * Flier is giving fighting a try!
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(220, 18, obj_flier)
        break
    case 301: //Flier Trio
        global.monstertype[0] = 101
        global.monstertype[1] = 101
        global.monstertype[2] = 101
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_2") // * You are overwhelmed by&  depressing vibes
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(18, 18, obj_flier)
        global.monsterinstance[1] = instance_create(220, 18, obj_flier)
        global.monsterinstance[2] = instance_create(424, 18, obj_flier)
        break
    case 302: //Penilla Solo
        global.monstertype[0] = 102
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_3") // * Penilla draws near!
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(18, 18, obj_flier)
        break
    case 303: //Flier Penilla duo
        global.monstertype[0] = 101
        global.monstertype[1] = 102
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_4") // * Penilla seems to be dreading#  this battle."
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(18, 18, obj_flier)
        global.monsterinstance[1] = instance_create(220, 18, obj_flier)
        break
    case 304: //Sweet Corn Solo
        global.monstertype[0] = 103
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msc = 0
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_5") // * Sweet Corn hops up excitedly.
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(240, 120, obj_sweetcorn)
        break
    case 305: //Sweet Corn Duo
        global.monstertype[0] = 103
        global.monstertype[1] = 103
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_6") // * You can already feel the&  cavities.
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(18, 18, obj_sweetcorn)
        global.monsterinstance[1] = instance_create(220, 18, obj_sweetcorn)
        break
    case 306: //Sweet Corn Penilla Duo
        global.monstertype[0] = 103
        global.monstertype[1] = 102
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_7") // * Penilla encounters you.&* Sweet Corn comes out of nowhere&  acting excited.
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(18, 18, obj_flier)
        global.monsterinstance[1] = instance_create(220, 18, obj_flier)
        break
    case 307: //Crispy Scroll Solo
        global.monstertype[0] = 104
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_8") // * Crispy Scroll is looking for&  someone to talk to.
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(18, 18, obj_flier)
        break
    case 308: //Crispy Scroll Penilla Duo
        global.monstertype[0] = 104
        global.monstertype[1] = 102
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_9") // * A powerful lone warrior and his&  pencil companion encounter you!
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(18, 18, obj_flier)
        global.monsterinstance[1] = instance_create(220, 18, obj_flier)
        break
    case 309: //Rorrim Solo
        global.monstertype[0] = 105
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_prebattle1_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_10") // * It's a mirror match!
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(18, 18, obj_flier)
        break
    case 310: //Decibat
        global.monstertype[0] = 106
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_decibat_yellow
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_11") // * Decibat makes his presence&  known.
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(318, 126, obj_decibat)
        break
    case 320: //Dalv
        global.monstertype[0] = 107
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.batmusic = mus_dalvbattle
        caster_loop(global.batmusic, 0.5, 1)
        global.msg[0] = scr_gettext("scr_battle_intro_yellow_13") // * Dalv musters his fighting&  spirit.
        global.msg[1] = scr_gettext("scr_battletext_yellow_1") // %%%
        global.battlelv = 0
        global.actfirst = 0
        global.extraintro = 0
        global.monsterinstance[0] = instance_create(220, 18, obj_dalv)
        break
}

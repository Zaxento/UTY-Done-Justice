global.msg[0] = scr_gettext(("item_use_" + string(argument1)))
switch argument1
{
    case 0:
        break
    case 1:
        if (global.seriousbattle == 0)
        {
            randomtext = round(random(15))
            if (randomtext <= 2)
                global.msg[0] += scr_gettext("item_use_1a") //  &* Very un-licorice-like.
            if (randomtext == 15)
                global.msg[0] += scr_gettext("item_use_1b") //  &* ... tastes like licorice.
        }
        script_execute(scr_recoitem, 10)
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 2:
        if (global.seriousbattle == 1)
            global.msg[0] = scr_gettext("item_use_2_serious") // * You ate the Croquet Roll.
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 15)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 3:
        if instance_exists(obj_dogeparent)
        {
            if instance_exists(obj_lesserdoge)
            {
                if (obj_lesserdoge.mercymod < 60)
                    obj_lesserdoge.mercymod = 102
            }
            else
                obj_dogeparent.mercymod = 102
            if (instance_exists(obj_mandog) || instance_exists(obj_womandog))
            {
                if (scr_monstersum() == 1)
                {
                    script_execute(scr_writetext, 0, scr_gettext("item_use_3_doge1"), 0, 0) // * You threw the stick^1.&* But nothing happened./%
                    obj_dogeparent.mercymod = -9999
                }
                else
                    script_execute(scr_writetext, 0, scr_gettext("item_use_3_doge2"), 0, 0) // * You threw the stick and&  the dogs ran to get it^1.&* You played fetch for a while./%
            }
            else
            {
                if instance_exists(obj_greatdog)
                    obj_dogeparent.mercymod = 250
                script_execute(scr_writetext, 0, scr_gettext("item_use_3_greatdog"), 0, 0) // * You threw the stick and&  the dog ran to get it^1.&* You played fetch for a while./%
            }
            if instance_exists(obj_endogeny)
                obj_endogeny.mercymod = 999999
        }
        else if (instance_exists(obj_papyrusboss) || instance_exists(obj_wizard) || instance_exists(obj_mettatonex))
        {
            if instance_exists(obj_papyrusboss)
                script_execute(scr_writetext, 0, scr_gettext("item_use_3_papyrus"), 0, 0) // * You throw the stick.&* Papyrus brings it back&  in his mouth./%
            if instance_exists(obj_wizard)
            {
                script_execute(scr_writetext, 0, scr_gettext("item_use_3_madjick"), 0, 0) // * You raise the stick.&* Madjick mistakes it for&  a magic wand./%
                obj_wizard.mercymod = 300
            }
            if instance_exists(obj_mettatonex)
            {
                with (obj_ratingsmaster)
                {
                    curtype = 7
                    event_user(0)
                }
                script_execute(scr_writetext, 0, scr_gettext("item_use_3_mettaton"), 0, 0) // * You throw the stick.&* Mettaton catches it in his&  mouth and winks./%
            }
        }
        else
            script_execute(scr_writetext, 0, scr_gettext("item_use_3"), 0, 0) // * You threw the stick away^1.&* Then picked it back up./%
        break
    case 4:
        audio_play_sound(snd_power,80,false)
        if (global.seriousbattle == 0)
            global.msg[0] += scr_gettext("item_use_4a") // &* Still kind of gooey.
        script_execute(scr_recoitem, 10)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 5:
        script_execute(scr_recoitem, 1)
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 6:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 8)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 7:
        if (global.seriousbattle == 0)
        {
            if (global.inbattle == 1)
            {
                randomtext = ceil(random(10))
                if (randomtext > 9)
                    global.msg[0] = scr_gettext("item_use_7a") // * Don't worry^1, Spider didn't.
            }
        }
        if instance_exists(obj_spiderb)
        {
            with (obj_spiderb)
                event_user(6)
        }
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 12)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 8:
        if (global.seriousbattle == 0)
        {
            randomtext = round(random(10))
            if (randomtext > 8)
                global.msg[0] += scr_gettext("item_use_8a") // &* You didn't cry...
        }
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 5)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 9:
        foodsounder = instance_create(0, 0, obj_foodsound)
        if (global.seriousbattle == 0)
        {
            with (foodsounder)
                soundtype = 2
        }
        script_execute(scr_recoitem, 16)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 10:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 24)
        script_execute(scr_itemshift, argument0, 0)
        if instance_exists(obj_spiderb)
        {
            with (obj_spiderb)
                event_user(6)
        }
        break
    case 11:
        instance_create(0, 0, obj_foodsound)
        spec_p = 0
        if (global.hp < global.maxhp)
            global.hp = global.maxhp
        if instance_exists(obj_asgoreb)
        {
            spec_p = 1
            global.msg[1] = scr_gettext("item_use_11_asgore1") // * The smell reminded ASGORE of&  something.../
            global.msg[2] = scr_gettext("item_use_11_asgore2") // * ASGORE's ATTACK down^1!&* ASGORE's DEFENSE down!/%%
            with (obj_asgoreb)
            {
                global.monsteratk[myself] -= 1
                global.monsterdef[myself] -= 5
            }
        }
        if instance_exists(obj_ripoff_toriel)
        {
            spec_p = 1
            global.msg[1] = scr_gettext("item_use_11_toriel") // * The smell reminded the Lost&  Souls of something...!/%%
            with (obj_monsterparent)
                totalmercy += 3
        }
        if (spec_p == 0)
            script_execute(scr_writetext, 0, (scr_gettext("item_use_11") + "%"), 0, 0) // * You ate the Butterscotch Pie.&* Your HP was maxed out./
        if (spec_p == 1)
            script_execute(scr_writetext, 0, scr_gettext("item_use_11"), 0, 0) // * You ate the Butterscotch Pie.&* Your HP was maxed out./
        script_execute(scr_itemshift, argument0, 0)
        break
    case 12:
        scr_armoreq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 13:
        scr_weaponeq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 14:
        scr_weaponeq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 15:
        scr_armoreq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 16:
        if (room == room_tundra6A)
            global.flag[56] = 4
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 45)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 17:
        randomtext = floor(random(8))
        if (randomtext == 0)
            global.msg[0] = scr_gettext("item_use_17a") // * You're just great!
        if (randomtext == 1)
            global.msg[0] = scr_gettext("item_use_17b") // * You look nice today!
        if (randomtext == 2)
            global.msg[0] = scr_gettext("item_use_17c") // * Are those claws natural?
        if (randomtext == 3)
            global.msg[0] = scr_gettext("item_use_17d") // * You're super spiffy!
        if (randomtext == 4)
            global.msg[0] = scr_gettext("item_use_17e") // * Have a wonderful day!
        if (randomtext == 5)
            global.msg[0] = scr_gettext("item_use_17f") // * Is this as sweet as you?
        if (randomtext == 6)
            global.msg[0] = scr_gettext("item_use_17g") // * (An illustration of a hug.)
        if (randomtext == 7)
            global.msg[0] = scr_gettext("item_use_17h") // * Love yourself! I love you!
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 15)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 18:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 28)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 19:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 11)
        global.item[argument0] = 20
        break
    case 20:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 11)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 21:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 22)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 22:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 2)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 23:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 34)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 24:
        scr_armoreq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 25:
        scr_weaponeq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 26:
        if (global.inbattle == 0)
        {
            d = instance_create(x, y, obj_imageview)
            d.sprite_index = scr_getsprite(spr_punchcard)
            global.interact = 1
        }
        else
        {
            if (global.weapon == 14)
            {
                audio_play_sound(snd_tearcard,80,false)
                add = 6
                if (global.at > 18)
                    add = 5
                if (global.at > 23)
                    add = 4
                if (global.at > 26)
                    add = 3
                if (global.at > 28)
                    add = 2
                global.at += add
                global.msg[1] = scr_gettext("item_use_26a", string(add))
                global.flag[78] = 1
            }
            else
                global.msg[1] = scr_gettext("item_use_26b") // * But nothing happened./%
            script_execute(scr_writetext, 0, "x", 0, 0)
            script_execute(scr_itemshift, argument0, 0)
        }
        break
    case 27:
        script_execute(scr_writetext, 0, "x", 0, 0)
        if instance_exists(obj_rarependant)
        {
            with (obj_rarependant)
                con = 1
        }
        script_execute(scr_itemshift, argument0, 0)
        break
    case 28:
        healamt = 1
        dogsad = floor(random(4))
        if (dogsad == 0)
        {
            global.msg[0] += scr_gettext("item_use_28a") // * Oh^1. Tastes yappy...
            healamt = 30
        }
        if (dogsad == 1)
        {
            global.msg[0] += scr_gettext("item_use_28b") // * Oh^1. Fried tennis ball...
            healamt = 10
        }
        if (dogsad == 2)
        {
            global.msg[0] += scr_gettext("item_use_28c") // * Oh^1. There are bones...
            healamt = 2
        }
        if (dogsad == 3)
        {
            global.msg[0] += scr_gettext("item_use_28d") // * It's literally garbage???
            healamt = 999
        }
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_swallow
        if (global.seriousbattle == 0)
            grt.sound2 = snd_dogresidue
        if (global.seriousbattle == 1)
            grt.sound2 = snd_heal_c
        grt.alarm[1] = 10
        script_execute(scr_recoitem, healamt)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 29:
        if (global.item[7] == 0)
            global.msg[1] = scr_gettext("item_use_29a") // * The rest of your inventory&  filled up with Dog Residue./%%
        else
            global.msg[1] = scr_gettext("item_use_29b") // * .../
        global.msg[2] = scr_gettext("item_use_29c") // * You finished using it./
        global.msg[3] = scr_gettext("item_use_29d") // * An uneasy atmosphere fills&  the room./%%
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_item
        grt.sound2 = snd_dogresidue
        script_execute(scr_writetext, 0, "x", 0, 0)
        script_execute(scr_itemshift, argument0, 0)
        for (i = 0; i < 8; i += 1)
        {
            rr = (floor(random(7)) + 28)
            if (global.item[i] == 0)
                global.item[i] = rr
        }
        break
    case 30:
        if (global.item[7] == 0)
            global.msg[1] = scr_gettext("item_use_29a") // * The rest of your inventory&  filled up with Dog Residue./%%
        else
            global.msg[1] = scr_gettext("item_use_29b") // * .../
        global.msg[2] = scr_gettext("item_use_29c") // * You finished using it./
        global.msg[3] = scr_gettext("item_use_29d") // * An uneasy atmosphere fills&  the room./%%
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_item
        grt.sound2 = snd_dogresidue
        script_execute(scr_writetext, 0, "x", 0, 0)
        script_execute(scr_itemshift, argument0, 0)
        for (i = 0; i < 8; i += 1)
        {
            rr = (floor(random(7)) + 28)
            if (global.item[i] == 0)
                global.item[i] = rr
        }
        break
    case 31:
        if (global.item[7] == 0)
            global.msg[1] = scr_gettext("item_use_29a") // * The rest of your inventory&  filled up with Dog Residue./%%
        else
            global.msg[1] = scr_gettext("item_use_29b") // * .../
        global.msg[2] = scr_gettext("item_use_29c") // * You finished using it./
        global.msg[3] = scr_gettext("item_use_29d") // * An uneasy atmosphere fills&  the room./%%
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_item
        grt.sound2 = snd_dogresidue
        script_execute(scr_writetext, 0, "x", 0, 0)
        script_execute(scr_itemshift, argument0, 0)
        for (i = 0; i < 8; i += 1)
        {
            rr = (floor(random(7)) + 28)
            if (global.item[i] == 0)
                global.item[i] = rr
        }
        break
    case 32:
        if (global.item[7] == 0)
            global.msg[1] = scr_gettext("item_use_29a") // * The rest of your inventory&  filled up with Dog Residue./%%
        else
            global.msg[1] = scr_gettext("item_use_29b") // * .../
        global.msg[2] = scr_gettext("item_use_29c") // * You finished using it./
        global.msg[3] = scr_gettext("item_use_29d") // * An uneasy atmosphere fills&  the room./%%
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_item
        grt.sound2 = snd_dogresidue
        script_execute(scr_writetext, 0, "x", 0, 0)
        script_execute(scr_itemshift, argument0, 0)
        for (i = 0; i < 8; i += 1)
        {
            rr = (floor(random(7)) + 28)
            if (global.item[i] == 0)
                global.item[i] = rr
        }
        break
    case 33:
        if (global.item[7] == 0)
            global.msg[1] = scr_gettext("item_use_29a") // * The rest of your inventory&  filled up with Dog Residue./%%
        else
            global.msg[1] = scr_gettext("item_use_29b") // * .../
        global.msg[2] = scr_gettext("item_use_29c") // * You finished using it./
        global.msg[3] = scr_gettext("item_use_29d") // * An uneasy atmosphere fills&  the room./%%
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_item
        grt.sound2 = snd_dogresidue
        script_execute(scr_writetext, 0, "x", 0, 0)
        script_execute(scr_itemshift, argument0, 0)
        for (i = 0; i < 8; i += 1)
        {
            rr = (floor(random(7)) + 28)
            if (global.item[i] == 0)
                global.item[i] = rr
        }
        break
    case 34:
        if (global.item[7] == 0)
            global.msg[1] = scr_gettext("item_use_29a") // * The rest of your inventory&  filled up with Dog Residue./%%
        else
            global.msg[1] = scr_gettext("item_use_29b") // * .../
        global.msg[2] = scr_gettext("item_use_29c") // * You finished using it./
        global.msg[3] = scr_gettext("item_use_29d") // * An uneasy atmosphere fills&  the room./%%
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_item
        grt.sound2 = snd_dogresidue
        script_execute(scr_writetext, 0, "x", 0, 0)
        script_execute(scr_itemshift, argument0, 0)
        for (i = 0; i < 8; i += 1)
        {
            rr = (floor(random(7)) + 28)
            if (global.item[i] == 0)
                global.item[i] = rr
        }
        break
    case 35:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 21)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 36:
        if (global.inbattle == 0)
        {
            instance_create(0, 0, obj_foodsound)
            script_execute(scr_recoitem, 15)
        }
        if (global.inbattle == 1)
        {
            if (global.seriousbattle == 1)
            {
                global.msg[0] = scr_gettext("item_use_36a") // * They're better dry.
                instance_create(0, 0, obj_foodsound)
                script_execute(scr_recoitem, 90)
            }
            else
                nood = instance_create(0, 0, obj_instantnoodleitem)
        }
        script_execute(scr_itemshift, argument0, 0)
        break
    case 37:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 18)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 38:
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_swallow
        if (global.seriousbattle == 0)
            grt.sound2 = snd_dogsalad
        if (global.seriousbattle == 1)
            grt.sound2 = snd_heal_c
        grt.alarm[1] = 10
        script_execute(scr_recoitem, 20)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 39:
        if (global.seriousbattle == 0)
        {
            grt = instance_create(0, 0, obj_soundcombo)
            grt.sound1 = snd_swallow
            if (global.seriousbattle == 0)
                grt.sound2 = snd_catsalad
            if (global.seriousbattle == 1)
                grt.sound2 = snd_heal_c
            grt.alarm[1] = 10
        }
        else
            grt = instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 21)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 40:
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_swallow
        grt.sound2 = snd_sparkle1
        grt.alarm[1] = 10
        if instance_exists(obj_ratingsmaster)
        {
            global.msg[0] = scr_gettext("item_use_40_mettaton") // * You eat the Glamburger.&* The audience loves the brand.
            with (obj_ratingsmaster)
            {
                curtype = 10
                event_user(0)
            }
        }
        script_execute(scr_recoitem, 27)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 41:
        if (global.inbattle == 1)
        {
            if (global.sp < 8)
            {
                global.sp += 1
                if instance_exists(obj_spiderb)
                    global.msg[0] += scr_gettext("item_use_41_nospeed") // &* But SPEED restricted by web.
                else
                    global.msg[0] += scr_gettext("item_use_41_speed") // &* Your SPEED boosts!
            }
        }
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_swallow
        grt.sound2 = snd_speedup
        grt.alarm[1] = 10
        script_execute(scr_recoitem, 10)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 42:
        if instance_exists(obj_ratingsmaster)
        {
            global.msg[0] = scr_gettext("item_use_42_mettaton") // * You eat the Starfait.&* The audience loves the brand.
            with (obj_ratingsmaster)
            {
                curtype = 9
                event_user(0)
            }
        }
        grt = instance_create(0, 0, obj_foodsound)
        grt.alarm[1] = 10
        script_execute(scr_recoitem, 14)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 43:
        if (global.seriousbattle == 0)
        {
            grt = instance_create(0, 0, obj_soundcombo)
            grt.sound1 = snd_swallow
            grt.sound2 = snd_hero
            grt.alarm[1] = 10
        }
        else
            grt = instance_create(0, 0, obj_foodsound)
        if (global.inbattle == 1)
        {
            if (global.at < 150)
                global.at += 4
            global.msg[0] += scr_gettext("item_use_43_attack") // &* ATTACK increased by 4!
        }
        if instance_exists(obj_ratingsmaster)
        {
            with (obj_ratingsmaster)
            {
                curtype = 9
                event_user(0)
            }
        }
        script_execute(scr_recoitem, 40)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 44:
        scr_armoreq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 45:
        scr_weaponeq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 46:
        scr_armoreq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 47:
        scr_weaponeq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 48:
        scr_armoreq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 49:
        scr_weaponeq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 50:
        scr_armoreq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 51:
        scr_weaponeq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 52:
        scr_weaponeq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 53:
        scr_armoreq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 54:
        global.hp -= 1
        grt = instance_create(0, 0, obj_soundcombo)
        grt.sound1 = snd_swallow
        grt.sound2 = snd_hurt1
        grt.alarm[1] = 10
        if (global.hp <= 2)
        {
            grt.sound2 = snd_power
            global.hp = global.maxhp
            global.msg[0] = scr_gettext("item_use_54_heal") // * You consume the Bad Memory^1.&* Your HP was maxed out./%
        }
        script_execute(scr_writetext, 0, "x", 0, 0)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 55:
        if (global.flag[503] == 1)
            global.msg[0] = scr_gettext("item_use_55_short") // * The dream came true!
        global.flag[503] = 1
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 17)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 56:
        if (!instance_exists(obj_undyne_friendc))
        {
            global.msg[0] = scr_gettext("item_use_56") // * You tried to open the letter^1,&  but.../
            global.msg[1] = scr_gettext("item_use_56a") // * It's been shut so tightly^1,&  you'd need a chainsaw in&  order to open it./%
            if (room == room_fire_prelab)
                global.msg[0] = scr_gettext("item_use_56_prelab") // * (Maybe if you check the lab&  door^1, you can slide it&  underneath...)/%%
            script_execute(scr_writetext, 0, "x", 0, 0)
        }
        else
        {
            global.faceemotion = 1
            global.msg[0] = scr_gettext("item_use_56_undyne") // * OH MY GOD!!^1!&* I'M GONNA FREAKIN' KILL&  YOU!!/%%
            script_execute(scr_writetext, 0, "x", 5, 37)
        }
        break
    case 57:
        if (!instance_exists(obj_undyne_friendc))
        {
            global.msg[0] = scr_gettext("item_use_56") // * You tried to open the letter^1,&  but.../
            global.msg[1] = scr_gettext("item_use_56a") // * It's been shut so tightly^1,&  you'd need a chainsaw in&  order to open it./%
            if (room == room_fire_prelab)
                global.msg[0] = scr_gettext("item_use_56_prelab") // * (Maybe if you check the lab&  door^1, you can slide it&  underneath...)/%%
            script_execute(scr_writetext, 0, "x", 0, 0)
        }
        else
        {
            global.faceemotion = 1
            global.msg[0] = scr_gettext("item_use_56_undyne") // * OH MY GOD!!^1!&* I'M GONNA FREAKIN' KILL&  YOU!!/%%
            script_execute(scr_writetext, 0, "x", 5, 37)
        }
        break
    case 58:
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 13)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 59:
        if instance_exists(obj_ratingsmaster)
        {
            global.msg[0] = scr_gettext("item_use_59_mettaton") // * You eat the Junk Food.&* The audience is disgusted.
            with (obj_ratingsmaster)
            {
                curtype = 8
                event_user(0)
            }
        }
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 17)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 60:
        if (room == room_icecave1)
        {
            global.msg[0] = scr_gettext("item_use_60_fail1") // * You used the Mystery Key^1.&* The door's lock clicks.../
            global.msg[1] = scr_gettext("item_use_60_fail2") // * ... as you fail to fit the&  key into it./
            global.msg[2] = scr_gettext("item_use_60_fail3") // * Nothing happened./%%
        }
        if instance_exists(obj_mettatonex)
            global.msg[0] = scr_gettext("item_use_60_mettaton") // * You used the Mystery Key^1.&* Mettaton pretends it isn't&  there./%%
        if instance_exists(obj_blookhouses)
        {
            global.msg[0] = scr_gettext("item_use_60_open1") // * You used the Mystery Key^1.&* The red house's door&  was unlocked./
            global.msg[1] = scr_gettext("item_use_60_open2") // * The key disappeared./%%
            global.flag[433] = 1
            audio_play_sound(snd_item,80,false)
            with (obj_blookhouses)
                event_user(1)
            script_execute(scr_itemshift, argument0, 0)
        }
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 61:
        if instance_exists(obj_ratingsmaster)
        {
            global.msg[0] = scr_gettext("item_use_61_mettaton") // * You ate the Face Steak.&* The audience goes nuts.
            with (obj_ratingsmaster)
            {
                curtype = 13
                event_user(0)
            }
        }
        grt = instance_create(0, 0, obj_foodsound)
        grt.alarm[1] = 10
        script_execute(scr_recoitem, 60)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 62:
        if (global.seriousbattle == 0)
            global.msg[0] = scr_gettext("item_use_62a") // * You eat the Hush Puppy.&* Dog-magic is neutralized.
        if instance_exists(obj_endogeny)
            obj_endogeny.mercymod = 999999
        instance_create(0, 0, obj_foodsound)
        script_execute(scr_recoitem, 65)
        script_execute(scr_itemshift, argument0, 0)
        break
    case 63:
        instance_create(0, 0, obj_foodsound)
        spec_p = 0
        if (global.hp < (global.maxhp - 1))
            global.hp = (global.maxhp - 1)
        if instance_exists(obj_asgoreb)
        {
            spec_p = 1
            global.msg[1] = scr_gettext("item_use_11_asgore1") // * The smell reminded ASGORE of&  something.../
            global.msg[2] = scr_gettext("item_use_11_asgore2") // * ASGORE's ATTACK down^1!&* ASGORE's DEFENSE down!/%%
            with (obj_asgoreb)
            {
                global.monsteratk[myself] -= 1
                global.monsterdef[myself] -= 5
            }
        }
        if instance_exists(obj_ripoff_toriel)
        {
            spec_p = 1
            global.msg[1] = scr_gettext("item_use_11_toriel") // * The smell reminded the Lost&  Souls of something...!/%%
            with (obj_monsterparent)
                totalmercy += 3
        }
        if (spec_p == 0)
            script_execute(scr_writetext, 0, (scr_gettext("item_use_63") + "%"), 0, 0) // * You ate the Snail Pie.&* Your HP was maxed out./
        if (spec_p == 1)
            script_execute(scr_writetext, 0, scr_gettext("item_use_63"), 0, 0) // * You ate the Snail Pie.&* Your HP was maxed out./
        script_execute(scr_itemshift, argument0, 0)
        break
    case 64:
        scr_armoreq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
//Beware of ITEM IDs with numbers around 200
    case 201:
        if (global.flag[37] == 1)
            scr_writetext(1508, "x", 0, 0)
        else if (global.plot < 19.9)
        {
            if (global.plot > 18 && room == room_torhouse2)
            {
                audio_play_sound(snd_phone,80,false)
                script_execute(scr_writetext, 1507, "x", 0, 0)
            }
            else
            {
                audio_play_sound(snd_phone,80,false)
                script_execute(scr_writetext, 1501, "x", 0, 0)
            }
        }
        else
        {
            audio_play_sound(snd_phone,80,false)
            script_execute(scr_writetext, 1506, "x", 0, 0)
        }
        break
    case 202:
        if (global.flag[37] == 1)
            scr_writetext(1508, "x", 0, 0)
        else if (global.plot < 19.9)
        {
            if (global.plot > 18 && room == room_torhouse2)
            {
                audio_play_sound(snd_phone,80,false)
                script_execute(scr_writetext, 1507, "x", 0, 0)
            }
            else
            {
                audio_play_sound(snd_phone,80,false)
                script_execute(scr_writetext, 1502, "x", 0, 0)
                script_execute(scr_phoneshift, argument0, 0)
            }
        }
        else
        {
            audio_play_sound(snd_phone,80,false)
            script_execute(scr_writetext, 1506, "x", 0, 0)
        }
        break
    case 203:
        if (global.flag[37] == 1)
            scr_writetext(1508, "x", 0, 0)
        else if (global.plot < 19.9)
        {
            if (global.plot > 18 && room == room_torhouse2)
            {
                audio_play_sound(snd_phone,80,false)
                script_execute(scr_writetext, 1507, "x", 0, 0)
            }
            else
            {
                audio_play_sound(snd_phone,80,false)
                script_execute(scr_writetext, 1503, "x", 0, 0)
                script_execute(scr_phoneshift, argument0, 0)
            }
        }
        else
        {
            audio_play_sound(snd_phone,80,false)
            script_execute(scr_writetext, 1506, "x", 0, 0)
        }
        break
    case 204:
        if (global.flag[37] == 1)
            scr_writetext(1508, "x", 0, 0)
        else if (global.plot < 19.9)
        {
            if (global.plot > 18 && room == room_torhouse2)
            {
                audio_play_sound(snd_phone,80,false)
                script_execute(scr_writetext, 1507, "x", 0, 0)
            }
            else
            {
                audio_play_sound(snd_phone,80,false)
                script_execute(scr_writetext, 1504, "x", 0, 0)
                script_execute(scr_phoneshift, argument0, 0)
            }
        }
        else
        {
            audio_play_sound(snd_phone,80,false)
            script_execute(scr_writetext, 1506, "x", 0, 0)
        }
        break
    case 205:
        if (global.flag[37] == 1)
            scr_writetext(1508, "x", 0, 0)
        else if (global.plot < 19.9)
        {
            if (global.plot > 18 && room == room_torhouse2)
            {
                audio_play_sound(snd_phone,80,false)
                script_execute(scr_writetext, 1507, "x", 0, 0)
            }
            else
            {
                audio_play_sound(snd_phone,80,false)
                if (global.flag[41] == 1)
                    script_execute(scr_phoneshift, argument0, 0)
                script_execute(scr_writetext, 1505, "x", 0, 0)
            }
        }
        else
        {
            audio_play_sound(snd_phone,80,false)
            script_execute(scr_writetext, 1506, "x", 0, 0)
        }
        break
    case 206:
        scr_phone_moveup(argument0, argument1)
        audio_play_sound(snd_phone,80,false)
        if (global.flag[7] == 0)
            script_execute(scr_writetext, 1506, "x", 0, 0)
        if (global.flag[7] == 1)
            script_execute(scr_writetext, 1515, "x", 0, 0)
        break
    case 210:
        scr_phone_moveup(argument0, argument1)
        script_execute(scr_writetext, 1510, "x", 0, 0)
        break
    case 220:
        if (room != room_water_dogroom)
        {
            audio_play_sound(snd_dimbox,80,false)
            scr_phone_moveup(argument0, argument1)
            ii = instance_create(0, 0, obj_itemswapper)
            ii.spec = 1
            ii.boxtype = 0
        }
        else
            script_execute(scr_writetext, 1520, "x", 0, 0)
        break
    case 221:
        if (room != room_water_dogroom)
        {
            audio_play_sound(snd_dimbox,80,false)
            scr_phone_moveup(argument0, argument1)
            ii = instance_create(0, 0, obj_itemswapper)
            ii.spec = 1
            ii.boxtype = 1
        }
        else
            script_execute(scr_writetext, 1520, "x", 0, 0)
        break
    //YELLOW Items
    case 65: //Patch
        global.msg[0] = scr_gettext("item_use_65") // * (You are unable to sew the& Patch back onto your hat.)/
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 66: //Rubber Ammo
        scr_weapon2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 67: //Feather
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 68: //Pebbles
        global.msg[1] = scr_gettext("item_use_68a")
        scr_weapon2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 78: //Ice Pellets
        scr_weapon2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 79: //Coffee Beans
        scr_weapon2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 80: //Flint
        scr_weapon2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 81: //Glass Ammo
        scr_weapon2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 82: //Silver Ammo
        scr_weapon2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 83: //Nails
        scr_weapon2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 84: //Friendliness Pellets
        scr_weapon2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 85: //Honeydew Pin
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 86: //Band Merch Pin
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 87: //Silver Scarf
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 88: //Steel Buckle
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 89: //Safety Jacket
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 90: //Fancy Holster
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 91: //Safety Goggles
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 92: //Golden Bandana
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 93: //Delta Rune Patch
        scr_armor2eq(argument0, argument1)
        audio_play_sound(snd_item,80,false)
        script_execute(scr_writetext, 0, "x", 0, 0)
        break
    case 127: //Missing Poster
        if (global.inbattle == 0)
        {
            d = instance_create(x, y, obj_imageview)
            d.sprite_index = scr_getsprite(spr_missing_poster)
            global.interact = 1
        }
        else
        {
            script_execute(scr_writetext, 0, scr_gettext("item_use_127"), 0, 0)
        }
        //global.msg[0] = scr_gettext("item_use_127") // * You presented the poster.&& * Froggit squints/
        break
    default:

}

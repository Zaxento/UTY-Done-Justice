//argument0 = "You won!" replacement.
//argument1 = Silent levelup.
                obj_battlecontroller.won = 1
                global.xp += global.xpreward[3]
                global.gold += global.goldreward[3]
                tlvl = global.lv
                script_execute(scr_levelup)
                if ((global.flag[15] == 0))
                {
                    audio_stop_sound(global.batmusic)
                }
                global.border = 0
                SCR_BORDERSETUP()
                global.msg[0] = scr_gettext(argument0)
                if (tlvl != global.lv && argument1 = 0)
                {
                    global.msg[0] += scr_gettext("obj_battlecontroller_287") // &* Your LOVE increased.
                    audio_play_sound(snd_levelup,80,false)
                }
                global.msg[0] += "/%"
                if ((global.extraintro == 2))
                {
                    global.typer = 5
                    audio_stop_sound(global.currentsong)
                    audio_stop_sound(mus_battle1)
                    global.currentsong = mus_toomuch
                    caster_loop(global.currentsong, 1, 1)
                    global.flag[221] = 1
                    global.msg[0] = global.msg[2]
                    global.myfight = 0
                    global.mnfight = 2
                    obj_heart.x = -200
                }
                global.msc = 0
                obj_battlecontroller.writer = instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER)
                obj_battlecontroller.writer.writingxend += 20
                exit

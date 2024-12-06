//This looks pretty different to what UT Mod Tool says, doesn't it? I was racking my brain over some problems the code had that made it refuse to work here, and decided to use the code from the Switch Decomp, since it also used a later version of UNDERTALE.
//Kinda funny reading this one again since I'm going to be removing a lot of code to skip the naming screen lol

draw_set_color(c_white)
scr_setfont(fnt_maintext)
if (naming == 4)
{
    global.charname = "Clover"
    instance_create(0, 0, obj_whitefader)
    audio_stop_all()
    alerm = 0
    naming = 5
    r = 0.5
    caster_play(mus_cymbal, 0.8, 0.95)
}

if cloverskip == 1
{
    global.charname = "Clover"
    instance_create(0, 0, obj_whitefader)
    audio_stop_all()
    alerm = 0
    r = 0.5
    caster_play(mus_cymbal, 0.8, 0.95)
    cloverskip = 2
}

if cloverskip == 2
{
    alerm += 1
    if (q < 120)
        q += 1
    xx = (name_x - (q / 3))
    if (global.language == "ja")
    {
        kana_count = 0
        for (i = 0; i < string_length(charname); i++)
        {
            if (ord(string_char_at(charname, i)) >= 12288)
                kana_count++
        }
        if (kana_count > 1)
            xx -= ((kana_count - 1) * (q / 10))
    }
    //Nope no names here
    //draw_text_transformed((xx + random((r * 2))), (((q / 2) + name_y) + random((r * 2))), (charname), (1 + (q / 50)), (1 + (q / 50)), random_ranger((((-r) * q) / 60), ((r * q) / 60)))
    if (alerm > 179)
    {
        instance_create(0, 0, obj_persistentfader)
        if (truereset > 0)
        {
            ossafe_ini_open("undertale" + ".ini")
            sk = ini_read_real("reset", "s_key", 0)
            Won = ini_read_real("General", "Won", 0)
            CP = ini_read_real("General", "CP", 0)
            CH = ini_read_real("General", "CH", 0)
            ossafe_ini_close()
            if ossafe_file_exists("undertale" + ".ini")
                ossafe_file_delete("undertale" + ".ini")
            ossafe_ini_open("undertale" + ".ini")
            ini_write_real("reset", "reset", 1)
            if (sk != 0)
                ini_write_real("reset", "s_key", sk)
            if (Won != 0)
                ini_write_real("General", "BW", Won)
            if (CP != 0)
                ini_write_real("General", "BP", CP)
            if (CH != 0)
                ini_write_real("General", "BH", CH)
            ossafe_ini_close()
        }
        audio_stop_sound(mus_cymbal)
        global.flag[5] = (floor(random(100)) + 1)
        ossafe_ini_open(("undertale") + (".ini"))
        ini_write_real("General", "fun", global.flag[5])
        ossafe_ini_close()
        ossafe_savedata_save()
        with (obj_time)
            time = 0
        if scr_hardmodename(charname)
            global.flag[6] = true
        room_goto(room_area1)
    }
}

if (naming == 5)
{
    alerm += 1
    if (q < 120)
        q += 1
    xx = (name_x - (q / 3))
    if (global.language == "ja")
    {
        kana_count = 0
        for (i = 0; i < string_length(charname); i++)
        {
            if (ord(string_char_at(charname, i)) >= 12288)
                kana_count++
        }
        if (kana_count > 1)
            xx -= ((kana_count - 1) * (q / 10))
    }
    draw_text_transformed((xx + random((r * 2))), (((q / 2) + name_y) + random((r * 2))), (charname), (1 + (q / 50)), (1 + (q / 50)), random_ranger((((-r) * q) / 60), ((r * q) / 60)))
    if (alerm > 179)
    {
        instance_create(0, 0, obj_persistentfader)
        if (truereset > 0)
        {
            ossafe_ini_open("undertale" + ".ini")
            sk = ini_read_real("reset", "s_key", 0)
            Won = ini_read_real("General", "Won", 0)
            CP = ini_read_real("General", "CP", 0)
            CH = ini_read_real("General", "CH", 0)
            ossafe_ini_close()
            if ossafe_file_exists("undertale" + ".ini")
                ossafe_file_delete("undertale" + ".ini")
            ossafe_ini_open("undertale" + ".ini")
            ini_write_real("reset", "reset", 1)
            if (sk != 0)
                ini_write_real("reset", "s_key", sk)
            if (Won != 0)
                ini_write_real("General", "BW", Won)
            if (CP != 0)
                ini_write_real("General", "BP", CP)
            if (CH != 0)
                ini_write_real("General", "BH", CH)
            ossafe_ini_close()
        }
        audio_stop_sound(mus_cymbal)
        global.flag[5] = (floor(random(100)) + 1)
        ossafe_ini_open(("undertale") + (".ini"))
        ini_write_real("General", "fun", global.flag[5])
        ossafe_ini_close()
        ossafe_savedata_save()
        with (obj_time)
            time = 0
        if scr_hardmodename(charname)
            global.flag[6] = true
        room_goto(room_area1)
    }
}
if (naming == 3)
{
    iniread = ossafe_ini_open("undertale" + ".ini")
    if (ini_section_exists("General") && hasname == 1)
    {
        minutes = floor((time / 1800))
        seconds = round((((time / 1800) - minutes) * 60))
        if (seconds == 60)
            seconds = 0
        if (seconds < 10)
            seconds = ("0" + string(seconds))
        roomname = scr_roomname(roome)
        lvtext = scr_gettext("save_menu_lv", string(love))
        timetext = scr_gettext("save_menu_time", string(minutes), string(seconds))
        namesize = string_width((substr(name, 1, 6)))
        lvsize = string_width((lvtext))
        timesize = string_width((timetext))
        x_center = 160
        lvpos = round((((x_center + (namesize / 2)) - (timesize / 2)) - (lvsize / 2)))
        namepos = 70
        timepos = 250
        if (global.language == "ja")
        {
            namepos -= 6
            timepos += 6
        }
        draw_text(namepos + random(r) * 2, 62 + random(r) * 2, (name))
        draw_text(lvpos + random(r) * 2, 62 + random(r) * 2, (lvtext))
        draw_text((timepos - timesize + random(r) * 2), 62 + random(r) * 2, (timetext))
        if (global.language == "ja")
            scr_drawtext_centered(x_center + random(r) * 2, 80 + random(r) * 2, roomname)
        else
            draw_text(namepos + random(r) * 2, 80 + random(r) * 2, (roomname))
        if (selected3 == 0)
            draw_set_color(c_yellow)
        continue_text = scr_gettext("load_menu_continue")
        draw_text(continue_x + random(r) * 2, 105 + random(r) * 2, (continue_text))
        draw_set_color(c_white)
        draw_set_color(c_white)
        if (selected3 == 2)
            draw_set_color(c_yellow)
        scr_drawtext_centered(160 + random(r) * 2, 125 + random(r) * 2, scr_gettext("settings_name"))
        draw_set_color(c_white)
        if (selected3 == 1)
            draw_set_color(c_yellow)
        if (truereset == 0)
            reset_text = scr_gettext("load_menu_reset")
        else
            reset_text = scr_gettext("load_menu_truereset")
        draw_text(reset_x + random(r) * 2, 105 + random(r) * 2, (reset_text))
        if (keyboard_check_pressed(vk_right) || keyboard_check_pressed(vk_left))
        {
            if (selected3 == 0)
                selected3 = 1
            else if (selected3 == 1)
                selected3 = 0
            keyboard_clear(vk_left)
            keyboard_clear(vk_right)
        }
        if keyboard_check_pressed(vk_down)
        {
            if (selected3 == 0 || selected3 == 1)
                selected3 = 2
            keyboard_clear(vk_down)
        }
        if keyboard_check_pressed(vk_up)
        {
            if (selected3 == 2)
                selected3 = 0
            keyboard_clear(vk_down)
        }
        action = -1
        if control_check_pressed(0)
            action = selected3
        if (action == 0)
        {
            audio_stop_all()
            if (ossafe_file_exists("file8") == 0)
                room_goto(room_area1)
            else
                scr_load()
        }
        if (action == 1)
        {
            if (hasname == 0 || scr_hardmodename(global.charname) || truereset > 0)
            {
                //naming = 1 // This didn't do what I want either
                naming = 4
            }
            else
            {
                charname = global.charname
                //naming = 2 //Originally present, and later modified to skip name confirmation.
                //naming = 4
                cloverskip = 1
                alerm = 0
                r = 0.5
                q = 0
            }
            control_clear(0)
        }
        if (action == 2)
        {
            audio_stop_all()
            room_goto(room_settings)
        }
    }
    else
    {
        draw_set_color(c_silver)
        draw_text(85, 20, (scr_gettext("instructions_title")))
        if (global.osflavor >= 4)
        {
            scr_drawtext_icons(85, 50, "\\*Z")
            draw_text(115, 50, (scr_gettext("instructions_confirm_label")))
            scr_drawtext_icons(85, 70, "\\*X")
            draw_text(115, 70, (scr_gettext("instructions_cancel_label")))
            scr_drawtext_icons(85, 90, "\\*C")
            draw_text(115, 90, (scr_gettext("instructions_menu_label")))
            draw_text(86, 130, (scr_gettext("instructions_hp0")))
        }
        else
        {
            lines[0] = "confirm"
            lines[1] = "cancel"
            lines[2] = "menu"
            lines[3] = "fullscreen"
            lines[4] = "quit"
            num_lines = 5
            if (global.language == "ja")
            {
                label_x = 0
                for (i = 0; i < num_lines; i++)
                {
                    key = scr_gettext((("instructions_" + lines[i]) + "_key"))
                    draw_text(50, (45 + (i * 18)), (key))
                    xx = ((50 + string_width((key))) + 20)
                    if (xx > label_x)
                        label_x = xx
                }
                for (i = 0; i < num_lines; i++)
                {
                    label = scr_gettext((("instructions_" + lines[i]) + "_label"))
                    draw_text(label_x, (45 + (i * 18)), (label))
                }
                draw_text(50, 145, (scr_gettext("instructions_hp0")))
            }
            else
            {
                for (i = 0; i < num_lines; i++)
                {
                    key = scr_gettext((("instructions_" + lines[i]) + "_key"))
                    label = scr_gettext((("instructions_" + lines[i]) + "_label"))
                    draw_text(85, (50 + (i * 18)), (((key + " - ") + label)))
                }
                draw_text(85, 140, (scr_gettext("instructions_hp0")))
            }
        }
        xx = 85
        if (global.language == "ja")
        {
            xx = 84
        }
        yy = 160
        if global.osflavor <= 2
        {
            yy += 12
        }
        draw_set_color(c_white)
        if (selected3 == 0)
            draw_set_color(c_yellow)
        draw_text(xx, yy, (scr_gettext("instructions_begin")))
        if keyboard_check_pressed(vk_down)
        {
            if (selected3 == 0)
                selected3 = 1
        }
        if keyboard_check_pressed(vk_up)
        {
            if (selected3 == 1)
                selected3 = 0
        }
        yy2 = (yy + 20)
        draw_set_color(c_white)
        if (selected3 == 1)
            draw_set_color(c_yellow)
        draw_text(xx, yy2, (scr_gettext("settings_name")))
        action = -1
        if control_check_pressed(0)
            action = selected3
        if (action == 0)
        {
            //naming = 1
            naming = 4
            control_clear(1)
        }
        if (action == 1)
        {
            audio_stop_all()
            room_goto(room_settings)
        }
    }
}
        //I sure hope this remains visible during the game transit!
    if naming > 3
    {
        draw_set_color(c_silver)
        draw_text(85 + random(r) * 2, 20 + random(r) * 2, (scr_gettext("instructions_title")))
        if (global.osflavor >= 4)
        {
            scr_drawtext_icons(85 + random(r) * 2, 50 + random(r) * 2, "\\*Z")
            draw_text(115 + random(r) * 2, 50 + random(r) * 2, (scr_gettext("instructions_confirm_label")))
            scr_drawtext_icons(85 + random(r) * 2, 70 + random(r) * 2, "\\*X")
            draw_text(115 + random(r) * 2, 70 + random(r) * 2, (scr_gettext("instructions_cancel_label")))
            scr_drawtext_icons(85 + random(r) * 2, 90 + random(r) * 2, "\\*C")
            draw_text(115 + random(r) * 2, 90 + random(r) * 2, (scr_gettext("instructions_menu_label")))
            draw_text(86 + random(r) * 2, 130 + random(r) * 2, (scr_gettext("instructions_hp0")))
        }
        else
        {
            lines[0] = "confirm"
            lines[1] = "cancel"
            lines[2] = "menu"
            lines[3] = "fullscreen"
            lines[4] = "quit"
            num_lines = 5
            if (global.language == "ja")
            {
                label_x = 0
                for (i = 0; i < num_lines; i++)
                {
                    key = scr_gettext((("instructions_" + lines[i]) + "_key"))
                    draw_text(50 + random(r) * 2, (45 + (i * 18) + random(r) * 2), (key))
                    xx = ((50 + string_width((key))) + 20)
                    if (xx > label_x)
                        label_x = xx
                }
                for (i = 0; i < num_lines; i++)
                {
                    label = scr_gettext((("instructions_" + lines[i]) + "_label"))
                    draw_text(label_x + random(r) * 2, (45 + (i * 18) + random(r) * 2), (label))
                }
                draw_text(50 + random(r) * 2, 145 + random(r) * 2, (scr_gettext("instructions_hp0")))
            }
            else
            {
                for (i = 0; i < num_lines; i++)
                {
                    key = scr_gettext((("instructions_" + lines[i]) + "_key"))
                    label = scr_gettext((("instructions_" + lines[i]) + "_label"))
                    draw_text(85 + random(r) * 2, (50 + (i * 18) + random(r) * 2), (((key + " - ") + label)))
                }
                draw_text(85 + random(r) * 2, 140 + random(r) * 2, (scr_gettext("instructions_hp0")))
            }
        }
        xx = 85
        if (global.language == "ja")
        {
            xx = 84
        }
        yy = 160
        if global.osflavor <= 2
        {
            yy += 12
        }
        draw_set_color(c_white)
    }

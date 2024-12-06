switch argument0
{
    case 3008:
        global.msg[0] = scr_gettext("SCR_TEXT_YELLOW_1") // * Ah! Hello.
        global.msg[1] = scr_gettext("SCR_TEXT_YELLOW_2") // * Are you all right?
        global.msg[2] = scr_gettext("SCR_TEXT_YELLOW_3") // * You must be wondering&  what is going on...
        global.msg[3] = scr_gettext("SCR_TEXT_YELLOW_4") // * I am TORIEL,^1 caretaker&  of the RUINS.
        global.msg[4] = scr_gettext("SCR_TEXT_YELLOW_5") // * I pass through here#  every day to see if#  anyone has fallen down.
        global.msg[5] = scr_gettext("SCR_TEXT_YELLOW_6") // * It does not happen&  often.
        global.msg[6] = scr_gettext("SCR_TEXT_YELLOW_7") // * You are the first to&  come here in a long&  time.
        global.msg[7] = scr_gettext("SCR_TEXT_YELLOW_8") // * Do not be afraid,^1 & little one."
        global.msg[8] = scr_gettext("SCR_TEXT_YELLOW_9") // * I will do my best to&  protect you here..
        global.msg[9] = scr_gettext("SCR_TEXT_YELLOW_10") // * Come!^2 I shall guide you&  through your new home."
        break
        
    case 3009:
        global.msg[0] = scr_gettext("SCR_TEXT_311") // \E2* The RUINS are full of&  puzzles./
        global.msg[1] = scr_gettext("SCR_TEXT_312") // * Ancient fusions between &  diversions and doorkeys./
        global.msg[2] = scr_gettext("SCR_TEXT_YELLOW_1") // * We are free to proceed& now./
        global.msg[3] = scr_gettext("SCR_TEXT_YELLOW_1") // * Follow me, my child.#* There are more puzzles#  ahead./
        break
        
    case 3030:
        {
            if (global.flag[111] == 0)
            {
            global.msg[0] = scr_gettext("SCR_TEXT_YELLOW_30") // * (A little pile of conveniently&  bullet shaped pebbles.)/
            global.msg[1] = scr_gettext("SCR_TEXT_YELLOW_31") // * (Take them?)& &         Take them     Leave them  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_YELLOW_32") //  
            }
            else
                global.msg[0] = scr_gettext("SCR_TEXT_1313") // * Nothing's here!!!/%%
            break
        }
    case 3031:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                script_execute(scr_itemget, 68)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_YELLOW_33") // * (Obtained Pebbles!)/%%
                global.flag[600] = 1
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_YELLOW_34") // * (Not enough space.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_YELLOW_35") // * (Pebbles are too dangerous.)/%%
        break
        
        //Monster Encounters YELLOW
    case 3100: //Flier Solo
        global.msg[0] = scr_gettext("SCR_BATTLE_INTROTEXT_YELLOW_1") // * Flier is giving fighting a try!
        global.msg[1] = scr_gettext("SCR_BATTLETEXT_YELLOW_1") // %%%
        break
    case 3101: //Flier Trio
        global.msg[0] = scr_gettext("SCR_BATTLE_INTROTEXT_YELLOW_2") // * You are overwhelmed by&  depressing vibes.
        global.msg[1] = scr_gettext("SCR_BATTLETEXT_YELLOW_1") // %%%
        break
}

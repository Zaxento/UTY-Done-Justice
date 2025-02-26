global.facechoice = 2;
if (global.flag[202] >= 20)
    global.msg[0] = scr_gettext("SCR_TEXT_134") // * Determination./%%
if (room == room_darkruins_03)
{
    if global.flowey_flag[0] = 2
    {
        if global.flowey_flag[1] = 3
        {
            global.msg[0] = scr_gettext("scr_text_floweysave1_34") // \E0* Don't you have anything&  better to do?/%%
        }
        else if global.flowey_flag[1] = 2
        {
            global.flowey_flag[1] = 3
            global.faceemotion = 0;
            global.msg[0] = scr_gettext("scr_text_floweysave1_31") // \E0* Just kidding!^2 You didn't think I'd do that again,^1 did you?/
            global.msg[1] = scr_gettext("scr_text_floweysave1_32") // \E2* Not THIS time, anyway./
            global.msg[2] = scr_gettext("scr_text_floweysave1_33") // \E0* I won't have any new material for you.&* So you'll get bored and do what I want anyways./%%
        }
        else if obj_savepoint.talkcount < 2 && global.flowey_flag[1] != 1
        {
            global.faceemotion = 8;
            global.msg[0] = scr_gettext("scr_text_floweysave1_25") // \E9* Well...^1 \E9I guess solving that puzzle counts?/
            global.msg[1] = scr_gettext("scr_text_floweysave1_26") // \E0* I'll give you an A for effort at least!/
            global.msg[2] = scr_gettext("scr_text_floweysave1_27") // \E0* How about doing a little more for your pal?/
            global.msg[3] = scr_gettext("scr_text_floweysave1_28") // \E2* I might think of more things to talk about, since you like hearing my voice so much./%%
        }
        else if obj_savepoint.talkcount = 2 && global.flowey_flag[1] != 1
        {
            global.flowey_flag[1] = 1
            global.faceemotion = 8;
            global.interact = 3
            global.msg[0] = scr_gettext("scr_text_floweysave1_29") // \E8* Again? Seems like you didn't learn from last time./
            global.msg[1] = scr_gettext("scr_text_floweysave1_30") // \E2* Well that's fine with me!^1 &/E0* See you later!/%%
        }
    }
    else
    {
        if obj_savepoint.talkcount < 2
        {
            global.faceemotion = 9;
            global.msg[0] = scr_gettext("scr_text_floweysave1_1") // \E9* Howdy!^2 &* Looks like you got&  it then!/%%
        }
        else if obj_savepoint.talkcount = 2
        {
            global.faceemotion = 0;
            global.msg[0] = scr_gettext("scr_text_floweysave1_2") // \E0* Why the long face, pal?/
            global.msg[1] = scr_gettext("scr_text_floweysave1_3") // \E0* Don't worry,^1 this place&  is way better than up&  there!/
            global.msg[2] = scr_gettext("scr_text_floweysave1_4") // \E9* That old lady would've&  just  spoiled all of&  our fun!/
            global.msg[3] = scr_gettext("scr_text_floweysave1_5") // \E0* Come on,^1 let's not stand&  around here all day!/%%
        }
        else if obj_savepoint.talkcount = 3
        {
            global.faceemotion = 8
            global.msg[0] = scr_gettext("scr_text_floweysave1_6") // \E8* I've already saved for you.../
            global.msg[1] = scr_gettext("scr_text_floweysave1_7") // \E9* Do you not trust me or&  something?/
            global.msg[2] = scr_gettext("scr_text_floweysave1_8") // \E0* Come on!^2 &* I'm your pal!/
            global.msg[3] = scr_gettext("scr_text_floweysave1_9") // \E0* I got your back!/%%
        }
        else if obj_savepoint.talkcount = 6 && (global.plot > 12 || global.flowey_flag[0] = 2)
        {
            global.faceemotion = 4
            global.msg[0] = scr_gettext("scr_text_floweysave1_11") // \E4* Really?^2 &* What is this about?/
            global.msg[1] = scr_gettext("scr_text_floweysave1_12") // * I told you already,^1 you&  don't need that stupid&  goat lady!/
            global.msg[2] = scr_gettext("scr_text_floweysave1_13") // * She couldn't have&  protected you anyway!/
            global.msg[3] = scr_gettext("scr_text_floweysave1_14") // \E0* You have me!^2 &* I'm way better!/
            global.msg[4] = scr_gettext("scr_text_floweysave1_15") // \E0* I'm your pal Flowey!/
            global.msg[5] = scr_gettext("scr_text_floweysave1_16") // \E0* I'm the only friend&  you'll ever need!/
            global.msg[6] = scr_gettext("scr_text_floweysave1_17") // \E0* Can Toriel save for you?^1 &* NO!/
            global.msg[7] = scr_gettext("scr_text_floweysave1_18") // \E9* So let's get out of&  here while we're&  still young!/%%
        }
        else if obj_savepoint.talkcount = 6 && global.plot < 13 && global.flowey_flag[0] < 2
        {
            global.faceemotion = 9
            global.flowey_flag[0] = 1
            global.msg[0] = scr_gettext("scr_text_floweysave1_19") // \E9* You're having an awful&  lot of fun with this.../
            global.msg[1] = scr_gettext("scr_text_floweysave1_20") // \E9* Making me go up and down&  for nothing./
            global.msg[2] = scr_gettext("scr_text_floweysave1_21") // \E8* I may be your friend...^2 &  But I've got limits too,^1  y'know?/
            global.msg[3] = scr_gettext("scr_text_floweysave1_22") // \E2* Guess I gotta put my&  roots down./
            global.msg[4] = scr_gettext("scr_text_floweysave1_23") // \E0* I'm not going to come&  out until you do&  something worth saving./
            global.msg[5] = scr_gettext("scr_text_floweysave1_24") // \E0* No slacking off now!/%%
        }
        else
        {
            global.faceemotion = 8
            global.msg[0] = scr_gettext("scr_text_floweysave1_10") // \E8* You should get going.../%%
        }
    }
}
if (room == room_darkruins_08)
{
}

global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (global.flag[286] == 0)
{
    global.msg[0] = scr_gettext("scr_torcall_7") // * (Noticed you received a&  text from Toriel.)/
    global.msg[1] = scr_gettext("scr_torcall_8") // * Dear Frisk,/
    global.msg[2] = scr_gettext("scr_torcall_9") // * Sans and Alphys are teaching&  me how to text^1.&* I am learning so much./
    global.msg[3] = scr_gettext("scr_torcall_10") // * For example:&* Do you know what a&  " + '"' + "smiley" + '"' + " is?/
    global.msg[4] = scr_gettext("scr_torcall_11") // * Please look at this:/
    global.msg[5] = scr_gettext("scr_torcall_12") //   ]: )/
    global.msg[6] = scr_gettext("scr_torcall_13") // * Now turn your head to the&  left./
    global.msg[7] = scr_gettext("scr_torcall_14") // * It is a picture of me&  smiling at you^1!&* Can you see it?/
    global.msg[8] = scr_gettext("scr_torcall_15") // * L-O-L^1!&* (That stands for Lots of&  Laughter.)/
    global.msg[9] = scr_gettext("scr_torcall_16") // * Sincerely^1, Toriel/
    global.msg[10] = scr_gettext("scr_torcall_17") // * (That's all for now.^1)&* (Maybe in the next room^1, you&  will receive another.)/%%
}
if (global.flag[286] == 1)
{
    global.msg[0] = scr_gettext("scr_torcall_22") // * (TORIEL sent you a message.)&* Dear Frisk,/
    global.msg[1] = scr_gettext("scr_torcall_23") // * How are you^1? You have been&  wandering around for&  quite some time now./
    global.msg[2] = scr_gettext("scr_torcall_24") // * I hope you are not getting&  into trouble./
    global.msg[3] = scr_gettext("scr_torcall_25") // * Only kidding^1.&* L-O-L!/
    global.msg[4] = scr_gettext("scr_torcall_26") // * Sincerly^1, Toriel/
    global.msg[5] = scr_gettext("scr_torcall_27") // * PS - Do not get into trouble./%%
}
if (global.flag[286] == 2)
{
    global.msg[0] = scr_gettext("scr_torcall_32") // * (TORIEL sent you a message.)&* Excuse me,/
    global.msg[1] = scr_gettext("scr_torcall_33") // * I did not mean to write&  " + '"' + "sincerly." + '"' + "&* I meant to say " + '"' + "sincerely." + '"' + "/
    global.msg[2] = scr_gettext("scr_torcall_34") // * It is difficult to use this&  with large hands./
    global.msg[3] = scr_gettext("scr_torcall_35") // * Perhaps I should ask Sans&  to transcribe for me./%%
}
if (global.flag[286] == 3)
    global.msg[0] = scr_gettext("scr_torcall_40") // * (TORIEL sent you a message.^1)&* Sans will be typing from&  now on./%%
if (global.flag[286] == 4)
{
    global.msg[0] = scr_gettext("scr_torcall_45") // * (TORIEL sent you a message.)/
    global.msg[1] = scr_gettext("scr_torcall_46") // * hey frisk^1.&* it's torrrrrieellll/
    global.msg[2] = scr_gettext("scr_torcall_47") // * i just baked 1000000 pies.&* do you want any?/
    global.msg[3] = scr_gettext("scr_torcall_48") // * make sure to brush your&  teeth before crossing&  the street^1, frisk/%%
}
if (global.flag[286] == 5)
{
    global.msg[0] = scr_gettext("scr_torcall_53") // * (TORIEL sent you a message.)/
    global.msg[1] = scr_gettext("scr_torcall_54") // * I did not say any of that./%%
}
if (global.flag[286] == 6)
{
    global.msg[0] = scr_gettext("scr_torcall_59") // * (TORIEL sent you a message.)/
    global.msg[1] = scr_gettext("scr_torcall_60") // * Greetings^1.&* This is Sans^1.&* I love my brother very much./
    global.msg[2] = scr_gettext("scr_torcall_61") // * help im being slandered/%%
}
if (global.flag[286] == 7)
{
    global.msg[0] = scr_gettext("scr_torcall_66") // * (TORIEL sent you a message.)/
    global.msg[1] = scr_gettext("scr_torcall_67") // * This is Sans^1.&* Frisk^1, did you know that I&  love to " + '"' + "get owned?" + '"' + "/
    global.msg[2] = scr_gettext("scr_torcall_68") // * I also think Toriel is very&  good and fhfjkehfeaufsisf/
    global.msg[3] = scr_gettext("scr_torcall_69") // * Excuse me/
    global.msg[4] = scr_gettext("scr_torcall_70") // * ./%%
}
if (global.flag[286] == 8)
{
    global.msg[0] = scr_gettext("scr_torcall_75") // * (TORIEL sent you a message&  titled " + '"' + "Cat Video." + '"' + ")/
    global.msg[1] = scr_gettext("scr_torcall_76") // * (Inside^1, she meticulously&  describes a video she saw&  of a small^1, white animal.)/
    global.msg[2] = scr_gettext("scr_torcall_77") // * (There is no link or&  attachment to watch it.)/%%
}
if (global.flag[286] == 9)
{
    global.msg[0] = scr_gettext("scr_torcall_82") // * (TORIEL sent you a message.)/
    global.msg[1] = scr_gettext("scr_torcall_83") // * Fwd: send this 2 some1 u&  care about... or a skeleton&  will rattle his bones at u/%%
}
if (global.flag[286] == 10)
{
    global.msg[0] = scr_gettext("scr_torcall_88") // * (TORIEL sent you a message.)&* Dear Frisk,/
    global.msg[1] = scr_gettext("scr_torcall_89") // * Thought you might enjoy this^1.&* ]: )/
    global.msg[2] = scr_gettext("scr_torcall_90") // * (It's ASCII art of a snail.)/%%
}
if (global.flag[286] == 11)
{
    global.msg[0] = scr_gettext("scr_torcall_95") // * (TORIEL sent you a message.)&* Dear Frisk,/
    global.msg[1] = scr_gettext("scr_torcall_96") // * Undyne and Papyrus want to&  cook something together&  with me./
    global.msg[2] = scr_gettext("scr_torcall_97") // * Sans is telling me that they&  are excellent chefs./
    global.msg[3] = scr_gettext("scr_torcall_98") // * I am excited. ]: )&* Maybe if you are lucky^1, you&  can have some!/%%
}
if (global.flag[286] == 12)
{
    global.msg[0] = scr_gettext("scr_torcall_103") // * (TORIEL sent you a message.)&* Dear Frisk,/
    global.msg[1] = scr_gettext("scr_torcall_104") // * If Sans and I started a&  band^1, do you know what&  we could call it?/
    global.msg[2] = scr_gettext("scr_torcall_105") // * " + '"' + "Dreemurr" + '"' + " and " + '"' + "Femur.^1" + '"' + "&* L-O-L!/
    global.msg[3] = scr_gettext("scr_torcall_106") // * PS - That is only a joke^1.&* Do not refer to me as&  Dreemurr./%%
}
if (global.flag[286] == 13)
{
    global.msg[0] = scr_gettext("scr_torcall_111") // * (TORIEL sent you a message.)&* Dear Frisk,/
    global.msg[1] = scr_gettext("scr_torcall_112") // * Undyne is very strong./
    global.msg[2] = scr_gettext("scr_torcall_113") // * Papyrus made a bet with her&  that she could not lift&  everyone here up./
    global.msg[3] = scr_gettext("scr_torcall_114") // * She could./
    global.msg[4] = scr_gettext("scr_torcall_115") // * The only trouble is that&  she did not know how to&  put everyone down./%%
}
if (global.flag[286] == 14)
{
    global.msg[0] = scr_gettext("scr_torcall_120") // * (TORIEL sent you a message.)&* Dear Frisk,/
    global.msg[1] = scr_gettext("scr_torcall_121") // * Alphys is telling me many&  interesting facts about&  the human world./
    global.msg[2] = scr_gettext("scr_torcall_122") // * Quite a few of them are&  wrong^1, though./
    global.msg[3] = scr_gettext("scr_torcall_123") // * Frisk^1, you did not tell&  her anything funny^1, did you^1?&* ]: )/%%
}
if (global.flag[286] == 15)
{
    global.msg[0] = scr_gettext("scr_torcall_128") // * (TORIEL sent you a message.)&* Dear Frisk,/
    if (global.osflavor >= 4)
    {
        global.msg[1] = scr_gettext("scr_torcall_129_console") // * I heard that playing&  video games for too long&  is bad for you./
        global.msg[2] = scr_gettext("scr_torcall_130_console") // * However^1, I have not seen&  you playing video games&  at all./
    }
    else
    {
        global.msg[1] = scr_gettext("scr_torcall_129") // * I heard that using the&  computer for too long&  is bad for you./
        global.msg[2] = scr_gettext("scr_torcall_130") // * However^1, I have not seen&  you use the computer at all./
    }
    global.msg[3] = scr_gettext("scr_torcall_131") // * You must be very healthy^1!&* How nice./%%
}
if (global.flag[286] == 16)
{
    global.msg[0] = scr_gettext("scr_torcall_136") // * (TORIEL sent you a message.)&* Dear Frisk,/
    global.msg[1] = scr_gettext("scr_torcall_137") // * I think I may have to turn&  off the phone for now./
    global.msg[2] = scr_gettext("scr_torcall_138") // * Your friends are all very&  lovely people!/
    global.msg[3] = scr_gettext("scr_torcall_139") // * I think I will spend this&  time getting to know&  them better./
    global.msg[4] = scr_gettext("scr_torcall_140") // * Be good^1, alright?/
    global.msg[5] = scr_gettext("scr_torcall_141") // * Sincerely^1, Toriel./%%
}
if (global.flag[286] >= 17)
    global.msg[0] = scr_gettext("scr_torcall_144") // * (Toriel has not sent any&  more messages.)/%%
if (global.flag[286] == global.flag[287])
    global.msg[0] = scr_gettext("scr_torcall_146") // * (Toriel has not sent any&  more messages.)/%%
if (global.flag[286] < global.flag[287])
    global.flag[286] += 1

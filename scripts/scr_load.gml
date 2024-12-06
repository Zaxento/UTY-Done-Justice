filechoicebk = global.filechoice
room_set_persistent(global.currentroom, 0)
script_execute(SCR_GAMESTART)
global.filechoice = filechoicebk
//Modified this one.
file = ("file" + string(global.filechoice))
myfileid = ossafe_file_text_open_read(file)
global.charname = "Clover"
ossafe_file_text_readln(myfileid)
global.lv = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.maxhp = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.maxen = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.at = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.wstrength = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.df = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.adef = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.sp = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.xp = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.gold = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.kills = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
for (i = 0; i < 8; i += 1)
{
    global.item[i] = ossafe_file_text_read_real(myfileid)
    ossafe_file_text_readln(myfileid)
    global.phone[i] = ossafe_file_text_read_real(myfileid)
    ossafe_file_text_readln(myfileid)
}
global.weapon = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.armor = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
for (i = 0; i < 512; i += 1)
{
    global.flag[i] = ossafe_file_text_read_real(myfileid)
    ossafe_file_text_readln(myfileid)
}
global.plot = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
for (i = 0; i < 3; i += 1)
{
    global.menuchoice[i] = ossafe_file_text_read_real(myfileid)
    ossafe_file_text_readln(myfileid)
}
global.flag[94] = 0
global.currentsong = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.currentroom = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
obj_time.time = ossafe_file_text_read_real(myfileid)
ossafe_file_text_readln(myfileid)
global.lastsavedkills = global.kills
global.lastsavedtime = obj_time.time
global.lastsavedlv = global.lv
ossafe_file_text_close(myfileid)
global.hp = global.maxhp
global.en = global.maxen
script_execute(scr_tempsave)
if (global.currentroom < room_snowdin_martlets_house) //I forgor what this is for so uh here is the thingy
    global.area = 0
if (global.currentroom >= room_snowdin_martlets_house)
    global.area = 1
global.flag[360] = 0
global.flag[361] = 0
global.flag[362] = 0
global.flag[363] = 0
global.flag[364] = 0
scr_dogcheck()
if (dogcheck == 1)
    room_goto(global.currentroom)

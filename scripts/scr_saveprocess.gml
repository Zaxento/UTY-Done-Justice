global.lastsavedkills = global.kills
global.lastsavedtime = obj_time.time
global.lastsavedlv = global.lv
//Modified this one.
file = ("file" + string(global.filechoice))
myfileid = ossafe_file_text_open_write(file)
ossafe_file_text_write_string(myfileid, "Flowey")
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.lv)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.maxhp)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.maxen)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.at)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.wstrength)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.df)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.adef)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.sp)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.xp)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.gold)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.kills)
ossafe_file_text_writeln(myfileid)
for (i = 0; i < 8; i += 1)
{
    ossafe_file_text_write_real(myfileid, global.item[i])
    ossafe_file_text_writeln(myfileid)
    ossafe_file_text_write_real(myfileid, global.phone[i])
    ossafe_file_text_writeln(myfileid)
}
ossafe_file_text_write_real(myfileid, global.weapon)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.armor)
ossafe_file_text_writeln(myfileid)
for (i = 0; i < 512; i += 1)
{
    ossafe_file_text_write_real(myfileid, global.flag[i])
    ossafe_file_text_writeln(myfileid)
}
ossafe_file_text_write_real(myfileid, global.plot)
ossafe_file_text_writeln(myfileid)
for (i = 0; i < 3; i += 1)
{
    ossafe_file_text_write_real(myfileid, global.menuchoice[i])
    ossafe_file_text_writeln(myfileid)
}
ossafe_file_text_write_real(myfileid, global.currentsong)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, global.currentroom)
ossafe_file_text_writeln(myfileid)
ossafe_file_text_write_real(myfileid, obj_time.time)
ossafe_file_text_close(myfileid)
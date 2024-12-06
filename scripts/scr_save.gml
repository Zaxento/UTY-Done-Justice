script_execute(scr_saveprocess)
filechoicebk2 = global.filechoice
global.filechoice = 7 //The number would be 8 if the file numbers were gained in order of SAVE Users, though Flowey already takes 8 in UNDERTALE, and Frisk takes 9. Thus Clover takes what would have been theorized as Lemonbread's spot, going stupidly backwards as consequence of lore that was not well thought out. Trying to bend logic for UTY is a headache...
script_execute(scr_saveprocess)
global.filechoice = filechoicebk2
iniwrite = ossafe_ini_open("undertale" + ".ini")
ini_write_string("General", "Name", "Flowey")
ini_write_real("General", "Love", global.lv)
ini_write_real("General", "Time", obj_time.time)
ini_write_real("General", "Kills", global.kills)
ini_write_real("General", "Room", room_get_name(room))
ossafe_ini_close()
ossafe_savedata_save()

script_execute(scr_saveprocess);
filechoicebk2 = global.filechoice;
global.filechoice = 8;
script_execute(scr_saveprocess);
global.filechoice = filechoicebk2;
iniwrite = ossafe_ini_open("undertale.ini");
ini_write_string("General", "Name", "Flowey");
ini_write_real("General", "Love", global.lv);
ini_write_real("General", "Time", obj_time.time);
ini_write_real("General", "Kills", global.kills);
ini_write_real("General", "Room", room);
ossafe_ini_close();
ossafe_savedata_save();


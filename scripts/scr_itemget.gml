var bc;
i = 0
loop = 1
noroom = 0
global.item[8] = 999
while (loop == 1)
{
    if (global.item[i] == 0)
    {
        global.item[i] = argument0
        break
    }
    else if (i == 8)
    {
        noroom = 1
        break
    }
    else
    {
        i += 1
        continue
    }
}
ossafe_ini_open("undertale.ini")
bc = ini_read_real("General", "BC", 0)
if (bc < 4)
{
    bc++
    ini_write_real("General", "BC", bc)
    ossafe_ini_close()
    ossafe_savedata_save()
}
else
    ossafe_ini_close()
script_execute(scr_itemnameb)
script_execute(scr_itemname)

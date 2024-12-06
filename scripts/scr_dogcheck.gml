dogcheck = 1
if (global.currentroom <= room_of_dog)
    dogcheck = 0
if (global.currentroom >= room_shop1) //if (global.currentroom > room_icecave1)
    dogcheck = 0
if (global.currentroom == room_castle_trueexit)
    dogcheck = 0
if (global.currentroom == room_outsideworld)
    dogcheck = 0
if (global.currentroom == room_undertale_end)
    dogcheck = 0
if (dogcheck == 0)
    room_goto(room_of_dog)

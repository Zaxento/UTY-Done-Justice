//Actually the new one but not using it yet because I haven't been able to do that yet
var roomid, roomname;
if (argument0 == room_start)
    return scr_gettext("roomname_0"); // --
if (substr(argument0, 1, 5) == "room_")
{
    roomname = scr_gettext(("roomname_" + substr(argument0, 6)))
    if (roomname != "")
        return roomname;
}
return " ";

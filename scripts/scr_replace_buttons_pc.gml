var str;
str = argument0
if ((global.osflavor <= 2))
{
    str = string_replace_all(str, "\*Z", "[Z]")
    str = string_replace_all(str, "\*X", "[X]")
    str = string_replace_all(str, "\*C", "[C]")
    str = string_replace_all(str, "\*A", scr_gettext("key_left")) // [LEFT]
    str = string_replace_all(str, "\*D", scr_gettext("key_right")) // [RIGHT]
}
return str;

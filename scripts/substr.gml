var str, pos, len;
str = argument[0]
pos = argument[1]
if (pos < 0)
    pos = ((string_length(str) + 1) + pos)
if (argument_count == 2)
    len = ((string_length(str) - pos) + 1)
else
    len = argument[2]
if (len > 0)
    return string_copy(str, pos, len);
else
    return "";

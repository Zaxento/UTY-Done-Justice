var handle, line;
if (global.osflavor <= 2)
    return file_text_read_string(argument0);
else
{
    handle = argument0
    if ds_map_find_value(handle, "line_read")
        return "";
    line = ds_map_find_value(handle, "line")
    if (line >= ds_map_find_value(handle, "num_lines"))
        return "";
    ds_map_set(handle, "line_read", 1)
    text = ds_map_find_value(handle, "text")
    return text[line];
}

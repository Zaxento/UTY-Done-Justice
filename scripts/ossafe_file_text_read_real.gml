var handle, line;
if (global.osflavor <= 2)
    return file_text_read_real(argument0);
else
{
    handle = argument0
    if ds_map_find_value(handle, "line_read")
        return 0;
    line = ds_map_find_value(handle, "line")
    if (line >= ds_map_find_value(handle, "num_lines"))
        return 0;
    ds_map_set(handle, "line_read", 1)
    text = ds_map_find_value(handle, "text")
    return real(text[line]);
}

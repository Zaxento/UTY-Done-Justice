var handle;
if (global.osflavor <= 2)
    return file_text_close(argument0);
else
{
    handle = argument0
    if ds_map_find_value(handle, "is_write")
        ds_map_set(global.savedata, ds_map_find_value(handle, "filename"), ds_map_find_value(handle, "data"))
    ds_map_destroy(handle)
}

var name, file, data;
if (global.osflavor <= 2)
    ini_open(argument0)
else
{
    name = string_lower(argument0)
    global.current_ini = name
    file = ds_map_find_value(global.savedata, name)
    if is_undefined(file)
        data = ""
    else
        data = file
    ini_open_from_string(data)
}


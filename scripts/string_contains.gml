//function string_contains(argument0, argument1)
{
    var contains, firstcheck, secondcheck;
    
    contains = false;
    firstcheck = false;
    secondcheck = false;
    if (argument_count > 2)
    {
        if (argument[2] == true)
        {
            argument0 = string_lower(argument0);
            argument1 = string_lower(argument1);
        }
    }
    /*firstcheck = string_starts_with(argument0, argument1);
    secondcheck = string_ends_with(argument0, argument1); <------- this sucks
    contains = firstcheck || secondcheck;*/
    
    firstcheck = string_replace(argument0, argument1, "");
    
    contains = firstcheck != argument0;
    
    
    return contains;
}

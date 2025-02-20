// setup

var letters = "";

for (var i = 1; i < string_length(argument1) + 1; i++)
{
    letters[i] = string_char_at(argument1, i);
}


var str = "";

for (var i = argument2; i < array_length_1d(letters); i++)
{
    str += letters[i]; // get only part of the string that's important.
}

//show_message(str);

// actual script


var result = string_pos(argument0, str);

var finalresult = result + argument2 - 1;

if (result = 0)
    finalresult = 0;

return finalresult;

/*if result
{
    if (result >= argument2)
        return result;
    else return 0;
}
else
    return 0;
    


//Argument0 is the base steps
//Argument1 adds a random factor to the steps
//Argument2 is the population of the room, used to make encounters more infrequent as you kill them and eventually don't appear all together.
//Argument3 is the flag that will be compared to Argument2. Typically the kill count of the area. If it is the same or higher than population, bye bye Monsters.

global.flag[200] = argument3
if ((argument2 - global.flag[argument3]) > 0)
{
    populationfactor = (argument2 / (argument2 - global.flag[argument3]))
    if (populationfactor > 8)
        populationfactor = 8
    steps = ((argument0 + round(random(argument1))) * populationfactor)
}
else
{
    if (alldead == 0 || alldead == 1)
        steps = 20
    else
        steps = ((argument0 + round((argument1 / 2))) * 5)
    if (alldead == 0)
        alldead = 1
}

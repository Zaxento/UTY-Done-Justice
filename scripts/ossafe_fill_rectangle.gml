var x1, y1, x2, y2, temp;
x1 = argument0
y1 = argument1
x2 = argument2
y2 = argument3
if (x1 > x2)
{
    temp = x1
    x1 = x2
    x2 = temp
}
if (y1 > y2)
{
    temp = y1
    y1 = y2
    y2 = temp
}
if (os_type == os_ps4 || os_type == os_psvita)
{
    x2++
    y2++
}
draw_rectangle(x1, y1, x2, y2, false)

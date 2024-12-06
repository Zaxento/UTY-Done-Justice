var gold_str, item_str;
gold_str = (string(global.gold) + "G")
scr_itemroom()
item_str = (string(itemhold) + "/8")
if (global.language == "ja")
{
    draw_text(235, 210, gold_str)
    draw_text(286, 210, item_str)
}
else
{
    draw_text(230, 210, gold_str)
    draw_text(280, 210, item_str)
}


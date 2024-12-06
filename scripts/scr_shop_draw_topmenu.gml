var murder, menu_x, text_x, heart_y;
murder = argument0
menu_x = (scr_shop_divider_pos() + 15)
text_x = (menu_x + 15)
if murder
{
    draw_text(text_x, 130, scr_gettext("shop_take")) // Take
    draw_text(text_x, 150, scr_gettext("shop_steal")) // Steal
    draw_text(text_x, 170, scr_gettext("shop_read")) // Read
}
else
{
    draw_text(text_x, 130, scr_gettext("shop_buy")) // Buy
    draw_text(text_x, 150, scr_gettext("shop_sell")) // Sell
    draw_text(text_x, 170, scr_gettext("shop_talk")) // Talk
}
draw_text(text_x, 190, scr_gettext("shop_exit")) // Exit
heart_y = 134
if (global.language == "ja")
    heart_y -= 2
draw_sprite(spr_heartsmall, 0, menu_x, (heart_y + (menuc[0] * 20)))


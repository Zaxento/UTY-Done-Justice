var menu_x, text_x, heart_y;
menu_x = 15
text_x = (menu_x + 15)
draw_text(text_x, 210, scr_gettext("shop_exit_submenu")) // Exit
heart_y = 134
if (global.language == "ja")
    heart_y -= 2
draw_sprite(spr_heartsmall, 0, menu_x, (heart_y + (menuc[3] * 20)))


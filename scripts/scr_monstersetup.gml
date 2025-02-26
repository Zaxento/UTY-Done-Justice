myself = 0
if (global.monster[1] == true)
{
    myself = 2
    global.monster[2] = true
}
if (global.monster[0] == true && myself != 2)
{
    myself = 1
    global.monster[1] = true
}
if (global.monster[0] == false)
{
    myself = 0
    global.monster[0] = true
}
if (global.monstertype[myself] == 1)
{
    global.monstername[myself] = scr_gettext("monstername_1") // TestFroggit
    global.monstermaxhp[myself] = 23
    global.monsterhp[myself] = 23
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 1
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 2)
{
    global.monstername[myself] = scr_gettext("monstername_2") // Dummy
    global.monstermaxhp[myself] = 15
    global.monsterhp[myself] = 15
    global.monsteratk[myself] = 0
    global.monsterdef[myself] = -5
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 3)
{
    global.monstername[myself] = scr_gettext("monstername_3") // Froggit
    global.monstermaxhp[myself] = 20
    global.monsterhp[myself] = 20
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 1
    global.xpreward[myself] = 10
    global.goldreward[myself] = 20
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 4)
{
    global.monstername[myself] = scr_gettext("monstername_4") // Froggit
    global.monstermaxhp[myself] = 30
    global.monsterhp[myself] = 30
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 3
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 5)
{
    global.monstername[myself] = scr_gettext("monstername_5") // Whimsun
    global.monstermaxhp[myself] = 10
    global.monsterhp[myself] = 10
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 6)
{
    global.monstername[myself] = scr_gettext("monstername_6") // Moldsmal
    global.monstermaxhp[myself] = 50
    global.monsterhp[myself] = 50
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 3
    global.goldreward[myself] = 3
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 7)
{
    global.monstername[myself] = scr_gettext("monstername_7") // Migosp
    global.monstermaxhp[myself] = 40
    global.monsterhp[myself] = 40
    global.monsteratk[myself] = 5
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 5
    global.goldreward[myself] = 4
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 8)
{
    global.monstername[myself] = scr_gettext("monstername_8") // Vegetoid
    global.monstermaxhp[myself] = 72
    global.monsterhp[myself] = 72
    global.monsteratk[myself] = 5
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 6
    global.goldreward[myself] = 1
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 9)
{
    global.monstername[myself] = scr_gettext("monstername_9") // Loox
    global.monstermaxhp[myself] = 50
    global.monsterhp[myself] = 50
    global.monsteratk[myself] = 5
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 7
    global.goldreward[myself] = 5
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 10)
{
    global.monstername[myself] = scr_gettext("monstername_10") // Toriel
    global.monstermaxhp[myself] = 440
    global.monsterhp[myself] = 440
    global.monsteratk[myself] = 6
    if (global.flag[6] == 1)
        global.monsteratk[myself] = 8
    global.monsterdef[myself] = 1
    if (scr_murderlv() >= 1)
        global.monsterdef[myself] = -9999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 11)
{
    global.monstername[myself] = scr_gettext("monstername_11") // Napstablook
    global.monstermaxhp[myself] = 88
    global.monsterhp[myself] = 88
    global.monsteratk[myself] = 5
    global.monsterdef[myself] = 4
    global.xpreward[myself] = -1
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 12)
{
    global.monstername[myself] = scr_gettext("monstername_12") // Moldsmal
    global.monstermaxhp[myself] = 50
    global.monsterhp[myself] = 50
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 3
    global.goldreward[myself] = 3
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 13)
{
    global.monstername[myself] = scr_gettext("monstername_13") // Doggo
    global.monstermaxhp[myself] = 70
    global.monsterhp[myself] = 70
    global.monsteratk[myself] = 6
    global.monsterdef[myself] = 1
    global.xpreward[myself] = 30
    global.goldreward[myself] = 20
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 14)
{
    global.monstername[myself] = scr_gettext("monstername_14") // Lesser Dog
    global.monstermaxhp[myself] = 60
    global.monsterhp[myself] = 60
    global.monsteratk[myself] = 6
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 18
    global.goldreward[myself] = 15
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 15)
{
    global.monstername[myself] = scr_gettext("monstername_15") // Dogamy
    global.monstermaxhp[myself] = 108
    global.monsterhp[myself] = 108
    global.monsteratk[myself] = 6
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 30
    global.goldreward[myself] = 25
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 16)
{
    global.monstername[myself] = scr_gettext("monstername_16") // Dogaressa
    global.monstermaxhp[myself] = 108
    global.monsterhp[myself] = 108
    global.monsteratk[myself] = 6
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 30
    global.goldreward[myself] = 25
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 17)
{
    global.monstername[myself] = scr_gettext("monstername_17") // Greater Dog
    global.monstermaxhp[myself] = 105
    global.monsterhp[myself] = 105
    global.monsteratk[myself] = 6
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 80
    global.goldreward[myself] = 60
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 18)
{
    global.monstername[myself] = scr_gettext("monstername_18") // Snowdrake
    if (global.flag[57] == 2)
        global.monstername[myself] = scr_gettext("monstername_18b") // Chilldrake
    global.monstermaxhp[myself] = 74
    global.monsterhp[myself] = 74
    global.monsteratk[myself] = 6
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 22
    global.goldreward[myself] = 18
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 19)
{
    global.monstername[myself] = scr_gettext("monstername_19") // Ice Cap
    global.monstermaxhp[myself] = 48
    global.monsterhp[myself] = 48
    global.monsteratk[myself] = 6
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 17
    global.goldreward[myself] = 17
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 20)
{
    global.monstername[myself] = scr_gettext("monstername_20") // Ice
    global.monstermaxhp[myself] = 48
    global.monsterhp[myself] = 48
    global.monsteratk[myself] = 0
    global.monsterdef[myself] = -100
    global.xpreward[myself] = 25
    global.goldreward[myself] = 40
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 21)
{
    global.monstername[myself] = scr_gettext("monstername_21") // Jerry
    global.monstermaxhp[myself] = 80
    global.monsterhp[myself] = 80
    global.monsteratk[myself] = 1
    global.monsterdef[myself] = 8
    global.xpreward[myself] = 1
    global.goldreward[myself] = 55
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 22)
{
    global.monstername[myself] = scr_gettext("monstername_22") // Gyftrot
    global.monstermaxhp[myself] = 114
    global.monsterhp[myself] = 114
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 3
    global.xpreward[myself] = 35
    global.goldreward[myself] = 30
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 23)
{
    global.monstername[myself] = scr_gettext("monstername_23") // Aaron
    global.monstermaxhp[myself] = 98
    global.monsterhp[myself] = 98
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 52
    global.goldreward[myself] = 25
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 24)
{
    global.monstername[myself] = scr_gettext("monstername_24") // Temmie
    global.monstermaxhp[myself] = 5
    global.monsterhp[myself] = 5
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = -20
    global.xpreward[myself] = 40
    global.goldreward[myself] = 50
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 25)
{
    global.monstername[myself] = scr_gettext("monstername_25") // Papyrus
    global.monstermaxhp[myself] = 680
    global.monsterhp[myself] = 680
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 26)
{
    global.monstername[myself] = scr_gettext("monstername_26") // Moldsmal
    global.monstermaxhp[myself] = 70
    global.monsterhp[myself] = 70
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 46
    global.goldreward[myself] = 30
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 28)
{
    global.monstername[myself] = scr_gettext("monstername_28") // Woshua
    global.monstermaxhp[myself] = 70
    global.monsterhp[myself] = 70
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 1
    global.xpreward[myself] = 52
    global.goldreward[myself] = 25
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 29)
{
    global.monstername[myself] = scr_gettext("monstername_29") // Shyren
    global.monstermaxhp[myself] = 66
    global.monsterhp[myself] = 66
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 52
    global.goldreward[myself] = 25
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 30)
{
    global.monstername[myself] = scr_gettext("monstername_30") // Agent
    global.monstermaxhp[myself] = 98
    global.monsterhp[myself] = 98
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 52
    global.goldreward[myself] = 20
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 31)
{
    global.monstername[myself] = scr_gettext("monstername_31") // Mad Dummy
    global.monstermaxhp[myself] = 200
    global.monsterhp[myself] = 200
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = -40
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 32)
{
    global.monstername[myself] = scr_gettext("monstername_32") // Undyne
    global.monstermaxhp[myself] = 1500
    global.monsterhp[myself] = 1500
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 33)
{
    global.monstername[myself] = scr_gettext("monstername_33") // Mettaton
    global.monstermaxhp[myself] = 9999
    global.monsterhp[myself] = 9999
    global.monsteratk[myself] = 10
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 34)
{
    global.monstername[myself] = scr_gettext("monstername_34") // RG 01
    global.monstermaxhp[myself] = 150
    global.monsterhp[myself] = 150
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 110
    global.goldreward[myself] = 60
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 35)
{
    global.monstername[myself] = scr_gettext("monstername_35") // RG 02
    global.monstermaxhp[myself] = 150
    global.monsterhp[myself] = 150
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 110
    global.goldreward[myself] = 60
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 36)
{
    global.monstername[myself] = scr_gettext("monstername_36") // Tsunderplane
    global.monstermaxhp[myself] = 80
    global.monsterhp[myself] = 80
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 6
    global.xpreward[myself] = 95
    global.goldreward[myself] = 45
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 37)
{
    global.monstername[myself] = scr_gettext("monstername_37") // Vulkin
    global.monstermaxhp[myself] = 20
    global.monsterhp[myself] = 20
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = -10
    global.xpreward[myself] = 70
    global.goldreward[myself] = 50
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 38)
{
    global.monstername[myself] = scr_gettext("monstername_38") // Pyrope
    global.monstermaxhp[myself] = 110
    global.monsterhp[myself] = 110
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 1
    global.xpreward[myself] = 80
    global.goldreward[myself] = 40
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 39)
{
    global.monstername[myself] = scr_gettext("monstername_39") // Muffet
    global.monstermaxhp[myself] = 1250
    global.monsterhp[myself] = 1250
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 300
    global.goldreward[myself] = global.flag[59]
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 40)
{
    global.monstername[myself] = scr_gettext("monstername_40") // Mettaton
    global.monstermaxhp[myself] = 9999
    global.monsterhp[myself] = 9999
    global.monsteratk[myself] = 10
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 41)
{
    global.monstername[myself] = scr_gettext("monstername_41") // Undyne
    global.monstermaxhp[myself] = 1500
    global.monsterhp[myself] = 1500
    global.monsteratk[myself] = 10
    global.monsterdef[myself] = 10
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 42)
{
    global.monstername[myself] = scr_gettext("monstername_42") // Madjick
    global.monstermaxhp[myself] = 190
    global.monsterhp[myself] = 190
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = -1
    global.xpreward[myself] = 150
    global.goldreward[myself] = 120
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 43)
{
    global.monstername[myself] = scr_gettext("monstername_43") // Knight Knight
    global.monstermaxhp[myself] = 230
    global.monsterhp[myself] = 230
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 180
    global.goldreward[myself] = 150
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 44)
{
    global.monstername[myself] = scr_gettext("monstername_44") // Final Froggit
    global.monstermaxhp[myself] = 100
    global.monsterhp[myself] = 100
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 120
    global.goldreward[myself] = 80
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 45)
{
    global.monstername[myself] = scr_gettext("monstername_45") // Astigmatism
    global.monstermaxhp[myself] = 120
    global.monsterhp[myself] = 120
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = -2
    global.xpreward[myself] = 130
    global.goldreward[myself] = 85
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 46)
{
    global.monstername[myself] = scr_gettext("monstername_46") // Whimsalot
    global.monstermaxhp[myself] = 95
    global.monsterhp[myself] = 95
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = -3
    global.xpreward[myself] = 110
    global.goldreward[myself] = 80
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 47)
{
    global.monstername[myself] = scr_gettext("monstername_47") // Bomb
    global.monstermaxhp[myself] = 99
    global.monsterhp[myself] = 99
    global.monsteratk[myself] = 1
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 48)
{
    global.monstername[myself] = scr_gettext("monstername_48") // RG 03
    global.monstermaxhp[myself] = 100
    global.monsterhp[myself] = 100
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 110
    global.goldreward[myself] = 60
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 49)
{
    global.monstername[myself] = scr_gettext("monstername_49") // RG 04
    global.monstermaxhp[myself] = 100
    global.monsterhp[myself] = 100
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 4
    global.xpreward[myself] = 110
    global.goldreward[myself] = 60
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 50)
{
    global.monstername[myself] = scr_gettext("monstername_50") // Mettaton
    global.monstermaxhp[myself] = 9999
    global.monsterhp[myself] = 9999
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 51)
{
    global.monstername[myself] = scr_gettext("monstername_51") // Mettaton EX
    global.monstermaxhp[myself] = 1600
    global.monsterhp[myself] = 1600
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 1
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 52)
{
    global.monstername[myself] = scr_gettext("monstername_52") // Asgore
    global.monstermaxhp[myself] = 3500
    global.monsterhp[myself] = 3500
    global.monsteratk[myself] = 10
    global.monsterdef[myself] = -30
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 53)
{
    global.monstername[myself] = scr_gettext("monstername_53") // Lemon Bread
    global.monstermaxhp[myself] = 100
    global.monsterhp[myself] = 100
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 9999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 54)
{
    global.monstername[myself] = scr_gettext("monstername_54") // ,
    global.monstermaxhp[myself] = 100
    global.monsterhp[myself] = 100
    global.monsteratk[myself] = 9
    global.monsterdef[myself] = 9999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 55)
{
    global.monstername[myself] = scr_gettext("monstername_55") // Amalgamate
    global.monstermaxhp[myself] = 400
    global.monsterhp[myself] = 400
    global.monsteratk[myself] = 0
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 56)
{
    global.monstername[myself] = scr_gettext("monstername_56") //      
    global.monstermaxhp[myself] = 100
    global.monsterhp[myself] = 100
    global.monsteratk[myself] = 9
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 57)
{
    global.monstername[myself] = scr_gettext("monstername_57") // Amalgamate
    global.monstermaxhp[myself] = 100
    global.monsterhp[myself] = 100
    global.monsteratk[myself] = 9
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 58)
{
    global.monstername[myself] = scr_gettext("monstername_58") // Lost Soul
    global.monstermaxhp[myself] = 999
    global.monsterhp[myself] = 999
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 59)
{
    global.monstername[myself] = scr_gettext("monstername_59") // Lost Soul
    global.monstermaxhp[myself] = 999
    global.monsterhp[myself] = 999
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 60)
{
    global.monstername[myself] = scr_gettext("monstername_60") // Lost Soul
    global.monstermaxhp[myself] = 999
    global.monsterhp[myself] = 999
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 61)
{
    global.monstername[myself] = scr_gettext("monstername_61") // Lost Soul
    global.monstermaxhp[myself] = 999
    global.monsterhp[myself] = 999
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 62)
{
    global.monstername[myself] = scr_gettext("monstername_62") // Lost Soul
    global.monstermaxhp[myself] = 999
    global.monsterhp[myself] = 999
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 63)
{
    global.monstername[myself] = scr_gettext("monstername_63") // Lost Soul
    global.monstermaxhp[myself] = 999
    global.monsterhp[myself] = 999
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 64)
{
    global.monstername[myself] = scr_gettext("monstername_64") // Monster Kid
    global.monstermaxhp[myself] = 10
    global.monsterhp[myself] = 10
    global.monsteratk[myself] = 1
    global.monsterdef[myself] = -900
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 65)
{
    global.monstername[myself] = scr_gettext("monstername_65") // Undyne the Undying
    global.monstermaxhp[myself] = 23000
    global.monsterhp[myself] = 23000
    global.monsteratk[myself] = 12
    global.monsterdef[myself] = 5
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 66)
{
    global.monstername[myself] = scr_gettext("monstername_66") // Glad Dummy
    global.monstermaxhp[myself] = 5
    global.monsterhp[myself] = 5
    global.monsteratk[myself] = 0
    global.monsterdef[myself] = -5
    global.xpreward[myself] = 200
    global.goldreward[myself] = 100
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 67)
{
    global.monstername[myself] = scr_gettext("monstername_67") // Mettaton NEO
    global.monstermaxhp[myself] = 30000
    global.monsterhp[myself] = 30000
    global.monsteratk[myself] = 10
    global.monsterdef[myself] = -40000
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 68)
{
    global.monstername[myself] = scr_gettext("monstername_68") // Sans
    global.monstermaxhp[myself] = 1
    global.monsterhp[myself] = 1
    global.monsteratk[myself] = 1
    global.monsterdef[myself] = 1
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 70)
{
    global.monstername[myself] = scr_gettext("monstername_70") // Final Froggit
    global.monstermaxhp[myself] = 32
    global.monsterhp[myself] = 32
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 4
    global.goldreward[myself] = 2
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 71)
{
    global.monstername[myself] = scr_gettext("monstername_71") // Astigmatism
    global.monstermaxhp[myself] = 50
    global.monsterhp[myself] = 50
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 8
    global.goldreward[myself] = 6
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 72)
{
    global.monstername[myself] = scr_gettext("monstername_72") // Whimsalot
    global.monstermaxhp[myself] = 20
    global.monsterhp[myself] = 20
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 0
    global.xpreward[myself] = 3
    global.goldreward[myself] = 4
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 73)
{
    global.monstername[myself] = scr_gettext("monstername_73") // Migospel
    global.monstermaxhp[myself] = 45
    global.monsterhp[myself] = 45
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = 3
    global.xpreward[myself] = 5
    global.goldreward[myself] = 4
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 74)
{
    global.monstername[myself] = scr_gettext("monstername_74") // Moldessa
    global.monstermaxhp[myself] = 52
    global.monsterhp[myself] = 52
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = -4
    global.xpreward[myself] = 5
    global.goldreward[myself] = 3
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 75)
{
    global.monstername[myself] = scr_gettext("monstername_75") // Parsnik
    global.monstermaxhp[myself] = 72
    global.monsterhp[myself] = 72
    global.monsteratk[myself] = 7
    global.monsterdef[myself] = -2
    global.xpreward[myself] = 8
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 76)
{
    global.monstername[myself] = scr_gettext("monstername_76") // Glyde
    global.monstermaxhp[myself] = 220
    global.monsterhp[myself] = 220
    global.monsteratk[myself] = 9
    global.monsterdef[myself] = -20
    global.xpreward[myself] = 100
    global.goldreward[myself] = 140
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 80)
{
    global.monstername[myself] = scr_gettext("monstername_80") // So Sorry
    global.monstermaxhp[myself] = 1100
    global.monsterhp[myself] = 1100
    global.monsteratk[myself] = 9
    global.monsterdef[myself] = -6
    global.xpreward[myself] = 1
    global.goldreward[myself] = 300
    global.itemrewardid = 1
    global.itemrewardchance = 50
}
if (global.monstertype[myself] == 81)
{
    global.monstername[myself] = scr_gettext("monstername_81") // Doodlebog
    global.monstermaxhp[myself] = 100
    global.monsterhp[myself] = 100
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 99)
{
    global.monstername[myself] = scr_gettext("monstername_99") // Asriel Dreemurr
    global.monstermaxhp[myself] = 9999
    global.monsterhp[myself] = 9999
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 9999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 100)
{
    global.monstername[myself] = scr_gettext("monstername_100") // Asriel
    global.monstermaxhp[myself] = 9999
    global.monsterhp[myself] = 9999
    global.monsteratk[myself] = 8
    global.monsterdef[myself] = 9999
    global.xpreward[myself] = 0
    global.goldreward[myself] = 0
    global.itemrewardid = 0
    global.itemrewardchance = 0
}
if (global.monstertype[myself] == 666)
{
    global.monstername[myself] = scr_gettext("monstername_666") // Gaster
    global.monstermaxhp[myself] = 666666
    global.monsterhp[myself] = 666666
    global.monsteratk[myself] = 66666
    global.monsterdef[myself] = 66666
    global.xpreward[myself] = -6666
    global.goldreward[myself] = -6666
    global.itemrewardid = 666
    global.itemrewardchance = 666
}

//UNDERTALE YELLOW MONSTER SETUP

if (global.monstertype[myself] == 101)
{
    global.monstername[myself] = scr_gettext("monstername_101") // Flier
    global.monstermaxhp[myself] = 25
    global.monsterhp[myself] = 30
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}

if (global.monstertype[myself] == 102)
{
    global.monstername[myself] = scr_gettext("monstername_102") // Penilla
    global.monstermaxhp[myself] = 25
    global.monsterhp[myself] = 30
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}

if (global.monstertype[myself] == 103)
{
    global.monstername[myself] = scr_gettext("monstername_103") // Sweet Corn
    global.monstermaxhp[myself] = 25
    global.monsterhp[myself] = 25
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}

if (global.monstertype[myself] == 104)
{
    global.monstername[myself] = scr_gettext("monstername_104") // Crispy Scroll
    global.monstermaxhp[myself] = 25
    global.monsterhp[myself] = 30
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}

if (global.monstertype[myself] == 105)
{
    global.monstername[myself] = scr_gettext("monstername_105") // Rorrim
    global.monstermaxhp[myself] = 25
    global.monsterhp[myself] = 30
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}

if (global.monstertype[myself] == 106)
{
    global.monstername[myself] = scr_gettext("monstername_106") // Decibat
    global.monstermaxhp[myself] = 25
    global.monsterhp[myself] = 30
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}

if (global.monstertype[myself] == 107)
{
    global.monstername[myself] = scr_gettext("monstername_107") // Dalv
    global.monstermaxhp[myself] = 200
    global.monsterhp[myself] = 200
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}

if (global.monstertype[myself] == 108)
{
    global.monstername[myself] = scr_gettext("monstername_108") // Micro Froggit
    global.monstermaxhp[myself] = 25
    global.monsterhp[myself] = 30
    global.monsteratk[myself] = 4
    global.monsterdef[myself] = 2
    global.xpreward[myself] = 2
    global.goldreward[myself] = 2
    global.itemrewardid = 1
    global.itemrewardchance = 50
}

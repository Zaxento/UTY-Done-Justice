//This is all just so that I can get the Yellow-related Dialogues into a different script. This one is huge as it is.
//The placement here is tentative. If I find a more convenient place I may move this.
if argument0 > 3007 && argument0 != 9999
    {
    SCR_TEXT_YELLOW(argument0)
        exit
    }
if argument0 > 1100 && argument0 < 1501
    {
    SCR_ACTS_YELLOW(argument0)
    exit
    }

switch argument0
{
    case 0:
        break
    case 1:
        global.msg[0] = "\XLa, la.^3 &Time to wake&up and\R smell\X &the^4 pain./"
        global.msg[1] = "* Though^2.^4.^6.^8.&It's still a&little shaky./"
        global.msg[2] = "fhuehfuehfuehfuheufhe/%"
        global.msg[3] = "%%%"
        break
    case 2:
        global.msg[0] = "* TestMonster and its cohorts&draw near!"
        global.msg[1] = "%%%"
        break
    case 3:
        global.msg[0] = " "
        if (global.monster[0] == true)
        {
            with (global.monsterinstance[0])
                script_execute(scr_mercystandard)
            adder = "\W"
            if (global.monsterinstance[0].mercy < 0)
            {
                if (global.flag[22] == 0)
                    adder = "\Y"
                if (global.flag[22] == 2)
                    adder = "\p"
                //Wanders of Patents
                if (global.flag[22] == 3)
                    adder = "\L"
            }
            global.msg[0] = adder
            global.msg[0] += (scr_gettext("battle_name_header") + global.monstername[0]) //    * 
            if (global.monstertype[0] == global.monstertype[1] || global.monstertype[0] == global.monstertype[2])
                global.msg[0] += scr_gettext("battle_name_a") //  A
        }
        global.msg[0] += "\W &"
        if (global.monster[1] == true)
        {
            with (global.monsterinstance[1])
                script_execute(scr_mercystandard)
            if (global.monsterinstance[1].mercy < 0 && global.flag[22] == 0)
                global.msg[0] += "\Y"
            if (global.monsterinstance[1].mercy < 0 && global.flag[22] == 2)
                global.msg[0] += "\p"
            global.msg[0] += (scr_gettext("battle_name_header") + global.monstername[1]) //    * 
            if (global.monstertype[1] == global.monstertype[0])
                global.msg[0] += scr_gettext("battle_name_b") //  B
        }
        global.msg[0] += "\W &"
        if (global.monster[2] == true)
        {
            with (global.monsterinstance[2])
                script_execute(scr_mercystandard)
            if (global.monsterinstance[2].mercy < 0 && global.flag[22] == 0)
                global.msg[0] += "\Y"
            if (global.monsterinstance[2].mercy < 0 && global.flag[22] == 2)
                global.msg[0] += "\p"
            global.msg[0] += (scr_gettext("battle_name_header") + global.monstername[2]) //    * 
            if (global.monstertype[2] == global.monstertype[1])
                global.msg[0] += scr_gettext("battle_name_c") //  C
        }
        global.msg[1] = "%%%"
        break
    case 7:
        global.msg[0] = ""
        for (i = 0; i < 3; i += 1)
        {
            if (global.monster[i] == true)
            {
                with (global.monsterinstance[i])
                    script_execute(scr_mercystandard)
                if (global.monsterinstance[i].mercy < 0 && global.flag[22] == 0)
                    global.msg[0] = "\Y"
                if (global.monsterinstance[i].mercy < 0 && global.flag[22] == 2)
                    global.msg[0] = "\p"
                //patents
                if (global.monsterinstance[i].mercy < 0 && global.flag[22] == 3)
                    global.msg[0] += "\L"
            }
        }
        global.msg[0] += scr_gettext("battle_mercy_spare") //    * Spare
        if (global.mercy == 0)
            global.msg[0] += (" &\W" + scr_gettext("battle_mercy_flee")) //    * Flee
        break
    case 9:
        global.msg[0] = (scr_gettext("item_menub_header") + global.itemnameb[0]) //    * 
        if (global.item[1] != 0)
            global.msg[0] += (scr_gettext("item_menub_header") + global.itemnameb[1]) //    * 
        global.msg[0] += "&"
        if (global.item[2] != 0)
            global.msg[0] += (scr_gettext("item_menub_header") + global.itemnameb[2]) //    * 
        if (global.item[3] != 0)
            global.msg[0] += (scr_gettext("item_menub_header") + global.itemnameb[3]) //    * 
        global.msg[0] += ("&" + scr_gettext("item_menub_page1")) //                      PAGE 1
        global.msg[1] = "%%%"
        break
    case 10:
        global.msg[0] = (scr_gettext("item_menub_header") + global.itemnameb[4]) //    * 
        if (global.item[5] != 0)
            global.msg[0] += (scr_gettext("item_menub_header") + global.itemnameb[5]) //    * 
        global.msg[0] += "&"
        if (global.item[6] != 0)
            global.msg[0] += (scr_gettext("item_menub_header") + global.itemnameb[6]) //    * 
        if (global.item[7] != 0)
            global.msg[0] += (scr_gettext("item_menub_header") + global.itemnameb[7]) //    * 
        global.msg[0] += ("&" + scr_gettext("item_menub_page2")) //                      PAGE 2
        global.msg[1] = "%%%"
        break
    case 11:
        global.msg[0] += " &"
        if (global.item[8] < 99)
            global.msg[0] += scr_gettext("recover_hp", string(global.item[8]))
        else
            global.msg[0] += scr_gettext("recover_hp_max") // * Your HP was maxed out./%
        break
    case 12:
        i = round(random(18))
        if (i == 0)
            global.msg[0] = scr_gettext("SCR_TEXT_99") // * You bid a quiet farewell&  to the \[I].
        if (i == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_100") // * You put the \[I]&  on the ground and gave it a&  little pat.
        if (i == 2)
            global.msg[0] = scr_gettext("SCR_TEXT_102") // * You threw the \[I]&  on the ground like the piece&  of trash it is.
        if (i == 3)
            global.msg[0] = scr_gettext("SCR_TEXT_103") // * You abandoned the &  \[I].
        if (i > 3)
            global.msg[0] = scr_gettext("SCR_TEXT_104") // * The \[I] was&  thrown away.
        global.msg[0] += "/%"
        break
    case 14:
        i = round(random(20))
        if (i == 0 || i == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_111") //    * I'm outta here.
        if (i == 2)
            global.msg[0] = scr_gettext("SCR_TEXT_112") //    * I've got better to do.
        if (i > 3)
            global.msg[0] = scr_gettext("SCR_TEXT_113") //    * Escaped...
        if (i == 3)
            global.msg[0] = scr_gettext("SCR_TEXT_114") //    * Don't slow me down.
        if (global.xpreward[3] > 0 || global.goldreward[3] > 0)
            global.msg[0] = scr_gettext("SCR_TEXT_121", string(global.xpreward[3]), string(global.goldreward[3]))
        break
    case 15:
        if (global.flag[202] >= 20)
            global.msg[0] = scr_gettext("SCR_TEXT_134") // * Determination./%%
        if (room == room_darkruins_03)
        {
            //if global.hp < global.maxhp
            //{
            //    global.msg[0] = scr_gettext("scr_text_floweysave1_1") // * (The smell of cobwebs fills&  the air...)/
            //}
            global.msg[0] = scr_gettext("scr_text_floweysave1_1") // \E9* Howdy!^2 &* Looks like you got&  it then!/%%
        }
        break
    case 16:
        i = round(random(14))
        script_execute(scr_itemname)
        if (i <= 12)
            global.msg[0] = scr_gettext("item_box_store1", global.itemname[global.menucoord[6]])
        if (i > 12)
            global.msg[0] = scr_gettext("item_box_store2", global.itemname[global.menucoord[6]])
        if (i > 13)
            global.msg[0] = scr_gettext("item_box_store3", global.itemname[global.menucoord[6]])
        global.msg[0] += "/%"
        break
    case 17:
        i = round(random(14))
        script_execute(scr_storagename, 300)
        if (i <= 12)
            global.msg[0] = scr_gettext("item_box_take1", global.itemname[global.menucoord[6]])
        if (i > 12)
            global.msg[0] = scr_gettext("item_box_take2", global.itemname[global.menucoord[6]])
        if (i > 13)
            global.msg[0] = scr_gettext("item_box_take3", global.itemname[global.menucoord[6]])
        global.msg[0] += "/%"
        break
    case 18:
        global.msg[0] = scr_gettext("item_full_inventory") // * You can't carry any more./%%
        break
    case 19:
        global.msg[0] = scr_gettext("item_full_box") // * The box is full./%%
        break
    case 23:
        global.msg[0] = scr_gettext("SCR_TEXT_242") // * You leave the Quiche on the&  ground and tell it you'll&  be right back./%%
        break
    case 30:
        global.msg[0] = scr_gettext("SCR_TEXT_246") // * Use the box?& &         Yes         No      \C 
        global.msg[1] = scr_gettext("SCR_TEXT_247") //  
        global.msg[2] = scr_gettext("SCR_TEXT_248") //  
        break
    case 31:
        if (global.choice == 0)
        {
            if (global.item[0] != 0 || global.flag[300] != 0)
            {
                if (instance_exists(obj_itemswapper) == 0)
                    instance_create(0, 0, obj_itemswapper)
                global.msg[0] = scr_gettext("SCR_TEXT_270") //   %%
            }
            else
            {
                gx = floor(random(3))
                if (gx == 0)
                    global.msg[0] = scr_gettext("SCR_TEXT_275") // * You have no items^1.&* You put a little time into&  the box./%%
                if (gx == 1)
                    global.msg[0] = scr_gettext("SCR_TEXT_276") // * You have no items^1.&* You put a little effort&  into the box./%%
                if (gx == 2)
                    global.msg[0] = scr_gettext("SCR_TEXT_277") // * You have no items^1.&* You put a little feeling&  into the box./%%
            }
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_282") //   %%
        break
    case 231:
        script_execute(scr_cost, 15)
        if (global.choice == 0)
        {
            if (afford == 1)
            {
                if (doak == 0)
                {
                    doak = 1
                    script_execute(scr_itemget, 17)
                    if (noroom == 0)
                    {
                        global.gold -= 15
                        global.flag[60] += 15
                    }
                }
            }
        }
        if (noroom == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_682") // * Here you go^1!&* Have a super-duper day^1!&* (You got the Nice Cream.)/%%
            if (afford == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_684") // * Huh^1?&* You don't have enough&  money.../
                global.msg[1] = scr_gettext("SCR_TEXT_685") // * I wish I could make&  Nice Cream for free.../%%
            }
        }
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_688") // * It looks like you're&  holding too much stuff^1!&* Oh well!/%%
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_691") // * Well then..^1.&* Tell your friends.../
            global.msg[1] = scr_gettext("SCR_TEXT_692") // * There's ice cream..^1.&* Out in the middle of&  the woods.../%%
        }
        break
    case 246:
        if (global.flag[104] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1024") // * (There's a lone quiche&  sitting underneath&  this bench.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1025") // * (Will you take it?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1026") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1029") // * It's just a bench./%%
        break
    case 247:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                script_execute(scr_itemget, 23)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1045") // * (You got the Abandoned&  Quiche.)/%%
                global.flag[104] = 1
            }
            if (noroom == 1)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1048") // * (You're carrying too much.)/
                global.msg[1] = scr_gettext("SCR_TEXT_1049") // * (You aren't ready for the&  responsibility.)/%%
            }
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1053") // * (The quiche was left all&  alone...)/%%
        break
    case 248:
        if (global.flag[105] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1060") // * (There's a tutu lying on&  the ground here.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1061") // * (Will you take it?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1062") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1065") // * Nothing's here!!!/%%
        break
    case 249:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                script_execute(scr_itemget, 24)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1081") // * (You got the Old Tutu.)/%%
                global.flag[105] = 1
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1084") // * (You're carrying too much.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1088") //  %%
        break
    case 252:
        if (global.flag[106] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1139") // * (It's a pair of ballet shoes.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1140") // * (Will you take it?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1141") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1144") // * Nothing's here!!!/%%
        break
    case 253:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                script_execute(scr_itemget, 25)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1160") // * (You got the Ballet Shoes.)/%%
                global.flag[106] = 1
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1163") // * (You're carrying too much.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1167") //  %%
        break
    case 258:
        if (global.flag[109] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1237") // * (The fridge is filled with&  instant noodles and soda.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1238") // * (Take a package of noodles?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1239") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1242") // * (The fridge is filled with&  instant noodles and soda.)/%%
        break
    case 259:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                script_execute(scr_itemget, 36)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1258") // * (You got the Instant Noodles.)/%%
                global.flag[109] = 1
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1261") // * (You're carrying too much.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1265") // * (You decide to stay healthy.)/%%
        break
    case 260:
        if (global.flag[110] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1273") // * (There's a frypan lying on&  the ground.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1274") // * (Will you take it?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1275") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1278") // * Nothing's here!!!/%%
        break
    case 261:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                script_execute(scr_itemget, 47)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1294") // * (You got the Burnt Pan.)/%%
                global.flag[110] = 1
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1297") // * (You're carrying too much.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1301") //  %%
        break
    case 262:
        if (global.flag[111] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1308") // * (There's an apron lying on&  the ground.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1309") // * (Will you take it?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1310") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1313") // * Nothing's here!!!/%%
        break
    case 263:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                script_execute(scr_itemget, 46)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1329") // * (You got the Stained Apron.)/%%
                global.flag[111] = 1
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1332") // * (You're carrying too much.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1336") //  %%
        break
    case 264:
        if (global.flag[112] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1343") // * (There's a Glamburger inside&  the trash can.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1344") // * (Will you take it?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1345") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1348") // * (It's an empty trashcan.)/%%
        break
    case 265:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                script_execute(scr_itemget, 40)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1363") // * (You got the Glamburger.)/%%
                global.flag[112] = 1
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1366") // * (You're carrying too much.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1370") //  %%
        break
    case 266:
        if (global.flag[113] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1378") // * (There's 100G inside&  the trash can.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1379") // * (Will you take it?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1380") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1383") // * (It's an empty trashcan.)/%%
        break
    case 267:
        if (global.choice == 0)
        {
            global.flag[113] = 1
            if (doak == 0)
                global.gold += 100
            doak = 1
            global.msg[0] = scr_gettext("SCR_TEXT_1393") // * (You got 100G.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1397") //  %%
        break
    case 268:
        if (global.flag[114] == 0)
        {
            if (scr_murderlv() < 16)
                global.msg[0] = scr_gettext("SCR_TEXT_1406") // * (There's a worn dagger&  inside the box.)/
            else
                global.msg[0] = scr_gettext("SCR_TEXT_1408") // * (Knife inside the box.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1409") // * (Will you take it?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1410") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1413") // * Nothing's here!!!/%%
        break
    case 269:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                if (scr_murderlv() >= 16)
                    scr_itemget(52)
                else
                    script_execute(scr_itemget, 51)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1431") // * (You got the Worn Dagger.)/%%
                if (scr_murderlv() >= 16)
                    global.msg[0] = scr_gettext("SCR_TEXT_1432") // * (You got the Real Knife.)/%%
                global.flag[114] = 1
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1435") // * (You're carrying too much.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1439") //  %%
        break
    case 270:
        if (global.flag[115] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1446") // * (There's a heart-shaped&  locket inside the box.)/
            global.msg[1] = scr_gettext("SCR_TEXT_1447") // * (Will you take it?)& &         Take it     Leave it  \C 
            global.msg[2] = scr_gettext("SCR_TEXT_1448") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1451") // * Nothing's here!!!/%%
        break
    case 271:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = -1
                doak = 1
                if (scr_murderlv() < 16)
                    script_execute(scr_itemget, 50)
                else
                    script_execute(scr_itemget, 53)
            }
            if (noroom == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_1470") // * (You got the Heart-shaped&  Locket.)/%%
                if (scr_murderlv() >= 16)
                    global.msg[0] = scr_gettext("SCR_TEXT_1471") // * (You got The Locket.)/%%
                global.flag[115] = 1
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1474") // * (You're carrying too much.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1478") //  %%
        break
    case 272:
        global.msg[0] = scr_gettext("SCR_TEXT_1483") // * (The box is empty.)/%%
        break
    case 273:
        doak = 0
        noroom = 0
        if (global.flag[250] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1492") // * Hello...&* Would you like some&  Nice Cream...?/
            global.msg[1] = scr_gettext("SCR_TEXT_1493") // * It's the frozen treat...&* That warms your heart./
            global.msg[2] = scr_gettext("SCR_TEXT_1494") // * Now only 12G!& &         Yes         No \C
            global.msg[3] = scr_gettext("SCR_TEXT_1495") //  
        }
        if (global.flag[250] >= 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1499") //  %
            global.msg[1] = scr_gettext("SCR_TEXT_1500") // * Nice Cream^1.&* It's the frozen treat^1.&* That warms your heart./
            global.msg[2] = scr_gettext("SCR_TEXT_1501") // * Now just 12G.& &         Yes         No \C
            global.msg[3] = scr_gettext("SCR_TEXT_1502") //  
        }
        break
    case 274:
        script_execute(scr_cost, 12)
        if (global.choice == 0)
        {
            if (afford == 1)
            {
                if (doak == 0)
                {
                    doak = 1
                    script_execute(scr_itemget, 17)
                    if (noroom == 0)
                    {
                        global.gold -= 12
                        global.flag[60] += 12
                    }
                }
            }
        }
        if (noroom == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1520") // * Here^1.&* (You got the Nice Cream.)/%%
            if (afford == 0)
                global.msg[0] = scr_gettext("SCR_TEXT_1522") // * You don't have enough&  money.../%%
        }
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1525") // * Drop something./%%
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1528") // * Well then..^1.&* Tell your friends.../
            global.msg[1] = scr_gettext("SCR_TEXT_1529") // * Life..^1. is suffering./%%
        }
        break
    case 500:
        global.msg[0] = scr_gettext("SCR_TEXT_1535") // * (Golden flowers.^1)&* (They must have&  broken your fall.)/%%
        global.msg[1] = scr_gettext("SCR_TEXT_1536") // %%%
        break
    case 501:
        global.msg[0] = scr_gettext("SCR_TEXT_1540") // * " + '"' + "Press \*Z to read signs!" + '"' + "/%%
        break
    case 502:
        global.msg[0] = scr_gettext("SCR_TEXT_1544") // * Just a regular old pillar./%%
        break
    case 514:
        doak = 0
        noroom = 0
        global.msg[0] = scr_gettext("SCR_TEXT_1705") // * Leave 7G in the web?& &         Yes         No \C
        global.msg[1] = scr_gettext("SCR_TEXT_1706") //  
        break
    case 515:
        script_execute(scr_cost, 7)
        if (global.choice == 0)
        {
            if (afford == 1)
            {
                if (doak == 0)
                {
                    doak = 1
                    script_execute(scr_itemget, 7)
                    if (noroom == 0)
                    {
                        global.gold -= 7
                        global.flag[59] += 7
                    }
                }
            }
        }
        if (noroom == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1723") // * Some spiders crawled down&  and gave you a donut./%%
            if (afford == 0)
                global.msg[0] = scr_gettext("SCR_TEXT_1724") // * You didn't have enough&  gold./%%
        }
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1726") // * You are carrying too&  many items./%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1729") // *%%
        break
    case 516:
        doak = 0
        noroom = 0
        global.msg[0] = scr_gettext("SCR_TEXT_1736") // * Leave 18G in the web?& &         Yes         No \C
        global.msg[1] = scr_gettext("SCR_TEXT_1737") //  
        break
    case 517:
        script_execute(scr_cost, 18)
        if (global.choice == 0)
        {
            if (afford == 1)
            {
                if (doak == 0)
                {
                    doak = 1
                    script_execute(scr_itemget, 10)
                    if (noroom == 0)
                    {
                        global.gold -= 18
                        global.flag[59] += 18
                    }
                }
            }
        }
        if (noroom == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1754") // * Some spiders crawled down&  and gave you a jug./%%
            if (afford == 0)
                global.msg[0] = scr_gettext("SCR_TEXT_1755") // * You didn't have enough&  gold./%%
        }
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1757") // * You are carrying too&  many items./%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1760") // *%%
        break
    case 518:
        if (doak == 0)
        {
            script_execute(scr_itemget, 12)
            if (noroom == 0)
                global.flag[100] = 1
            doak = 1
        }
        global.msg[0] = scr_gettext("SCR_TEXT_1771") // * You found a Faded Ribbon./%%
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1772") // * You are carrying too&  much./%%
        break
    case 523:
        if (doak == 0)
        {
            script_execute(scr_itemget, 13)
            if (noroom == 0)
                global.flag[102] = 1
            doak = 1
        }
        global.msg[0] = scr_gettext("SCR_TEXT_1817") // * You found the Toy Knife./%%
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1818") // * You are carrying too&  much./%%
        break
    case 667:
        global.msg[0] = scr_gettext("SCR_TEXT_3503") // Down here^1, LOVE is&shared through..^1./
        global.msg[1] = scr_gettext("SCR_TEXT_3504") // Little white..^2.\E1 &" + '"' + "friendliness&pellets." + '"' + "/
        global.msg[2] = scr_gettext("SCR_TEXT_3505") // \E2Are you ready\E0?/%
        break
    case 668:
        global.msg[0] = scr_gettext("SCR_TEXT_3509") // Move around^1!&Get as many as&you can^2!%%%
        global.msg[1] = scr_gettext("SCR_TEXT_3510") // %%%
        break
    case 669:
        global.msg[0] = scr_gettext("SCR_TEXT_3514") // You idiot./
        global.msg[1] = scr_gettext("SCR_TEXT_3515") // In this world^1, it's&kill or BE killed./
        global.msg[2] = scr_gettext("SCR_TEXT_3516") // Why would ANYONE pass&up an opportunity&like this!?/%
        break
    case 670:
        global.msg[0] = scr_gettext("SCR_TEXT_3520") // Die./%
        break
    case 671:
        global.msg[0] = scr_gettext("SCR_TEXT_3524") // Hey buddy^1,&you missed them./
        global.msg[1] = scr_gettext("SCR_TEXT_3525") // Let's try again^1,&okay?/%
        break
    case 672:
        global.msg[0] = scr_gettext("SCR_TEXT_3528") // Is this a joke^2?&Are you braindead^2?&RUN^2. INTO^2. THE^2.&BULLETS!!!
        break
    case 673:
        global.msg[0] = scr_gettext("SCR_TEXT_3531") // You know what's&going on here^1,&don't you?/
        global.msg[1] = scr_gettext("SCR_TEXT_3532") // You just wanted to&see me suffer./%
        break
    case 674:
        global.msg[0] = scr_gettext("SCR_TEXT_3535") // \E1What a terrible&creature^1, torturing&such a poor^1,&innocent youth.../
        global.msg[1] = scr_gettext("SCR_TEXT_3536") // \E2Ah, do not be&afraid^1, my child./
        global.msg[2] = scr_gettext("SCR_TEXT_3537") // \XI am \BTORIEL\X,&caretaker of&the \RRUINS\X./
        global.msg[3] = scr_gettext("SCR_TEXT_3538") // I pass through this&place every day to&see if anyone has&fallen down./
        global.msg[4] = scr_gettext("SCR_TEXT_3539") // You are the first&human to come here&in a long time./
        global.msg[5] = scr_gettext("SCR_TEXT_3540") // I will do my best&to ensure your&protection during&your time here./%%
        global.msg[5] = scr_gettext("SCR_TEXT_3541") // \E2Come^2!&I will guide you&through the&catacombs./%%
        global.msg[6] = scr_gettext("SCR_TEXT_3542") // %%%
        break
    case 680:
        global.msg[0] = scr_gettext("SCR_TEXT_3548") // * Three gold for the ferry.& &         Yes         No\C
        global.msg[1] = scr_gettext("SCR_TEXT_3549") //  
        break
    case 681:
        global.msg[0] = scr_gettext("SCR_TEXT_3553") // * Later^1, then./%%
        global.msg[1] = scr_gettext("SCR_TEXT_3554") //  
        if (global.choice == 0)
        {
            if (instance_exists(obj_purpledude) == 1)
                obj_purpledude.con = 1
            global.msg[0] = scr_gettext("SCR_TEXT_3559") // * Hop on!/%%
        }
        break
    case 744:
        doak = 0
        noroom = 0
        global.msg[0] = scr_gettext("SCR_TEXT_4415") // * Buy a Spider Cider for 9999G?& &         Yes         No \C
        global.msg[1] = scr_gettext("SCR_TEXT_4416") //  
        break
    case 745:
        script_execute(scr_cost, 9999)
        if (global.choice == 0)
        {
            if (afford == 1)
            {
                if (doak == 0)
                {
                    doak = 1
                    script_execute(scr_itemget, 10)
                    if (noroom == 0)
                    {
                        global.gold -= 9999
                        global.flag[59] += 9999
                        global.flag[403] = 1
                    }
                }
            }
        }
        if (noroom == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4433") // * Some spiders crawled down&  and gave you a jug./%%
            if (afford == 0)
                global.msg[0] = scr_gettext("SCR_TEXT_4434") // * You didn't have enough&  gold./%%
        }
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4436") // * You are carrying too&  many items./%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4439") // *%%
        break
    case 746:
        doak = 0
        noroom = 0
        global.msg[0] = scr_gettext("SCR_TEXT_4447") // * Buy a Spider Donut for 9999G?& &         Yes         No \C
        global.msg[1] = scr_gettext("SCR_TEXT_4448") //  
        break
    case 747:
        script_execute(scr_cost, 9999)
        if (global.choice == 0)
        {
            if (afford == 1)
            {
                if (doak == 0)
                {
                    doak = 1
                    script_execute(scr_itemget, 7)
                    if (noroom == 0)
                    {
                        global.gold -= 9999
                        global.flag[59] += 9999
                        global.flag[403] = 1
                    }
                }
            }
        }
        if (noroom == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4465") // * Some spiders crawled down&  and gave you a donut./%%
            if (afford == 0)
                global.msg[0] = scr_gettext("SCR_TEXT_4466") // * You didn't have enough&  gold./%%
        }
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4468") // * You are carrying too&  many items./%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4471") // *%%
        break
    case 748:
        global.msg[0] = scr_gettext("SCR_TEXT_4477") // * Ribbit^1, ribbit.&* (I have heard you are quite&  merciful^1, for a human...)/
        global.msg[1] = scr_gettext("SCR_TEXT_4478") // \W* (Surely you know by now a&  monster wears a \YYELLOW\W name&  when you can \YSPARE\W it.)/
        global.msg[2] = scr_gettext("SCR_TEXT_4479") // * (What do you think of that?)&         Very        It's&         Helpful     Bad\C
        global.msg[3] = scr_gettext("SCR_TEXT_4480") //  
        break
    case 749:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4486") // * (It is rather helpful.^1)&* (Remember^1, sparing is just&  saying you won't fight.)/
            global.msg[1] = scr_gettext("SCR_TEXT_4487") // * (Maybe one day^1, you'll&  have to do it even if&  their name isn't yellow.)/%%
        }
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4491") // * (Really^1? Then^1, I'll tell all&  of my friends to tell&  their friends' friends...)/
            global.msg[1] = scr_gettext("SCR_TEXT_4492") // * (Never use yellow names.)&* (How about that?)/
            global.msg[2] = scr_gettext("SCR_TEXT_4493") //          Keep        No more&         Yellow      Yellow&         Names       Names\C
            global.msg[3] = scr_gettext("SCR_TEXT_4494") //  
        }
        break
    case 750:
        if (global.choice == 0)
            global.msg[0] = scr_gettext("SCR_TEXT_4501") // * (OK^1, they will still&  use yellow names.)/%%
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4505") // * (OK^1, I will let them&  know not to use yellow&  names.)/%%
            global.flag[22] = 1
        }
        break
    case 751:
        global.msg[0] = scr_gettext("SCR_TEXT_4511") // * Ribbit^1, ribbit^1.&* (How are you doing without&  yellow names?)/
        global.msg[1] = scr_gettext("SCR_TEXT_4512") //                      Bring &         It's        Them&         great       Back\C
        global.msg[2] = scr_gettext("SCR_TEXT_4513") //  
        break
    case 752:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4519") // * (Glad to hear it.^1)&* (Though^1, I do not know why&  you dislike yellow.)/
            global.msg[1] = scr_gettext("SCR_TEXT_4520") // * (You had better hope you do&  not encounter a banana-themed&  monster.)/%%
        }
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4524") // * (Huh^1? It's rather inconvenient&  that you changed your mind&  like this.)/
            global.msg[1] = scr_gettext("SCR_TEXT_4525") // * (Since I told everyone&  not to use yellow names^1,&  everyone threw theirs out.)/
            global.msg[2] = scr_gettext("SCR_TEXT_4526") // * (This is really troubling...^1)&* (Hmmm...)/
            global.msg[2] = scr_gettext("SCR_TEXT_4527") // \W* (Well^1, last year it was&  fashionable to have \ppink\W &  names.)/
            global.msg[3] = scr_gettext("SCR_TEXT_4528") // * (I think everyone still&  has those in their closets&  somewhere...)/
            global.msg[4] = scr_gettext("SCR_TEXT_4529") // * (I'll ask everyone to look.^1)&* (But this is the last time!)/%%
            global.flag[22] = 2
        }
        break
    case 753:
        global.msg[0] = scr_gettext("SCR_TEXT_4535") // * Ribbit^1, ribbit...&* (I hope you're satisfied.)/%%
        break
    case 770:
        global.msg[0] = scr_gettext("SCR_TEXT_4662") // * Tra la la^1.&* I am the riverman./
        global.msg[1] = scr_gettext("SCR_TEXT_4663") // * Or am I the riverwoman...^1?&* It doesn't really matter./
        global.msg[2] = scr_gettext("SCR_TEXT_4664") // * I love to ride in my boat^1.&* Would you care to join me?/
        global.msg[3] = scr_gettext("SCR_TEXT_4665") // * (Ride in the boat?)& &         Yes         No\C
        global.msg[4] = scr_gettext("SCR_TEXT_4666") //  
        if (global.flag[460] > 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4669") // * Tra la la^1.&* Care for a ride?/
            global.msg[1] = scr_gettext("SCR_TEXT_4670") // * (Ride in the boat?)& &         Yes         No\C
            global.msg[2] = scr_gettext("SCR_TEXT_4671") //  
        }
        break
    case 771:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4678") // * Where will we go today?& &         Error       Error\C
            if (room == room_fire_dock)
                global.msg[0] = scr_gettext("SCR_TEXT_4680") // * Where will we go today?& &         Snowdin     Waterfall\C
            if (room == room_water_dock)
                global.msg[0] = scr_gettext("SCR_TEXT_4682") // * Where will we go today?& &         Snowdin     Hotland\C
            if (room == room_tundra_dock)
                global.msg[0] = scr_gettext("SCR_TEXT_4684") // * Where will we go today?& &         Waterfall   Hotland\C
            global.msg[1] = scr_gettext("SCR_TEXT_4686") //  
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4691") // * Then perhaps another time^1.&* Or perhaps not^1.&* It doesn't really matter./%%
        break
    case 772:
        if (global.choice == 0)
        {
            if (room == room_fire_dock || room == room_water_dock)
                global.flag[459] = 1
            if (room == room_tundra_dock)
                global.flag[459] = 2
        }
        if (global.choice == 1)
        {
            if (room == room_tundra_dock || room == room_water_dock)
                global.flag[459] = 3
            if (room == room_fire_dock)
                global.flag[459] = 2
        }
        if instance_exists(obj_dogboat_thing)
            obj_dogboat_thing.con = 0.1
        global.msg[0] = scr_gettext("SCR_TEXT_4713") // * Then we're off.../%%
        break
    case 1001:
        global.msg[0] = scr_gettext("SCR_TEXT_5937") //    * Check         * Compliment&   * Threat
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1002:
        global.msg[0] = scr_gettext("SCR_TEXT_5948") //    * Check         * Talk
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1003:
        global.msg[0] = scr_gettext("SCR_TEXT_5959") //    * Check         * Compliment&   * Threat
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1004:
        global.msg[0] = scr_gettext("SCR_TEXT_5970") //    * Check         * Compliment&   * Threat
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1005:
        global.msg[0] = scr_gettext("SCR_TEXT_5981") //    * Check         * Console&   * Terrorize
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1006:
        global.msg[0] = scr_gettext("SCR_TEXT_5991") //    * Check         * Imitate&   * Flirt
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1007:
        global.msg[0] = scr_gettext("SCR_TEXT_6001") //    * Check         * Talk
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1008:
        global.msg[0] = scr_gettext("SCR_TEXT_6011") //    * Check         * Talk&   * Devour        * Dinner
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1009:
        global.msg[0] = scr_gettext("SCR_TEXT_6021") //    * Check         * Pick On&   * Don't Pick On
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1010:
        global.msg[0] = scr_gettext("SCR_TEXT_6031") //    * Check         * Talk
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1011:
        global.msg[0] = scr_gettext("SCR_TEXT_6041") //    * Check         * Flirt&   * Threat        * Cheer
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1012:
        global.msg[0] = scr_gettext("SCR_TEXT_6051") //    * Check         * Imitate&   * Flirt
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1013:
        global.msg[0] = scr_gettext("SCR_TEXT_6061") //    * Check         * Pet
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1014:
        global.msg[0] = scr_gettext("SCR_TEXT_6071") //    * Check         * Pet&   * Pet           * Pet  &   * Pet           * Pet  
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 1
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 1
        break
    case 1015:
        global.msg[0] = scr_gettext("SCR_TEXT_6081") //    * Check         * Pet&   * Re-sniff      * Roll Around
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1016:
        global.msg[0] = scr_gettext("SCR_TEXT_6091") //    * Check         * Pet&   * Re-sniff      * Roll Around
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1017:
        global.msg[0] = scr_gettext("SCR_TEXT_6101") //    * Check         * Pet&   * Beckon        * Play &   * Ignore
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 1
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1018:
        if (global.flag[57] == 2)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_6114") //    * Check         * Agree&   * Clash         * Joke
            global.choices[0] = 1
            global.choices[1] = 1
            global.choices[2] = 0
            global.choices[3] = 1
            global.choices[4] = 1
            global.choices[5] = 0
        }
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_6124") //    * Check         * Laugh&   * Heckle        * Joke
            global.choices[0] = 1
            global.choices[1] = 1
            global.choices[2] = 0
            global.choices[3] = 1
            global.choices[4] = 1
            global.choices[5] = 0
        }
        break
    case 1019:
        global.msg[0] = scr_gettext("SCR_TEXT_6135") //    * Check         * Compliment&   * Ignore        * Steal
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1020:
        global.msg[0] = scr_gettext("SCR_TEXT_6145") //    * Check         * Compliment
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1021:
        global.msg[0] = scr_gettext("SCR_TEXT_6155") //    * Check         * Ditch
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1022:
        global.msg[0] = scr_gettext("SCR_TEXT_6165") //    * Check         * Decorate&   * Undecorate    * Gift
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1023:
        global.msg[0] = scr_gettext("SCR_TEXT_6175") //    * Check         * Flex&   * Shoo
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1024:
        global.msg[0] = scr_gettext("SCR_TEXT_6185") //    * Check         * Flex&   * Feed Temmie   * Talk&     Flakes  
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1025:
        global.msg[0] = scr_gettext("SCR_TEXT_6196") //    * Check         * Flirt&   * Insult
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        if (scr_murderlv() >= 7)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_6206") //    * Check
            global.choices[0] = 1
            global.choices[1] = 0
            global.choices[2] = 0
            global.choices[3] = 0
            global.choices[4] = 0
            global.choices[5] = 0
        }
        break
    case 1026:
        if instance_exists(obj_moldsmalx)
        {
            if (obj_moldsmalx.stage == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_6221") //    * Check         * Imitate&   * Flirt
                global.choices[0] = 1
                global.choices[1] = 1
                global.choices[2] = 0
                global.choices[3] = 1
                global.choices[4] = 0
                global.choices[5] = 0
            }
            else if (global.flag[74] == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_6234") //    * Check         * Lie Down&   * Hug           * Unhug
                global.choices[0] = 1
                global.choices[1] = 1
                global.choices[2] = 0
                global.choices[3] = 1
                global.choices[4] = 1
                global.choices[5] = 0
            }
            else
            {
                global.msg[0] = scr_gettext("SCR_TEXT_6244") //    * Check         * Lie Down&   * Hug           * Unhug
                global.choices[0] = 1
                global.choices[1] = 1
                global.choices[2] = 0
                global.choices[3] = 1
                global.choices[4] = 1
                global.choices[5] = 0
            }
        }
        break
    case 1028:
        global.msg[0] = scr_gettext("SCR_TEXT_6259") //    * Check         * Clean&   * Touch         * Joke
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1029:
        global.msg[0] = scr_gettext("SCR_TEXT_6269") //    * Check         * Smile&   * Hum           * Conduct
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1031:
        global.msg[0] = scr_gettext("SCR_TEXT_6279") //    * Check         * Talk
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1032:
        global.msg[0] = scr_gettext("SCR_TEXT_6289") //    * Check         * Plead&   * Challenge
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        if instance_exists(obj_undyneboss)
        {
            if (obj_undyneboss.con >= 50)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_6300") //    * Check
                global.choices[0] = 1
                global.choices[1] = 0
                global.choices[2] = 0
                global.choices[3] = 0
                global.choices[4] = 0
                global.choices[5] = 0
            }
        }
        break
    case 1033:
        global.msg[0] = scr_gettext("SCR_TEXT_6313") //    * Check         * Cry
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1034:
        global.msg[0] = scr_gettext("SCR_TEXT_6323") //    * Check         * Whisper&   * Clean Armor
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1035:
        global.msg[0] = scr_gettext("SCR_TEXT_6333") //    * Check         * Whisper&   * Clean Armor
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1036:
        global.msg[0] = scr_gettext("SCR_TEXT_6343") //    * Check         * Flirt&   * Approach
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1037:
        global.msg[0] = scr_gettext("SCR_TEXT_6353") //    * Check         * Criticize&   * Encourage     * Hug
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1038:
        global.msg[0] = scr_gettext("SCR_TEXT_6363") //    * Check         * Cool Down&   * Heat Up       * Invite
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1039:
        cashfactor = "NaN"
        global.msg[0] = scr_gettext("SCR_TEXT_6374", string(global.flag[382]))
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1040:
        global.msg[0] = scr_gettext("SCR_TEXT_6384") //    * Check         * Yell
        if (global.flag[385] > 0)
            global.msg[0] = scr_gettext("SCR_TEXT_6387") // \W   * Check         \Y* Yellow \W
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1041:
        global.msg[0] = scr_gettext("SCR_TEXT_6398") //    * Check         * Fake Attack
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1042:
        global.msg[0] = scr_gettext("SCR_TEXT_6408") //    * Check         * Talk     &   * Stare         * Clear Mind
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1043:
        global.msg[0] = scr_gettext("SCR_TEXT_6418") //    * Check         * Talk     &   * Sing
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1044:
        global.msg[0] = scr_gettext("SCR_TEXT_6428") //    * Check         * Compliment&   * Threaten      * Mystify
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1045:
        global.msg[0] = scr_gettext("SCR_TEXT_6438") //    * Check         * Pick On&   * Don't Pick    * Challenge&     On
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1046:
        global.msg[0] = scr_gettext("SCR_TEXT_6449") //    * Check         * Console&   * Terrorize     * Pray
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1047:
        global.msg[0] = scr_gettext("SCR_TEXT_6460") //    * Check         * Defuse Bomb
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1048:
        global.msg[0] = scr_gettext("SCR_TEXT_6470") //    * Check         * Whisper&   * Touch Glove
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1049:
        global.msg[0] = scr_gettext("SCR_TEXT_6480") //    * Check         * Whisper&   * Touch Glove
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1050:
        global.msg[0] = scr_gettext("SCR_TEXT_6490") //    * Check         * Burn
        if (global.flag[424] > 0)
            global.msg[0] = scr_gettext("SCR_TEXT_6493") // \W   * Check         \Y* Turn \W
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1051:
        global.msg[0] = scr_gettext("SCR_TEXT_6504") //    * Check         * Boast&   * Pose          * Heel Turn
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1052:
        global.msg[0] = scr_gettext("SCR_TEXT_6514") //    * Check         * Talk
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1053:
        global.msg[0] = scr_gettext("SCR_TEXT_6524") //    * Call          * Hum&   * Scream        * Flex&   * Unhug         * Cry
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 1
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 1
        break
    case 1054:
        global.msg[0] = scr_gettext("SCR_TEXT_6534") //    * Check         * Pick On&   * Mystify       * Clean&   * Hum           * Pray
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 1
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 1
        break
    case 1055:
        global.msg[0] = scr_gettext("SCR_TEXT_6544") //    * Check         * Laugh&   * Heckle        * Joke
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1056:
        global.msg[0] = scr_gettext("SCR_TEXT_6554") //    * Check         * ITEM &   * STAT          * CELL
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        if instance_exists(obj_memoryhead)
        {
            if (obj_memoryhead.coherent == 1)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_6565") //    * Check         * Join&   * Refuse
                global.choices[0] = 1
                global.choices[1] = 1
                global.choices[2] = 0
                global.choices[3] = 1
                global.choices[4] = 0
                global.choices[5] = 0
            }
        }
        break
    case 1057:
        global.msg[0] = scr_gettext("SCR_TEXT_6579") //    * Check         * Pet&   * Beckon        * Play &   * Ignore
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 1
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1058:
        global.msg[0] = scr_gettext("SCR_TEXT_6589") //    * Fake Hit      * Recipe&   * Smile         * Clash
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1059:
        global.msg[0] = scr_gettext("SCR_TEXT_6599") //    * Encourage     * Call  &   * Nerd Out      * Quiz
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1060:
        global.msg[0] = scr_gettext("SCR_TEXT_6609") //    * Joke          * Puzzle &   * Recipe        * Insult
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1061:
        global.msg[0] = scr_gettext("SCR_TEXT_6619") //    * Take break    * Joke   &   * Judgment      * Crossword
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1062:
        global.msg[0] = scr_gettext("SCR_TEXT_6629") //    * Talk          * Mercy  &   * Hug           * Preference
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1063:
        global.msg[0] = scr_gettext("SCR_TEXT_6639") //    * Talk          * Mercy  &   * Stare         * Hug
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1064:
        global.msg[0] = scr_gettext("SCR_TEXT_6649") //    * Check
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 0
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1065:
        global.msg[0] = scr_gettext("SCR_TEXT_6659") //    * Check
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 0
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1066:
        global.msg[0] = scr_gettext("SCR_TEXT_6669") //    * Check
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 0
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1067:
        global.msg[0] = scr_gettext("SCR_TEXT_6679") //    * Check
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 0
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1068:
        global.msg[0] = scr_gettext("SCR_TEXT_6689") //    * Check
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 0
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1070:
        global.msg[0] = scr_gettext("SCR_TEXT_6699") //    * Check         * Compliment&   * Threaten      * Mystify
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1071:
        global.msg[0] = scr_gettext("SCR_TEXT_6709") //    * Check         * Pick On&   * Don't Pick    * Challenge&     On
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1072:
        global.msg[0] = scr_gettext("SCR_TEXT_6720") //    * Check         * Console&   * Terrorize     * Pray
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1073:
        global.msg[0] = scr_gettext("SCR_TEXT_6731") //    * Check         * Talk
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1074:
        global.msg[0] = scr_gettext("SCR_TEXT_6741") //    * Check         * Switch&   * Fix           * Lie Down
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1075:
        global.msg[0] = scr_gettext("SCR_TEXT_6751") //    * Check         * Hiss&   * Devour        * Snack
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1076:
        global.msg[0] = scr_gettext("SCR_TEXT_6761") //    * Check         * Applaud&   * Boo           * Nothing
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 1
        global.choices[5] = 0
        break
    case 1080:
        global.msg[0] = scr_gettext("SCR_TEXT_6772") //    * Check         * Something
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1081:
        global.msg[0] = scr_gettext("SCR_TEXT_6783") //    * Check         * Draw
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1099:
        global.msg[0] = scr_gettext("SCR_TEXT_6793") //    * Check         * Hope  &   * Dream
        global.choices[0] = 1
        global.choices[1] = 1
        global.choices[2] = 0
        global.choices[3] = 1
        global.choices[4] = 0
        global.choices[5] = 0
        break
    case 1100:
        global.msg[0] = scr_gettext("SCR_TEXT_6804") //    * Error
        global.choices[0] = 1
        global.choices[1] = 0
        global.choices[2] = 0
        global.choices[3] = 0
        global.choices[4] = 0
        global.choices[5] = 0
        if (global.flag[501] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_6814") //    * Struggle
            global.choices[0] = 1
            global.choices[1] = 0
            global.choices[2] = 0
            global.choices[3] = 0
            global.choices[4] = 0
            global.choices[5] = 0
        }
        if (global.flag[501] == 1)
        {
            if (global.flag[505] == 0)
                global.msg[0] = scr_gettext("SCR_TEXT_6825") // \W   * Undyne     
            else
                global.msg[0] = scr_gettext("SCR_TEXT_6826") // \W   \Y* (Saved)    \W
            if (global.flag[506] == 0)
                global.msg[0] += scr_gettext("SCR_TEXT_6828") //    * Alphys \W &
            else
                global.msg[0] += scr_gettext("SCR_TEXT_6829") //    \Y* (Saved)\W &
            if (global.flag[507] == 0)
                global.msg[0] += scr_gettext("SCR_TEXT_6831") // \W   * Papyrus       * Sans \W &
            else
                global.msg[0] += scr_gettext("SCR_TEXT_6832") // \Y   * (Saved)       * (Saved)\W &
            if (global.flag[508] == 0)
                global.msg[0] += scr_gettext("SCR_TEXT_6834") // \W   * Toriel        * Asgore \W 
            else
                global.msg[0] += scr_gettext("SCR_TEXT_6835") // \Y   * (Saved)       * (Saved)\W 
            global.choices[0] = 1
            global.choices[1] = 1
            global.choices[2] = 1
            global.choices[3] = 1
            global.choices[4] = 1
            global.choices[5] = 1
        }
        if (global.flag[501] > 1)
        {
            if (global.flag[501] == 2)
                global.msg[0] = scr_gettext("SCR_TEXT_6848") //    * Someone else
            if (global.flag[501] == 3)
                global.msg[0] = scr_gettext("SCR_TEXT_6849") //    * Asriel Dreemurr
            global.choices[0] = 1
            global.choices[1] = 0
            global.choices[2] = 0
            global.choices[3] = 0
            global.choices[4] = 0
            global.choices[5] = 0
        }
        break
    case 1520:
        global.msg[0] = scr_gettext("SCR_TEXT_7052") // * (The box is aclog with the&  the hair of a dog.)/%%
        break
    case 3002:
        global.msg[0] = scr_gettext("SCR_TEXT_7079") // * You encountered the Dummy.
        global.msg[1] = scr_gettext("SCR_TEXT_7080") // %%%
        break
    case 3003:
        global.msg[0] = scr_gettext("SCR_TEXT_7084") // * Froggit attacks you!
        global.msg[1] = scr_gettext("SCR_TEXT_7085") // %%%
        break
    case 3004:
        global.msg[0] = scr_gettext("SCR_TEXT_7089") // * Froggit hopped close!
        global.msg[1] = scr_gettext("SCR_TEXT_7090") // %%%
        break
    case 3005:
        global.msg[0] = scr_gettext("SCR_TEXT_7094") // * Whimsun approached meekly!
        global.msg[1] = scr_gettext("SCR_TEXT_7095") // %%%
        break
    case 3006:
        global.msg[0] = scr_gettext("SCR_TEXT_7099") // * Froggit and Whimsun drew near!
        global.msg[1] = scr_gettext("SCR_TEXT_7100") // %%%
        break
    case 3007:
        global.msg[0] = scr_gettext("SCR_TEXT_7104") // * Moldsmal blocked the way!
        global.msg[1] = scr_gettext("SCR_TEXT_7105") // %%%
        break
    case 9999:
        i = 0
        fileid = file_text_open_read("testlines.txt")
        while (file_text_eof(fileid) == 0)
        {
            global.msg[i] = file_text_read_string(fileid)
            file_text_readln(fileid)
            i += 1
        }
        file_text_close(fileid)
        break
    default:

}

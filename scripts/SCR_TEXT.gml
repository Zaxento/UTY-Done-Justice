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
    case 200:
        global.msg[0] = scr_gettext("SCR_TEXT_291") // \W* Howdy^2!&* I'm\Y FLOWEY\W.^2 &* \YFLOWEY\W the \YFLOWER\W!/
        global.msg[1] = scr_gettext("SCR_TEXT_292") // * Hmmm.../
        global.msg[2] = scr_gettext("SCR_TEXT_293") // * You're new to the&  UNDERGROUND^2, aren'tcha?/
        global.msg[3] = scr_gettext("SCR_TEXT_294") // * Golly^1, you must be&  so confused./
        global.msg[4] = scr_gettext("SCR_TEXT_295") // * Someone ought to teach&  you how things work&  around here!/
        global.msg[5] = scr_gettext("SCR_TEXT_296") // * I guess little old me&  will have to do./
        global.msg[6] = scr_gettext("SCR_TEXT_297") // * Ready^2?&* Here we go!/%%
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
    case 503:
        global.msg[0] = scr_gettext("SCR_TEXT_1548") // * Please don't step on the&  leaves./%%
        break
    case 504:
        global.msg[0] = scr_gettext("SCR_TEXT_1552") // * Didn't you read the sign&  downstairs?/%%
        break
    case 508:
        doak = 0
        noroom = 0
        if (global.flag[34] < 4)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_1603") // * 'Take one.'&* Take a candy?&         Yes         No \C
            if (global.flag[34] == 0)
                global.msg[0] = scr_gettext("SCR_TEXT_1604") // * It says 'take one.'&* Take a piece of candy?&         Yes         No \C
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_1606") // * Look at what you've done./%%
        global.msg[1] = scr_gettext("SCR_TEXT_1607") //  
        break
    case 509:
        if (global.choice == 0)
        {
            if (global.flag[34] < 4)
            {
                if (doak == 0)
                {
                    doak = 1
                    script_execute(scr_itemget, 1)
                    if (noroom == 0)
                        global.flag[34] += 1
                }
            }
            if (noroom == 0)
            {
                if (global.flag[34] == 1)
                    global.msg[0] = scr_gettext("SCR_TEXT_1624") // * You took a piece of candy.&* (Press \*C to open the menu.)/%%
                if (global.flag[34] == 2)
                    global.msg[0] = scr_gettext("SCR_TEXT_1625") // * You took more candy^1.&* How disgusting../%%
                if (global.flag[34] == 3)
                    global.msg[0] = scr_gettext("SCR_TEXT_1626") // * You take another piece.&* You feel like the&  scum of the earth.../%%
                if (global.flag[34] == 4)
                    global.msg[0] = scr_gettext("SCR_TEXT_1628") // * You took too much too fast.&* The candy spills onto&  the floor./%%
                if (global.flag[34] == 3 && global.flag[6] == 1)
                {
                    global.msg[0] = scr_gettext("SCR_TEXT_1631") // * In this hellish world^1, you&  can only take 3 pieces&  of candy.../%%
                    global.flag[34] += 1
                }
            }
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1635") // * You tried to take a piece&  of candy^1, but you didn't&  have any room./%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1639") // * You decided not to take some./%%
        break
    case 512:
        doak = 0
        noroom = 0
        global.msg[0] = scr_gettext("SCR_TEXT_1675") // * It says 'Take them all.'&* Take a candy?&         Yes         No \C
        global.msg[1] = scr_gettext("SCR_TEXT_1676") //  
        break
    case 513:
        script_execute(scr_itemcheck, 5)
        if (global.choice == 0)
        {
            if (haveit == false)
            {
                if (doak == 0)
                {
                    doak = 1
                    script_execute(scr_itemget, 5)
                }
            }
        }
        if (noroom == 0)
            global.msg[0] = scr_gettext("SCR_TEXT_1692") // * You took a piece.&* Boy^1, that's heavy./%%
        if (haveit == true)
            global.msg[0] = scr_gettext("SCR_TEXT_1694") // * You can't carry more.&* It's just too heavy./%%
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1695") // * You tried to take a piece&  of candy^1, but you didn't&  have any room./%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_1698") // * You decided not to take some./%%
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
    case 526:
        if (global.flag[6] == 0)
        {
            if (doak == 0)
            {
                script_execute(scr_itemget, 11)
                if (noroom == 0)
                    global.flag[103] = 2
                doak = 1
            }
            global.msg[0] = scr_gettext("SCR_TEXT_1842") // * You found a slice of&  butterscotch-cinnamon&  pie./%%
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1843") // * You are carrying too&  much./%%
        }
        else
        {
            if (doak == 0)
            {
                script_execute(scr_itemget, 63)
                if (noroom == 0)
                    global.flag[103] = 2
                doak = 1
            }
            global.msg[0] = scr_gettext("SCR_TEXT_1853") // * You found a slice of&  snail pie.../%%
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_1854") // * You are carrying too&  much./%%
        }
        break
    case 547:
        global.msg[0] = scr_gettext("SCR_TEXT_2058") // * Welcome to Snowed Inn^1!&* Snowdin's premier hotel!/
        global.msg[1] = scr_gettext("SCR_TEXT_2059") // * One night is 80G.& &         Stay        Leave\C
        if (global.flag[72] == 2)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_2062") // * Back again^1?&* Well^1, stay as long as you&  like./
            global.msg[1] = scr_gettext("SCR_TEXT_2063") // * How about it?& &         Stay        Leave\C
        }
        global.msg[2] = scr_gettext("SCR_TEXT_2065") //  
        if (obj_townnpc_innlady.jtext == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_2069") // * What^1?&* No^1, you can't get a&  second key!
        if (global.flag[7] == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_2074") // * Hello^1!&* Sorry^1, no time for a&  nap.../
            global.msg[1] = scr_gettext("SCR_TEXT_2075") // * Snowed Inn is shutting&  down so we can all go&  to the surface./%%
            if (global.flag[72] == 2)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_2078") // * Oh^1, there you are^1.&* I was worrying about&  you!/
                global.msg[1] = scr_gettext("SCR_TEXT_2079") // * Things are going to be OK^1,&  you hear?/
                global.msg[2] = scr_gettext("SCR_TEXT_2080") // * We're all going to the&  surface world soon.../
                global.msg[3] = scr_gettext("SCR_TEXT_2081") // * There's bound to be a&  place you can stay there!/%%
            }
        }
        break
    case 548:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_2089") // Error./%%
            if (global.flag[72] == 2)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_2092") // * Here's your room key^1.&* Make sure to bundle up!/%%
                obj_townnpc_innlady.conversation = 2
                with (obj_townnpc_innlady)
                    jtext = 1
            }
            if (global.gold < 80 && global.flag[72] == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_2098") // * ... You don't even have 80G?/
                global.msg[1] = scr_gettext("SCR_TEXT_2099") // * Oh^1! You poor thing^1.&* I can only imagine what&  you've been through./
                global.msg[2] = scr_gettext("SCR_TEXT_2100") // * One of the rooms upstairs&  is empty^1./
                global.msg[3] = scr_gettext("SCR_TEXT_2101") // * You can sleep there for&  free^1, okay?/%%
                obj_townnpc_innlady.conversation = 2
                with (obj_townnpc_innlady)
                    jtext = 1
                global.flag[72] = 2
            }
            if (global.gold >= 80)
            {
                if (global.flag[72] == 0 || global.flag[72] == 1)
                {
                    global.msg[0] = scr_gettext("SCR_TEXT_2109") // * Here's your room key^1.&* Make sure to bundle up!/%%
                    obj_townnpc_innlady.conversation = 2
                    with (obj_townnpc_innlady)
                        jtext = 1
                    global.flag[72] = 1
                }
            }
            if (global.gold < 80 && global.flag[72] == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_2116") // * You aren't carrying enough&  money./%%
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_2121") // * Well^1, feel free to come&  back any time./%%
        break
    case 549:
        global.msg[0] = scr_gettext("SCR_TEXT_2125") // * (Look through the telescope?)& &         Yes         No\C
        global.msg[1] = scr_gettext("SCR_TEXT_2126") //  
        break
    case 550:
        global.msg[0] = scr_gettext("SCR_TEXT_2130") //  %%
        global.msg[1] = scr_gettext("SCR_TEXT_2131") //  
        if (global.choice == 0)
        {
            if (instance_exists(obj_starchecker) == 0)
                instance_create(view_xview[0], view_yview[0], obj_starchecker)
        }
        break
    case 551:
        if (obj_mainchara.dsprite != spr_maincharad_pranked)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_2139") // * i'm thinking about&  getting into the&  telescope business./
            global.msg[1] = scr_gettext("SCR_TEXT_2140") // * it's normally 50000G&  to use this premium&  telescope.../
            global.msg[2] = scr_gettext("SCR_TEXT_2141") // * but..^1.&*\E1 since i know you^1,&  you can use it for free./
            global.msg[3] = scr_gettext("SCR_TEXT_2142") // \E2* howzabout it?/
            global.msg[4] = scr_gettext("SCR_TEXT_2143") // \TS \F0 \T0 %
            global.msg[5] = scr_gettext("SCR_TEXT_2144") // * (Use the telescope?)& &         Yes         No\C
        }
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_2148") // * huh^1?&* you aren't satisfied?/
            global.msg[1] = scr_gettext("SCR_TEXT_2149") // \E1* don't worry./
            global.msg[2] = scr_gettext("SCR_TEXT_2150") // \E2* i'll give you a&  full refund./%%
        }
        global.msg[6] = scr_gettext("SCR_TEXT_2152") //  
        break
    case 552:
        global.msg[0] = scr_gettext("SCR_TEXT_2157") //  %%
        global.msg[1] = scr_gettext("SCR_TEXT_2158") //  
        if (global.choice == 0)
        {
            if (instance_exists(obj_starchecker) == 0)
                instance_create(view_xview[0], view_yview[0], obj_starchecker)
            obj_mainchara.dsprite = spr_maincharad_pranked
            obj_mainchara.lsprite = spr_maincharal_pranked
        }
        else
        {
            scr_sansface(0, 0)
            global.msg[1] = scr_gettext("SCR_TEXT_2169") // * well^1, come back&  whenever you want./%%
        }
        break
    case 553:
        armor = scr_gettext("papyrus_armor_0") // BEPIS.
        if (global.armor == 4)
            armor = scr_gettext("papyrus_armor_4") // GROSS BANDAGE
        if (global.armor == 12)
            armor = scr_gettext("papyrus_armor_12") // FADED RIBBON
        if (global.armor == 15)
            armor = scr_gettext("papyrus_armor_15") // BANDANNA
        if (global.armor == 24)
            armor = scr_gettext("papyrus_armor_24") // DUSTY TUTU
        global.flag[75] = global.armor
        global.msg[0] = scr_gettext("SCR_TEXT_2180", armor)
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("SCR_TEXT_2182", armor)
        global.msg[3] = scr_gettext("SCR_TEXT_2183", armor)
        global.msg[4] = scr_gettext("SCR_TEXT_2184", armor)
        global.msg[5] = scr_gettext("SCR_TEXT_2185", armor)
        global.msg[6] = scr_gettext("SCR_TEXT_2186", armor)
        global.msg[7] = scr_gettext("SCR_TEXT_2187", armor)
        global.msg[8] = scr_gettext("SCR_TEXT_2188", armor)
        global.msg[9] = scr_gettext("SCR_TEXT_2189", armor)
        global.msg[10] = scr_gettext("SCR_TEXT_2190", armor)
        global.msg[11] = scr_gettext("SCR_TEXT_2191", armor)
        global.msg[12] = scr_gettext("SCR_TEXT_2192", armor)
        global.msg[13] = scr_gettext("SCR_TEXT_2193", armor)
        break
    case 554:
        armor = scr_gettext("papyrus_armor_0") // BEPIS.
        if (global.armor == 4)
            armor = scr_gettext("papyrus_armor_4") // GROSS BANDAGE
        if (global.armor == 12)
            armor = scr_gettext("papyrus_armor_12") // FADED RIBBON
        if (global.armor == 15)
            armor = scr_gettext("papyrus_armor_15") // BANDANNA
        if (global.armor == 24)
            armor = scr_gettext("papyrus_armor_24") // DUSTY TUTU
        scr_papface(0, 0)
        if (global.choice == 0)
        {
            global.flag[76] = 0
            global.msg[1] = scr_gettext("SCR_TEXT_2206", armor)
            global.msg[2] = scr_gettext("SCR_TEXT_2207", armor)
            global.msg[3] = scr_gettext("SCR_TEXT_2208", armor)
            global.msg[4] = scr_gettext("SCR_TEXT_2209", armor)
            global.msg[5] = scr_gettext("SCR_TEXT_2210", armor)
        }
        else
        {
            global.flag[76] = 1
            global.msg[1] = scr_gettext("SCR_TEXT_2215", armor)
            global.msg[2] = scr_gettext("SCR_TEXT_2216", armor)
            global.msg[3] = scr_gettext("SCR_TEXT_2217", armor)
            global.msg[4] = scr_gettext("SCR_TEXT_2218", armor)
            global.msg[5] = scr_gettext("SCR_TEXT_2219", armor)
            global.msg[6] = scr_gettext("SCR_TEXT_2220", armor)
        }
        break
    case 589:
        doak = 0
        noroom = 0
        global.msg[0] = scr_gettext("SCR_TEXT_2692") // * error/%%
        if (global.flag[108] > 2)
            global.msg[0] = scr_gettext("SCR_TEXT_2694") // * (The cooler is empty.)/%%
        if (global.flag[108] == 1 || global.flag[108] == 2)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_2698") // * (Take a space food bar&  from the cooler?)&         Yes         No \C
            global.msg[1] = scr_gettext("SCR_TEXT_2699") //  
        }
        if (global.flag[108] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_2704") // * (It's a cooler^1.&* It has no brand^1, and&  shows no signs of wear...)/
            global.msg[1] = scr_gettext("SCR_TEXT_2705") // * (Inside are a couple&  of freeze-dried space&  food bars.)/
            global.msg[2] = scr_gettext("SCR_TEXT_2706") // * (Take one?)& &         Yes         No \C
            global.msg[3] = scr_gettext("SCR_TEXT_2707") //  
            global.flag[108] = 1
        }
        break
    case 590:
        if (global.choice == 0)
        {
            if (doak == 0)
            {
                noroom = 0
                doak = 1
                script_execute(scr_itemget, 35)
                if (noroom == 0)
                    global.flag[108] += 1
            }
            if (noroom == 0)
                global.msg[0] = scr_gettext("SCR_TEXT_2726") // * (You got the Astronaut Food.)/%%
            if (noroom == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_2728") // * (You're carrying too much.)/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_2732") // * %%
        break
    case 591:
        if (global.flag[355] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_2739") // * (Seems like a regular&  training dummy.)/
            global.msg[1] = scr_gettext("SCR_TEXT_2740") // * (Do you want to beat it&  up?)&         Yes         No \C
            global.msg[2] = scr_gettext("SCR_TEXT_2741") //  
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_2744") // * (You've had enough of&  the dummy.)/%%
        break
    case 592:
        if (global.choice == 0)
        {
            if (global.lv == 1)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_2752") // * (You tap the dummy with&  your fist.)/
                global.msg[1] = scr_gettext("SCR_TEXT_2753") // * (You feel bad.)/%%
            }
            if (global.lv > 1)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_2757") // * (You hit the dummy&  lightly.)/
                global.msg[1] = scr_gettext("SCR_TEXT_2758") // * (You don't feel like&  you learned anything.)/%%
            }
            if (global.lv > 4)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_2762") // * (You sock the dummy.)/
                global.msg[1] = scr_gettext("SCR_TEXT_2763") // * (Who cares?)/%%
            }
            if (global.lv > 7)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_2767") // * (You punch the dummy at&  full force.)/
                global.msg[1] = scr_gettext("SCR_TEXT_2768") // * (Feels good.)/%%
            }
            global.flag[355] = 1
        }
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_2774") // * (You stare into each&  other's eyes for a&  moment...)/%%
            global.flag[355] = 2
        }
        break
    case 619:
        global.msg[0] = scr_gettext("SCR_TEXT_3034") // * do you want to play a game^1?&* it's called thundersnail./
        global.msg[1] = scr_gettext("SCR_TEXT_3035") // * the snails will race^1, and if&  the yellow snail wins^1, you&  win./
        global.msg[2] = scr_gettext("SCR_TEXT_3036") // * it's 10G to play.& &         Play        No\C
        global.msg[3] = scr_gettext("SCR_TEXT_3037") //  
        break
    case 620:
        if (global.choice == 0)
        {
            if (global.gold == 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_3045") // * um..^1.&* you don't have any money?/
                global.msg[1] = scr_gettext("SCR_TEXT_3046") // * n-no^1, you can still play^1,&  don't worry about it.../
                global.msg[2] = scr_gettext("SCR_TEXT_3047") // * okay..^1.&* press \*Z repeatedly to&  encourage your snail./
                global.msg[3] = scr_gettext("SCR_TEXT_3048") // * ready?/%%
            }
            if (global.gold < 10 && global.gold > 0)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_3052") // * um..^1. that's less than 10G./
                global.msg[1] = scr_gettext("SCR_TEXT_3053") // * but since you're my only&  real customer^1, i guess i'll&  just take what you have.../
                global.msg[2] = scr_gettext("SCR_TEXT_3054") // * okay..^1.&* press \*Z repeatedly to&  encourage your snail./
                global.msg[3] = scr_gettext("SCR_TEXT_3055") // * ready?/%%
                global.gold = 0
            }
            if (global.gold >= 10)
            {
                global.gold -= 10
                global.msg[0] = scr_gettext("SCR_TEXT_3061") // * okay..^1.&* press \*Z repeatedly to&  encourage your snail./
                global.msg[1] = scr_gettext("SCR_TEXT_3062") // * ready?/%%
            }
            obj_napstablook_farm2.con = 1
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3068") // * oh.........../%%
        break
    case 621:
        global.msg[0] = scr_gettext("SCR_TEXT_3073") // * .../
        global.msg[1] = scr_gettext("SCR_TEXT_3074") // * Seven./
        global.msg[2] = scr_gettext("SCR_TEXT_3075") // * Seven human souls./
        global.msg[3] = scr_gettext("SCR_TEXT_3076") // * With the power of seven&  human souls^1, our king.../
        global.msg[4] = scr_gettext("SCR_TEXT_3077") // \W* \YKing \RASGORE \YDreemurr\W.../
        global.msg[5] = scr_gettext("SCR_TEXT_3078") // * ... will become a god./
        global.msg[6] = scr_gettext("SCR_TEXT_3079") // \W* With that power^1, \RASGORE\W &  can finally shatter the&  barrier./
        global.msg[7] = scr_gettext("SCR_TEXT_3080") // * He will finally take the&  surface back from humanity.../
        global.msg[8] = scr_gettext("SCR_TEXT_3081") // * And give them back the&  suffering and pain that&  we have endured./
        global.msg[9] = scr_gettext("SCR_TEXT_3082") // * .../
        global.msg[10] = scr_gettext("SCR_TEXT_3083") // * Understand^1, human?/
        global.msg[11] = scr_gettext("SCR_TEXT_3084") // * This is your only chance&  at redemption./
        global.msg[12] = scr_gettext("SCR_TEXT_3085") // * Give up your soul.../
        global.msg[13] = scr_gettext("SCR_TEXT_3086") // * Or I'll tear it from&  your body./%%
        break
    case 623:
        global.msg[0] = scr_gettext("SCR_TEXT_3104") // * Yo^1, I know I'm not supposed&  to be here^1, but.../
        global.msg[1] = scr_gettext("SCR_TEXT_3105") // * I wanna ask you something./
        global.msg[2] = scr_gettext("SCR_TEXT_3106") // * .../
        global.msg[3] = scr_gettext("SCR_TEXT_3107") // * Man^1, I've never had to ask&  anyone this before.../
        global.msg[4] = scr_gettext("SCR_TEXT_3108") // * Umm.../
        global.msg[5] = scr_gettext("SCR_TEXT_3109") // * Yo..^1. You're human^1, right?&* Haha./
        global.msg[6] = scr_gettext("SCR_TEXT_3110") // * Man^1! I knew it!/
        global.msg[7] = scr_gettext("SCR_TEXT_3111") // * ... well^1, I know it now^1,&  I mean.../
        global.msg[8] = scr_gettext("SCR_TEXT_3112") // * Undyne told me^1, um^1, " + '"' + "stay&  away from that human." + '"' + "/
        global.msg[9] = scr_gettext("SCR_TEXT_3113") // * So^1, like^1, ummm.../
        global.msg[10] = scr_gettext("SCR_TEXT_3114") // * I guess that makes us enemies&  or something./
        global.msg[11] = scr_gettext("SCR_TEXT_3115") // * But I kinda stink at that^1,&  haha./
        global.msg[12] = scr_gettext("SCR_TEXT_3116") // * Yo^1, say something mean so&  I can hate you?/
        global.msg[13] = scr_gettext("SCR_TEXT_3117") // * Please? & &         Yes         No \C
        global.msg[14] = scr_gettext("SCR_TEXT_3118") //  
        break
    case 624:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3124") // * Huh...?/
            global.msg[1] = scr_gettext("SCR_TEXT_3125") // * Yo^1, that's your idea of&  something mean?/
            global.msg[2] = scr_gettext("SCR_TEXT_3126") // * My sister says that to me&  ALL THE TIME!/
            global.msg[3] = scr_gettext("SCR_TEXT_3127") // * Guess I have to do it^1, haha./
            global.msg[4] = scr_gettext("SCR_TEXT_3128") // * Yo^1, I..^1. I hate your guts./
            global.msg[5] = scr_gettext("SCR_TEXT_3129") // * .../
            global.msg[6] = scr_gettext("SCR_TEXT_3130") // * Man^1, I..^1. I'm such a turd./
            global.msg[7] = scr_gettext("SCR_TEXT_3131") // * I'm..^1. I'm gonna go home&  now./%%
        }
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3135") // * Yo^1, what^1?&* So I have to do it?/
            global.msg[1] = scr_gettext("SCR_TEXT_3136") // * Here goes nothing.../
            global.msg[2] = scr_gettext("SCR_TEXT_3137") // * Yo^1, I..^1. I hate your guts./
            global.msg[3] = scr_gettext("SCR_TEXT_3138") // * .../
            global.msg[4] = scr_gettext("SCR_TEXT_3139") // * Man^1, I..^1. I'm such a turd./
            global.msg[5] = scr_gettext("SCR_TEXT_3140") // * I'm..^1. I'm gonna go home&  now./%%
        }
        break
    case 625:
        if (global.flag[353] <= 19)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3148") // * (It's a water cooler.)&* (Take a cup of water?)&         Yes         No \C
            global.msg[1] = scr_gettext("SCR_TEXT_3149") //  
        }
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3153") // * (There's no more water left&  in the cooler.)/%%
            if instance_exists(obj_undynefall)
                global.msg[0] = scr_gettext("SCR_TEXT_3155") // * (Sadistically^1, you've poured&  out all the water right in&  front of Undyne's eyes.)/%%
        }
        break
    case 626:
        if (global.choice == 0)
        {
            global.flag[440] += 1
            global.msg[0] = scr_gettext("SCR_TEXT_3163") // * (You take a cup of water.)/%%
            with (obj_watercooler)
                event_user(1)
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3171") //  %%
        break
    case 627:
        global.msg[0] = scr_gettext("SCR_TEXT_3177") // * (Get rid of the water?)& &         Yes         No \C
        global.msg[1] = scr_gettext("SCR_TEXT_3178") //  
        break
    case 628:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3184") // * (You pour the water on&  the ground next to the&  water cooler.)/%%
            with (obj_watercooler)
            {
                if instance_exists(obj_undynefall)
                    global.flag[441] += 1
                global.flag[353] += 1
                event_user(1)
            }
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3196") //  %%
        break
    case 629:
        global.msg[0] = scr_gettext("SCR_TEXT_3201") // * A rousing error./%%
        if instance_exists(obj_watercooler)
        {
            if (obj_watercooler.havewater == 1)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_3205") // * (Give Undyne the water?)& &         Yes         No \C
                global.msg[1] = scr_gettext("SCR_TEXT_3206") //  
            }
            else
                global.msg[0] = scr_gettext("SCR_TEXT_3210") // * (She looks dry...)/%%
        }
        break
    case 630:
        global.msg[0] = scr_gettext("SCR_TEXT_3215") //  %%
        if (global.choice == 0)
        {
            global.interact = 1
            with (obj_undynefall)
                event_user(1)
        }
        break
    case 632:
        armor1 = scr_gettext("papyrus_armor_0") // BEPIS.
        armor2 = scr_gettext("papyrus_armor_0") // BEPIS.
        if (global.flag[75] == 4)
            armor1 = scr_gettext("papyrus_armor_4") // GROSS BANDAGE
        if (global.flag[75] == 12)
            armor1 = scr_gettext("papyrus_armor_12") // FADED RIBBON
        if (global.flag[75] == 15)
            armor1 = scr_gettext("papyrus_armor_15") // BANDANNA
        if (global.flag[75] == 24)
            armor1 = scr_gettext("papyrus_armor_24") // DUSTY TUTU
        if (global.flag[77] == 4)
            armor2 = scr_gettext("papyrus_armor_4") // GROSS BANDAGE
        if (global.flag[77] == 12)
            armor2 = scr_gettext("papyrus_armor_12") // FADED RIBBON
        if (global.flag[77] == 15)
            armor2 = scr_gettext("papyrus_armor_15") // BANDANNA
        if (global.flag[77] == 24)
            armor2 = scr_gettext("papyrus_armor_24") // DUSTY TUTU
        global.msg[0] = scr_gettext("SCR_TEXT_3238", armor1, armor2)
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("SCR_TEXT_3240", armor1, armor2)
        global.msg[3] = scr_gettext("SCR_TEXT_3241", armor1, armor2)
        global.msg[4] = scr_gettext("SCR_TEXT_3242", armor1, armor2)
        global.msg[5] = scr_gettext("SCR_TEXT_3243", armor1, armor2)
        global.msg[6] = scr_gettext("SCR_TEXT_3244", armor1, armor2)
        global.msg[7] = scr_gettext("SCR_TEXT_3245", armor1, armor2)
        if (global.flag[75] == global.flag[77])
        {
            if (global.flag[76] == 0)
            {
                global.msg[7] = scr_gettext("SCR_TEXT_3250", armor1, armor2)
                global.msg[8] = scr_gettext("SCR_TEXT_3251", armor1, armor2)
                global.msg[9] = scr_gettext("SCR_TEXT_3252", armor1, armor2)
                global.msg[10] = scr_gettext("SCR_TEXT_3253", armor1, armor2)
                global.msg[11] = scr_gettext("SCR_TEXT_3254", armor1, armor2)
                global.msg[12] = scr_gettext("SCR_TEXT_3255", armor1, armor2)
                global.msg[13] = scr_gettext("SCR_TEXT_3256", armor1, armor2)
                global.msg[14] = scr_gettext("SCR_TEXT_3257", armor1, armor2)
                global.msg[15] = scr_gettext("SCR_TEXT_3258", armor1, armor2)
                global.msg[16] = scr_gettext("SCR_TEXT_3259", armor1, armor2)
                global.msg[17] = scr_gettext("SCR_TEXT_3260", armor1, armor2)
                global.msg[18] = scr_gettext("SCR_TEXT_3261", armor1, armor2)
                global.msg[19] = scr_gettext("SCR_TEXT_3262", armor1, armor2)
            }
        }
        if (global.flag[75] != global.flag[77])
        {
            if (global.flag[76] == 0)
            {
                global.msg[7] = scr_gettext("SCR_TEXT_3268", armor1, armor2)
                global.msg[8] = scr_gettext("SCR_TEXT_3269", armor1, armor2)
                global.msg[9] = scr_gettext("SCR_TEXT_3270", armor1, armor2)
                global.msg[10] = scr_gettext("SCR_TEXT_3271", armor1, armor2)
                global.msg[11] = scr_gettext("SCR_TEXT_3272", armor1, armor2)
                global.msg[12] = scr_gettext("SCR_TEXT_3273", armor1, armor2)
                global.msg[13] = scr_gettext("SCR_TEXT_3274", armor1, armor2)
                global.msg[14] = scr_gettext("SCR_TEXT_3275", armor1, armor2)
                global.msg[15] = scr_gettext("SCR_TEXT_3276", armor1, armor2)
                global.msg[16] = scr_gettext("SCR_TEXT_3277", armor1, armor2)
                global.msg[17] = scr_gettext("SCR_TEXT_3278", armor1, armor2)
                global.msg[18] = scr_gettext("SCR_TEXT_3279", armor1, armor2)
                global.msg[19] = scr_gettext("SCR_TEXT_3280", armor1, armor2)
                global.msg[20] = scr_gettext("SCR_TEXT_3281", armor1, armor2)
                global.msg[21] = scr_gettext("SCR_TEXT_3282", armor1, armor2)
                global.msg[22] = scr_gettext("SCR_TEXT_3283", armor1, armor2)
                global.msg[23] = scr_gettext("SCR_TEXT_3284", armor1, armor2)
                global.msg[24] = scr_gettext("SCR_TEXT_3285", armor1, armor2)
            }
        }
        if (global.flag[75] == global.flag[77])
        {
            if (global.flag[76] == 1)
            {
                global.msg[7] = scr_gettext("SCR_TEXT_3291", armor1, armor2)
                global.msg[8] = scr_gettext("SCR_TEXT_3292", armor1, armor2)
                global.msg[9] = scr_gettext("SCR_TEXT_3293", armor1, armor2)
                global.msg[10] = scr_gettext("SCR_TEXT_3294", armor1, armor2)
                global.msg[11] = scr_gettext("SCR_TEXT_3295", armor1, armor2)
                global.msg[12] = scr_gettext("SCR_TEXT_3296", armor1, armor2)
                global.msg[13] = scr_gettext("SCR_TEXT_3297", armor1, armor2)
                global.msg[14] = scr_gettext("SCR_TEXT_3298", armor1, armor2)
                global.msg[15] = scr_gettext("SCR_TEXT_3299", armor1, armor2)
                global.msg[16] = scr_gettext("SCR_TEXT_3300", armor1, armor2)
                global.msg[17] = scr_gettext("SCR_TEXT_3301", armor1, armor2)
                global.msg[18] = scr_gettext("SCR_TEXT_3302", armor1, armor2)
                global.msg[19] = scr_gettext("SCR_TEXT_3303", armor1, armor2)
            }
        }
        if (global.flag[75] != global.flag[77])
        {
            if (global.flag[76] == 1)
            {
                global.msg[7] = scr_gettext("SCR_TEXT_3309", armor1, armor2)
                global.msg[8] = scr_gettext("SCR_TEXT_3310", armor1, armor2)
                global.msg[9] = scr_gettext("SCR_TEXT_3311", armor1, armor2)
                global.msg[10] = scr_gettext("SCR_TEXT_3312", armor1, armor2)
                global.msg[11] = scr_gettext("SCR_TEXT_3313", armor1, armor2)
                global.msg[12] = scr_gettext("SCR_TEXT_3314", armor1, armor2)
                global.msg[13] = scr_gettext("SCR_TEXT_3315", armor1, armor2)
                global.msg[14] = scr_gettext("SCR_TEXT_3316", armor1, armor2)
                global.msg[15] = scr_gettext("SCR_TEXT_3317", armor1, armor2)
                global.msg[16] = scr_gettext("SCR_TEXT_3318", armor1, armor2)
                global.msg[17] = scr_gettext("SCR_TEXT_3319", armor1, armor2)
                global.msg[18] = scr_gettext("SCR_TEXT_3320", armor1, armor2)
                global.msg[19] = scr_gettext("SCR_TEXT_3321", armor1, armor2)
                global.msg[20] = scr_gettext("SCR_TEXT_3322", armor1, armor2)
                global.msg[21] = scr_gettext("SCR_TEXT_3323", armor1, armor2)
                global.msg[22] = scr_gettext("SCR_TEXT_3324", armor1, armor2)
                global.msg[23] = scr_gettext("SCR_TEXT_3325", armor1, armor2)
                global.msg[24] = scr_gettext("SCR_TEXT_3326", armor1, armor2)
                global.msg[25] = scr_gettext("SCR_TEXT_3327", armor1, armor2)
                global.msg[26] = scr_gettext("SCR_TEXT_3328", armor1, armor2)
                global.msg[27] = scr_gettext("SCR_TEXT_3329", armor1, armor2)
                global.msg[28] = scr_gettext("SCR_TEXT_3330", armor1, armor2)
                global.msg[29] = scr_gettext("SCR_TEXT_3331", armor1, armor2)
            }
        }
        break
    case 633:
        global.msg[0] = scr_gettext("SCR_TEXT_3337") // * Ring..\E0./
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("SCR_TEXT_3339") // HEY^1!&WHAT'S UP!?/
        global.msg[3] = scr_gettext("SCR_TEXT_3340") // I WAS JUST&THINKING.../
        global.msg[4] = scr_gettext("SCR_TEXT_3341") // YOU^1, ME^1, AND&UNDYNE SHOULD ALL&HANG OUT SOMETIME!/
        global.msg[5] = scr_gettext("SCR_TEXT_3342") // I THINK YOU&WOULD MAKE&GREAT PALS!/
        global.msg[6] = scr_gettext("SCR_TEXT_3343") // LET'S MEET UP&AT HER HOUSE&LATER!/
        global.msg[7] = scr_gettext("SCR_TEXT_3344") // \TS \F0 \T0 %
        global.msg[8] = scr_gettext("SCR_TEXT_3345") // * Click.../%%
        if (global.flag[88] < 3)
        {
            global.msg[5] = scr_gettext("SCR_TEXT_3348") // AFTER YOU HANG&OUT WITH ME.../
            global.msg[6] = scr_gettext("SCR_TEXT_3349") // LET'S MEET UP&AT HER HOUSE!/
            global.msg[7] = scr_gettext("SCR_TEXT_3350") // I THINK YOU&WOULD MAKE&GREAT PALS!/
            global.msg[8] = scr_gettext("SCR_TEXT_3351") // \TS \F0 \T0 %
            global.msg[9] = scr_gettext("SCR_TEXT_3352") // * Click.../%%
        }
        break
    case 635:
        global.msg[0] = scr_gettext("SCR_TEXT_3358") // * (It's a book labelled&  Monster History Part 6.)&         Read it     Do not\C
        global.msg[1] = scr_gettext("SCR_TEXT_3359") //  
        break
    case 636:
        global.msg[0] = scr_gettext("SCR_TEXT_3363") // * Unfortunately^1, monsters are&  not experienced with&  illness./
        global.msg[1] = scr_gettext("SCR_TEXT_3364") // * However^1, when monsters are&  about to expire of age^1,&  they lie down^1, immobile./
        global.msg[2] = scr_gettext("SCR_TEXT_3365") // * We call this state&  " + '"' + "Fallen Down." + '"' + "/
        global.msg[3] = scr_gettext("SCR_TEXT_3366") // * A person who has Fallen&  Down will soon perish./
        global.msg[4] = scr_gettext("SCR_TEXT_3367") // * In a way^1, this confusing&  situation was all too&  familiar./%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3370") // * (You decide not to read it.)/%%
        break
    case 637:
        global.msg[0] = scr_gettext("SCR_TEXT_3358") // * (It's a book labelled&  Monster History Part 6.)&         Read it     Do not\C
        global.msg[1] = scr_gettext("SCR_TEXT_3359") //  
        break
    case 638:
        global.msg[0] = scr_gettext("SCR_TEXT_3363") // * Unfortunately^1, monsters are&  not experienced with&  illness./
        global.msg[1] = scr_gettext("SCR_TEXT_3364") // * However^1, when monsters are&  about to expire of age^1,&  they lie down^1, immobile./
        global.msg[2] = scr_gettext("SCR_TEXT_3365") // * We call this state&  " + '"' + "Fallen Down." + '"' + "/
        global.msg[3] = scr_gettext("SCR_TEXT_3366") // * A person who has Fallen&  Down will soon perish./
        global.msg[4] = scr_gettext("SCR_TEXT_3367") // * In a way^1, this confusing&  situation was all too&  familiar./%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3370") // * (You decide not to read it.)/%%
        break
    case 639:
        global.msg[0] = scr_gettext("SCR_TEXT_3393") // * (It's a book labelled&  Monster History Part 7.)&         Read it     Do not\C
        global.msg[1] = scr_gettext("SCR_TEXT_3394") //  
        break
    case 640:
        global.msg[0] = scr_gettext("SCR_TEXT_3398") // * When a human dies^1, its&  soul remains stable&  outside the body./
        global.msg[1] = scr_gettext("SCR_TEXT_3399") // * Meanwhile^1, a monster's soul&  disappears near-instantly&  upon death./
        global.msg[2] = scr_gettext("SCR_TEXT_3400") // * This allows monsters to&  absorb the souls of&  humans.../
        global.msg[3] = scr_gettext("SCR_TEXT_3401") // * While it is extremely&  difficult for humans to&  absorb a monster's soul./
        global.msg[4] = scr_gettext("SCR_TEXT_3402") // * This is why they feared us./
        global.msg[5] = scr_gettext("SCR_TEXT_3403") // * Though monsters are weak^1,&  with enough human souls.../
        global.msg[6] = scr_gettext("SCR_TEXT_3404") // * They could easily destroy&  all of mankind./%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3407") // * (You decide not to read it.)/%%
        break
    case 641:
        global.msg[0] = scr_gettext("SCR_TEXT_3413") // * (It's a book labelled&  Monster History Part 8.)&         Read it     Do not\C
        global.msg[1] = scr_gettext("SCR_TEXT_3414") //  
        break
    case 642:
        global.msg[0] = scr_gettext("SCR_TEXT_3418") // * There is one exception&  to the aforementioned&  rules:/
        global.msg[1] = scr_gettext("SCR_TEXT_3419") // * A certain type of monster^1,&  the " + '"' + "boss" + '"' + " monster./
        global.msg[2] = scr_gettext("SCR_TEXT_3420") // * Due to its life cycle^1, it&  possesses an incredibly&  strong soul for a monster./
        global.msg[3] = scr_gettext("SCR_TEXT_3421") // * This soul can remain&  stable after death^1, if&  only for a few moments./%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3424") // * (You decide not to read it.)/%%
        break
    case 643:
        global.msg[0] = scr_gettext("SCR_TEXT_3429") // * (All these books are labelled&  Human History.)&         Read one    Do not\C
        global.msg[1] = scr_gettext("SCR_TEXT_3430") //  
        break
    case 644:
        global.msg[0] = scr_gettext("SCR_TEXT_3434") // * (You look inside a book.)/
        global.msg[1] = scr_gettext("SCR_TEXT_3435") // * (It's a comic of a giant&  robot fighting a beautiful&  alien princess.)/
        global.msg[2] = scr_gettext("SCR_TEXT_3436") // * (This doesn't strike you&  as very accurate...)/%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3441") // * (You decide not to.)/%%
        break
    case 645:
        global.msg[0] = scr_gettext("SCR_TEXT_3446") // * (All these books are labelled&  Human History.)&         Read one    Do not\C
        global.msg[1] = scr_gettext("SCR_TEXT_3447") //  
        break
    case 646:
        global.msg[0] = scr_gettext("SCR_TEXT_3451") // * (You look inside a book.)&* (It's a comic book.)/
        global.msg[1] = scr_gettext("SCR_TEXT_3452") // * (Two scantily-clad chefs are&  flinging energy pancakes&  at each other.)/
        global.msg[2] = scr_gettext("SCR_TEXT_3453") // * (This doesn't strike you&  as very accurate...)/%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3458") // * (You decide not to.)/%%
        break
    case 647:
        global.msg[0] = scr_gettext("SCR_TEXT_3463") // * (All these books are labelled&  Human History.)&         Read one    Do not\C
        global.msg[1] = scr_gettext("SCR_TEXT_3464") //  
        break
    case 648:
        global.msg[0] = scr_gettext("SCR_TEXT_3469") // * (You look inside a book.)&* (It's a comic book.)/
        global.msg[1] = scr_gettext("SCR_TEXT_3470") // * (A hideous android is running&  to school with toast in&  its mouth.)/
        global.msg[2] = scr_gettext("SCR_TEXT_3471") // * (Seems like it's late.)/
        global.msg[3] = scr_gettext("SCR_TEXT_3472") // * (This doesn't strike you&  as very accurate...)/%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3477") // * (You decide not to.)/%%
        break
    case 660:
        global.msg[0] = scr_gettext("SCR_TEXT_3482") // * (There's a piano here.^1)&* (Play it?)&         Yes         No\C
        global.msg[1] = scr_gettext("SCR_TEXT_3483") //  
        break
    case 661:
        global.msg[0] = scr_gettext("SCR_TEXT_3487") //  %%
        global.msg[1] = scr_gettext("SCR_TEXT_3488") //  
        if (global.choice == 0)
        {
            if (instance_exists(obj_paino) == 0)
                instance_create(2, 2, obj_paino)
        }
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
    case 682:
        global.msg[0] = scr_gettext("SCR_TEXT_3564") // * (It's a switch.)& &         Press it    Don't\C
        global.msg[1] = scr_gettext("SCR_TEXT_3565") //  
        break
    case 683:
        if (global.flag[371] == 0 && doak == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3571") //  %%
            if (global.choice == 0)
            {
                sc = instance_create(0, 0, obj_soundcombo)
                with (sc)
                {
                    sound1 = snd_switchpull_n
                    sound2 = snd_spearappear
                    alarm[1] = 8
                }
                doak = 1
                global.msg[0] = scr_gettext("SCR_TEXT_3584") // * (The lasers were deactivated.)/%%
                if instance_exists(obj_laserswitch1)
                {
                    with (obj_laserswitch1)
                        event_user(0)
                }
            }
        }
        if (global.flag[371] == 1 && doak == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3591") //  %%
            if (global.choice == 0)
            {
                sc = instance_create(0, 0, obj_soundcombo)
                with (sc)
                {
                    sound1 = snd_switchpull_n
                    sound2 = snd_spearappear
                    alarm[1] = 8
                }
                doak = 1
                global.msg[0] = scr_gettext("SCR_TEXT_3604") // * (The lasers were reactivated.)/%%
                if instance_exists(obj_laserswitch1)
                {
                    with (obj_laserswitch1)
                        event_user(1)
                }
            }
        }
        break
    case 684:
        global.msg[0] = scr_gettext("SCR_TEXT_3612") // * Ring.../
        global.msg[1] = scr_gettext("SCR_TEXT_3613") // \TS \E3 \F6 \TA %
        global.msg[2] = scr_gettext("SCR_TEXT_3614") // \E1* Um.../
        global.msg[3] = scr_gettext("SCR_TEXT_3615") // \E0* I noticed you've been&  kind of quiet.../
        global.msg[4] = scr_gettext("SCR_TEXT_3616") // \W*\E8 Are you w-worried&  about meeting \RASGORE\W...?/
        global.msg[5] = scr_gettext("SCR_TEXT_3617") // \E2* .../
        global.msg[6] = scr_gettext("SCR_TEXT_3618") // \E0* W-well^1, don't worry^1,&  okay?/
        global.msg[7] = scr_gettext("SCR_TEXT_3619") // \E7* Th-the king is a&  really nice guy.../
        global.msg[8] = scr_gettext("SCR_TEXT_3620") // \E0* I'm sure you can&  talk to him^1, and.../
        global.msg[9] = scr_gettext("SCR_TEXT_3621") // * W-with your human&  soul^1, you can pass&  through the barrier!/
        global.msg[10] = scr_gettext("SCR_TEXT_3622") // * S-so no worrying^1, OK^1?&* J-just forget about it&  and smile./
        global.msg[11] = scr_gettext("SCR_TEXT_3623") // \TS \F0 \T0 %
        global.msg[12] = scr_gettext("SCR_TEXT_3624") // * Click.../%%
        break
    case 685:
        doak = 0
        noroom = 0
        global.msg[0] = scr_gettext("SCR_TEXT_3630") // * hey buddy^1, what's up^1?&* wanna buy a hot dog?/
        global.msg[1] = scr_gettext("SCR_TEXT_3631") // * it's only 30G.& &  Yes         No \C
        global.msg[2] = scr_gettext("SCR_TEXT_3632") //  
        if (global.flag[380] > 0 && global.item[7] != 0)
        {
            if (instance_number(obj_hotdog) < 30)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_3638") // * here^1.&* have fun./%%
                if (global.flag[380] == 1)
                {
                    global.msg[0] = scr_gettext("SCR_TEXT_3641") // * here's another hot&  dog./
                    global.msg[1] = scr_gettext("SCR_TEXT_3642") // * it's on the house^1.&* well^1, no^1.&* it's on you./%%
                }
                if (doak == 0)
                {
                    with (obj_hotdoggen)
                        event_user(0)
                    global.flag[380] += 1
                }
            }
            else
            {
                global.msg[0] = scr_gettext("SCR_TEXT_3653") // * sorry^1, thirty is&  the limit on&  head-dogs./%%
                if (global.flag[381] == 0)
                {
                    global.msg[0] = scr_gettext("SCR_TEXT_3656") // \TS*^1 \Tsi'll be 'frank' with&  you./
                    global.msg[1] = scr_gettext("SCR_TEXT_3657") // * as much as i like&  putting hot dogs&  on your head.../
                    global.msg[2] = scr_gettext("SCR_TEXT_3658") // * thirty is just&  an excessive number./
                    global.msg[3] = scr_gettext("SCR_TEXT_3659") // * twenty-nine^1, now&  that's fine^1, but&  thirty.../
                    global.msg[4] = scr_gettext("SCR_TEXT_3660") // * does it look like&  my arms can reach&  that high?/%%
                }
                global.flag[381] = 1
            }
        }
        break
    case 686:
        script_execute(scr_cost, 30)
        if (global.choice == 0)
        {
            if (afford == 1)
            {
                if (doak == 0)
                {
                    doak = 1
                    if (global.flag[379] != 1)
                        script_execute(scr_itemget, 38)
                    if (global.flag[379] == 1)
                        script_execute(scr_itemget, 39)
                    if (noroom == 0)
                    {
                        global.gold -= 30
                        global.flag[378] += 30
                    }
                }
            }
            if (noroom == 0)
            {
                if (afford == 1)
                {
                    global.msg[0] = scr_gettext("SCR_TEXT_3687") // * thanks, kid^1.&* here's your hot dog./%%
                    if (global.flag[379] == 0)
                    {
                        global.msg[0] = scr_gettext("SCR_TEXT_3690") // * thanks, kid^1.&* here's your 'dog./
                        global.msg[1] = scr_gettext("SCR_TEXT_3691") // * yeah^1. 'dog^1.&* apostrophe-dog^1.&* it's short for hot-dog./%%
                    }
                    if (global.flag[379] == 1)
                    {
                        global.msg[0] = scr_gettext("SCR_TEXT_3695") // * another h'dog^1?&* here you go.../
                        global.msg[1] = scr_gettext("SCR_TEXT_3696") // * whoops^1, i'm actually&  out of hot dogs./
                        global.msg[2] = scr_gettext("SCR_TEXT_3697") // * here^1, you can have&  a hot cat instead./%%
                    }
                    if (global.flag[379] == 2)
                    {
                        global.msg[0] = scr_gettext("SCR_TEXT_3701") // * another dog^1, coming&  right up.../
                        global.msg[1] = scr_gettext("SCR_TEXT_3702") // * ... you really like&  hot animals^1, don't&  you?/
                        global.msg[2] = scr_gettext("SCR_TEXT_3703") // * hey^1, i'm not judging./
                        global.msg[3] = scr_gettext("SCR_TEXT_3704") // * i'd be out of a job&  without folks like you./%%
                    }
                    if (global.flag[379] == 3)
                    {
                        global.msg[0] = scr_gettext("SCR_TEXT_3708") // * cool^1.&* here's that ''dog./
                        global.msg[1] = scr_gettext("SCR_TEXT_3709") // * apostrophe-apostrophe&  dog./
                        global.msg[2] = scr_gettext("SCR_TEXT_3710") // * it's short for&  apostrophe-dog./
                        global.msg[3] = scr_gettext("SCR_TEXT_3711") // * which is^1, in turn^1,&  short for.../%%
                    }
                    if (global.flag[379] == 4)
                    {
                        global.msg[0] = scr_gettext("SCR_TEXT_3715") // * another one^1?&* okay./
                        global.msg[1] = scr_gettext("SCR_TEXT_3716") // * careful^1.&* if you eat&  too many hot dogs.../
                        global.msg[2] = scr_gettext("SCR_TEXT_3717") // * you'll probably get&  huge like me./
                        global.msg[3] = scr_gettext("SCR_TEXT_3718") // * huge as in super-&  popular^1, i mean./
                        global.msg[4] = scr_gettext("SCR_TEXT_3719") // * i'm practically&  a hot-dog tycoon now./%%
                    }
                    global.flag[379] += 1
                }
                if (afford == 0)
                {
                    global.msg[0] = scr_gettext("SCR_TEXT_3725") // * whoops^1, you don't have&  enough cash./
                    global.msg[1] = scr_gettext("SCR_TEXT_3726") // * you should get a job^1.&* i've heard being a&  sentry pays well./%%
                }
            }
            if (noroom == 1)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_3729") // * you're holding too much^1.&* ... guess i'll just put&  it on your head./%%
                with (obj_hotdoggen)
                    event_user(0)
                global.flag[380] += 1
                noroom = 2
            }
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_3738") // * yeah^1, you've gotta&  save your money for&  college and spiders./%%
        break
    case 690:
        global.msg[0] = scr_gettext("SCR_TEXT_3743") // * Ring.../
        global.msg[1] = scr_gettext("SCR_TEXT_3744") // \TS \E3 \F6 \TA %
        global.msg[2] = scr_gettext("SCR_TEXT_3745") // * L-looks like you&  beat him!/
        global.msg[3] = scr_gettext("SCR_TEXT_3746") // \E0* Y-you did a really&  great job out there./
        global.msg[4] = scr_gettext("SCR_TEXT_3747") //  &  All thanks&  to you      ... \C
        global.msg[5] = scr_gettext("SCR_TEXT_3748") //  
        break
    case 691:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3754") // \E3* What^1?&* Oh no^1, I mean.../
            global.msg[1] = scr_gettext("SCR_TEXT_3755") // \E4* You were the one&  doing everything cool!/
            global.msg[2] = scr_gettext("SCR_TEXT_3756") // \E0* I just wrote some&  silly programs for&  your phone./
        }
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3760") // \E1* .../
            global.msg[1] = scr_gettext("SCR_TEXT_3761") // \E2* .../
            global.msg[2] = scr_gettext("SCR_TEXT_3762") // \E1* .../
        }
        global.msg[3] = scr_gettext("SCR_TEXT_3765") // \E2* .../
        global.msg[4] = scr_gettext("SCR_TEXT_3766") // \E4* ... umm^1, h-hey^1, this&  might sound strange^1,&  but.../
        global.msg[5] = scr_gettext("SCR_TEXT_3767") // \E6* ... c-can I tell&  you something?/
        global.msg[6] = scr_gettext("SCR_TEXT_3768") // \E9* .../
        global.msg[7] = scr_gettext("SCR_TEXT_3769") // \E4* B-before I met you^1,&  I d-didn't really.../
        global.msg[8] = scr_gettext("SCR_TEXT_3770") // \E9* I didn't really&  like myself very&  much./
        global.msg[9] = scr_gettext("SCR_TEXT_3771") // * For a long time^1,&  I f-felt like a&   total screw-up./
        global.msg[10] = scr_gettext("SCR_TEXT_3772") // \E9* L-like I couldn't&  do a-anything&  w-without.../
        global.msg[11] = scr_gettext("SCR_TEXT_3773") // \E9* W-without ending up&  letting everyone&  down./
        global.msg[12] = scr_gettext("SCR_TEXT_3774") // \E3* B-but...!/
        global.msg[13] = scr_gettext("SCR_TEXT_3775") // \E4* Guiding you has&  made me feel.../
        global.msg[14] = scr_gettext("SCR_TEXT_3776") // \E9* A lot better about&  myself./
        global.msg[15] = scr_gettext("SCR_TEXT_3777") // \E0* So... thanks for&  letting me help&  you./
        global.msg[16] = scr_gettext("SCR_TEXT_3778") // \E9* .../
        global.msg[17] = scr_gettext("SCR_TEXT_3779") // \E4* Uhhh^1, anyway^1, we're&  almost to the CORE./
        global.msg[18] = scr_gettext("SCR_TEXT_3780") // \E0* It's just past&  MTT Resort./
        global.msg[19] = scr_gettext("SCR_TEXT_3781") // \E6* Come on^1!&* Let's finish this!/%%
        global.msg[20] = scr_gettext("SCR_TEXT_3782") // \TS \F0 \T0 %
        global.msg[21] = scr_gettext("SCR_TEXT_3783") // * Click.../%%
        break
    case 692:
        global.msg[0] = scr_gettext("SCR_TEXT_3787") // \E0EUREKA!!!/
        global.msg[1] = scr_gettext("SCR_TEXT_3788") // I'VE FIGURED OUT&THE PUZZLE!!!/
        global.msg[2] = scr_gettext("SCR_TEXT_3789") // \E3YOU SEEM LIKE&YOU'RE HAVING&FUN^1, THOUGH.../
        global.msg[3] = scr_gettext("SCR_TEXT_3790") // \E0DO YOU ABSOLUTELY^1,&DAPSOLUTELY WANT&THE SOLUTION???/
        global.msg[4] = scr_gettext("SCR_TEXT_3791") // \TS \F0 \T0 %
        global.msg[5] = scr_gettext("SCR_TEXT_3792") // * (Do you absolutely^1,&  dapsolutely want the answer?)&         Yes         No\C
        global.msg[6] = scr_gettext("SCR_TEXT_3793") //  
        break
    case 693:
        scr_papface(0, 0)
        if (global.choice == 0)
        {
            global.msg[1] = scr_gettext("SCR_TEXT_3800") // THE^1!&SOLUTION^1!&IS!/
            global.msg[2] = scr_gettext("SCR_TEXT_3801") // (PLEASE IMAGINE&A DRUMROLL IN&YOUR HEAD)/
            global.msg[3] = scr_gettext("SCR_TEXT_3802") // ... THAT TREE&OVER THERE HAS&A SWITCH ON IT!/
            global.msg[4] = scr_gettext("SCR_TEXT_3803") // CHECK IT&OUTIE!!!/%%
        }
        if (global.choice == 1)
        {
            global.msg[1] = scr_gettext("SCR_TEXT_3807") // WOW..^1.&YOU'RE TRULY A&PUZZLE PASSIONEER!/
            global.msg[2] = scr_gettext("SCR_TEXT_3808") // I'M SO ENTHUSED&BY YOUR&ENTHUSIASM!!!/
            global.msg[3] = scr_gettext("SCR_TEXT_3809") // YOU CAN DO IT^1,&HUMAN!!!/%%
        }
        break
    case 694:
        global.msg[0] = scr_gettext("SCR_TEXT_3814") // I'VE FIGURED OUT&THE PUZZLE!!!/
        global.msg[1] = scr_gettext("SCR_TEXT_3815") // \E0DO YOU ABSOLUTELY^1,&DAPSOLUTELY WANT&THE SOLUTION???/
        global.msg[2] = scr_gettext("SCR_TEXT_3816") // \TS \F0 \T0 %
        global.msg[3] = scr_gettext("SCR_TEXT_3817") // * (Do you absolutely^1,&  dapsolutely want the answer?)&         Yes         No\C
        global.msg[4] = scr_gettext("SCR_TEXT_3818") //  
        break
    case 695:
        scr_papface(0, 0)
        if (global.choice == 0)
        {
            global.msg[1] = scr_gettext("SCR_TEXT_3825") // THE^1!&SOLUTION^1!&IS!/
            global.msg[2] = scr_gettext("SCR_TEXT_3826") // (PLEASE IMAGINE&A DRUMROLL IN&YOUR HEAD)/
            global.msg[3] = scr_gettext("SCR_TEXT_3827") // ... THAT TREE&OVER THERE HAS&A SWITCH ON IT!/
            global.msg[4] = scr_gettext("SCR_TEXT_3828") // CHECK IT&OUTIE!!!/%%
        }
        if (global.choice == 1)
        {
            global.msg[1] = scr_gettext("SCR_TEXT_3832") // WOW..^1.&YOU'RE TRULY A&PUZZLE PASSIONEER!/
            global.msg[2] = scr_gettext("SCR_TEXT_3833") // I'M SO ENTHUSED&BY YOUR&ENTHUSIASM!!!/
            global.msg[3] = scr_gettext("SCR_TEXT_3834") // YOU CAN DO IT^1,&HUMAN!!!/%%
        }
        break
    case 696:
        global.msg[0] = scr_gettext("SCR_TEXT_3839") // * (There's a switch on the&  trunk of this tree.)/
        global.msg[1] = scr_gettext("SCR_TEXT_3840") // * (Press it?)& &         Yes         No\C
        global.msg[2] = scr_gettext("SCR_TEXT_3841") //  
        break
    case 697:
        global.msg[0] = scr_gettext("SCR_TEXT_3845") //  %%
        if (global.choice == 0)
        {
            if (obj_xoxocontroller1.fvic != 1)
            {
                obj_xoxocontroller1.fvic = 1
                audio_play_sound(snd_switchpull_n,80,false)
            }
        }
        break
    case 698:
        global.msg[0] = scr_gettext("SCR_TEXT_3859") // OHO^1!&THE HUMAN ARRIVES!/
        global.msg[1] = scr_gettext("SCR_TEXT_3860") // ARE YOU READY TO&HANG OUT WITH&UNDYNE?/
        global.msg[2] = scr_gettext("SCR_TEXT_3861") // I HAVE A PLAN&TO MAKE YOU TWO&GREAT FRIENDS!/
        global.msg[3] = scr_gettext("SCR_TEXT_3862") // \TS \F0 \T0 %
        global.msg[4] = scr_gettext("SCR_TEXT_3863") // * (Will you hang out?)& &         Yes         No\C
        global.msg[5] = scr_gettext("SCR_TEXT_3864") //  
        break
    case 699:
        scr_papface(0, 3)
        if (global.choice == 0)
        {
            scr_papface(0, 0)
            global.msg[1] = scr_gettext("SCR_TEXT_3872") // OKAY^1!&STAND BEHIND ME!/%%
            if instance_exists(obj_undynedate_outside)
                obj_undynedate_outside.con = 5
        }
        if (global.choice == 1)
        {
            global.msg[1] = scr_gettext("SCR_TEXT_3878") // HMMM..^1.&STILL GETTING&READY?/
            global.msg[2] = scr_gettext("SCR_TEXT_3879") // \E0TAKE YOUR TIME!/%%
        }
        break
    case 700:
        global.msg[0] = scr_gettext("SCR_TEXT_3884") // OKAY^1!&ALL READIED-UP&TO HANG OUT!?/
        global.msg[1] = scr_gettext("SCR_TEXT_3885") // \TS \F0 \T0 %
        global.msg[2] = scr_gettext("SCR_TEXT_3886") // * (Will you hang out?)& &         Yes         No\C
        global.msg[3] = scr_gettext("SCR_TEXT_3887") //  
        break
    case 701:
        scr_papface(0, 0)
        if (global.choice == 0)
        {
            scr_papface(0, 0)
            global.msg[1] = scr_gettext("SCR_TEXT_3895") // OKAY^1!&STAND BEHIND ME!/%%
            if instance_exists(obj_undynedate_outside)
                obj_undynedate_outside.con = 5
        }
        if (global.choice == 1)
            global.msg[1] = scr_gettext("SCR_TEXT_3901") // TAKE YOUR TIME!/%%
        break
    case 702:
        scr_papface(0, 0)
        if (global.choice == 0)
        {
            scr_papface(0, 0)
            global.msg[1] = scr_gettext("SCR_TEXT_3910") // OKAY^1!&STAND BEHIND ME!/%%
            if instance_exists(obj_undynedate_outside)
                obj_undynedate_outside.con = 5
        }
        if (global.choice == 1)
            global.msg[1] = scr_gettext("SCR_TEXT_3916") // TAKE YOUR TIME!/%%
        break
    case 703:
        global.msg[0] = scr_gettext("SCR_TEXT_3921") // \E4* .../
        global.msg[1] = scr_gettext("SCR_TEXT_3922") // \E5* So why are YOU&  here?/
        global.msg[2] = scr_gettext("SCR_TEXT_3923") // \E4* To rub your victory&  in my face?/
        global.msg[3] = scr_gettext("SCR_TEXT_3924") // \E4* To humiliate me&  even further?/
        global.msg[4] = scr_gettext("SCR_TEXT_3925") // \E1* IS THAT IT? & &  Yes         No\C
        global.msg[5] = scr_gettext("SCR_TEXT_3926") //  
        break
    case 704:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3932") // \E2* Oh-ho-ho-ho./
            global.msg[1] = scr_gettext("SCR_TEXT_3933") // \E1* Well^1, I've got news&  for you^1, BRAT./
            global.msg[2] = scr_gettext("SCR_TEXT_3934") // \E2* You're on MY&  battlefield now./
            global.msg[3] = scr_gettext("SCR_TEXT_3935") // \E3* And you AREN'T&  going to&  humiliate me./
            global.msg[4] = scr_gettext("SCR_TEXT_3936") // \E3* I'll TELL you&  what's going to&  happen./
            global.msg[5] = scr_gettext("SCR_TEXT_3937") // \E0* We're going to&  hang out./
            global.msg[6] = scr_gettext("SCR_TEXT_3938") // \E2* We're going to&  have a good&  time./
            global.msg[7] = scr_gettext("SCR_TEXT_3939") // \M1* We're going to&  become " + '"' + "friends." + '"' + "/
            global.msg[8] = scr_gettext("SCR_TEXT_3940") // \E3* You'll become so&  enamored with me.../
            global.msg[9] = scr_gettext("SCR_TEXT_3941") // \E1* YOU'LL be the one&  feeling humiliated&  for your actions!/
            global.msg[10] = scr_gettext("SCR_TEXT_3942") // \E6* Fuhuhuhuhu!!/
            global.msg[11] = scr_gettext("SCR_TEXT_3943") // \M2* It's the perfect&  revenge!!!/
            global.msg[12] = scr_gettext("SCR_TEXT_3944") // \E1* Err.../
            global.msg[13] = scr_gettext("SCR_TEXT_3945") // \E9* Why don't you&  have a seat?/%%
            if instance_exists(obj_undynedate_inside)
                obj_undynedate_inside.con = 50
        }
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3951") // \E4* Then why are you&  here?/
            global.msg[1] = scr_gettext("SCR_TEXT_3952") // \E1* ...!/
            global.msg[2] = scr_gettext("SCR_TEXT_3953") // \E2* Wait^1, I get it./
            global.msg[3] = scr_gettext("SCR_TEXT_3954") // \E3* You think that I'm&  gonna be friends&  with you^1, huh?/
            global.msg[4] = scr_gettext("SCR_TEXT_3955") // * Right???&              NEVER &  Yes         with you\C
            global.msg[5] = scr_gettext("SCR_TEXT_3956") //  
        }
        break
    case 705:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3963") // \E6* Really^1?&* How delightful!^1!&* I accept!/
            global.msg[1] = scr_gettext("SCR_TEXT_3964") // * Let's all frolick&  in the fields&  of friendship!/
            global.msg[2] = scr_gettext("SCR_TEXT_3965") // \E2* ...NOT!/
            global.msg[3] = scr_gettext("SCR_TEXT_3966") // \E2* Why would I EVER&  be friends with&  YOU!?/
            global.msg[4] = scr_gettext("SCR_TEXT_3967") // \E3* If you weren't my&  houseguest^1, I'd beat&  you up right now!/
            global.msg[5] = scr_gettext("SCR_TEXT_3968") // \E0* You're the enemy&  of everyone's hopes&  and dreams!/
            global.msg[6] = scr_gettext("SCR_TEXT_3969") // \E1* I WILL NEVER&  BE YOUR FRIEND./
            global.msg[7] = scr_gettext("SCR_TEXT_3970") // \E3* Now get out of&  my house!/%%
            if instance_exists(obj_undynedate_inside)
                obj_undynedate_inside.con = 40
        }
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_3976") // \E1* WHAT?/
            global.msg[1] = scr_gettext("SCR_TEXT_3977") // \E4* First you parade&  into my house^1,&  then you INSULT me?/
            global.msg[2] = scr_gettext("SCR_TEXT_3978") // \E2* You little BRAT^1!&* I have half a&  mind to.../
            global.msg[3] = scr_gettext("SCR_TEXT_3979") // \E1* .../
            global.msg[4] = scr_gettext("SCR_TEXT_3980") // \E3* Wait./
            global.msg[5] = scr_gettext("SCR_TEXT_3981") // \E2* I'll prove you&  WRONG./
            global.msg[6] = scr_gettext("SCR_TEXT_3982") // \E3* We ARE going to&  be friends./
            global.msg[7] = scr_gettext("SCR_TEXT_3983") // \E1* In fact.../
            global.msg[8] = scr_gettext("SCR_TEXT_3984") // \E3* We./
            global.msg[9] = scr_gettext("SCR_TEXT_3985") // \M1* Are going to be&  BESTIES./
            global.msg[10] = scr_gettext("SCR_TEXT_3986") // * I'll make you like&  me so much.../
            global.msg[11] = scr_gettext("SCR_TEXT_3987") // \E1* Your WHOLE LIFE&  will revolve around&  me!!/
            global.msg[12] = scr_gettext("SCR_TEXT_3988") // \M2* It's the perfect&  revenge!!!/
            global.msg[13] = scr_gettext("SCR_TEXT_3989") // \E6* FUHUHUHUHU!!!/
            global.msg[14] = scr_gettext("SCR_TEXT_3990") // \E1* Err.../
            global.msg[15] = scr_gettext("SCR_TEXT_3991") // \E9* Now^1, why don't&  you have a seat?/%%
            if instance_exists(obj_undynedate_inside)
                obj_undynedate_inside.con = 50
        }
        break
    case 706:
        global.msg[0] = scr_gettext("SCR_TEXT_3998") // * (Sit down and progress?)& &         Yes         No\C
        global.msg[1] = scr_gettext("SCR_TEXT_3999") //  
        break
    case 707:
        global.msg[0] = scr_gettext("SCR_TEXT_4003") //  %%
        if (global.choice == 0)
            obj_undynedate_inside.con = 60
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4010") //  %%
            global.msg[1] = scr_gettext("SCR_TEXT_4011") //  %%
        }
        break
    case 708:
        global.msg[0] = scr_gettext("SCR_TEXT_4016") // * That sugar's for&  the tea./
        global.msg[1] = scr_gettext("SCR_TEXT_4017") // \E2* I'm not gonna give&  you a cup of&  sugar!/
        global.msg[2] = scr_gettext("SCR_TEXT_4018") // \E6* What do I look&  like^1, the ice-cream&  woman?/
        global.msg[3] = scr_gettext("SCR_TEXT_4019") // \E2* Do human ice-cream&  women TERRORIZE HUMANITY&  with ENERGY SPEARS?/
        global.msg[4] = scr_gettext("SCR_TEXT_4020") // \E3* Are their ice-cream&  songs a PRELUDE TO&  DESTRUCTION?/
        global.msg[5] = scr_gettext("SCR_TEXT_4021") // \E1* IS THAT IT? & &  Yes         No\C
        global.msg[6] = scr_gettext("SCR_TEXT_4022") //  
        break
    case 709:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4028") // \E1* ... what^1?&* REALLY?/
            global.msg[1] = scr_gettext("SCR_TEXT_4029") // \E6* That rules!!!/%%
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4033") // \E3* That's what I&  thought./%%
        break
    case 710:
        global.msg[0] = scr_gettext("SCR_TEXT_4038") // * Envision these&  vegetables as your&  greatest enemy!/
        global.msg[1] = scr_gettext("SCR_TEXT_4039") // \E2* Now!^1!&* Pound them to dust&  with your fists!!/
        global.msg[2] = scr_gettext("SCR_TEXT_4041") // \TS \F0 \T0 %
        global.msg[3] = scr_gettext("SCR_TEXT_4042") // * (How will you pound?)& &         Strong      Wimpy\C
        global.msg[4] = scr_gettext("SCR_TEXT_4043") //  
        break
    case 711:
        if (global.choice == 0)
        {
            obj_undynedate_inside.con = 140
            global.msg[0] = scr_gettext("SCR_TEXT_4050") // * (You punch the vegetables&  at full force^1.&* You knock over a tomato.)/
            scr_undface(1, 6)
            global.msg[2] = scr_gettext("SCR_TEXT_4052") // * YEAH^1!&* YEAH!/
            global.msg[3] = scr_gettext("SCR_TEXT_4053") // \E1* Our hearts are&  uniting against these&  healthy ingredients!/
            global.msg[4] = scr_gettext("SCR_TEXT_4054") // \M2* NOW IT'S MY TURN!/
            global.msg[5] = scr_gettext("SCR_TEXT_4055") // * NGAHHH!/%%
        }
        if (global.choice == 1)
        {
            obj_undynedate_inside.con = 141
            global.msg[0] = scr_gettext("SCR_TEXT_4060") // * (You pet the vegetables&  in an affectionate&  manner.)/
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("SCR_TEXT_4062") // * OH MY GOD!!^1!&* STOP PETTING THE&  ENEMY!!!/
            global.msg[3] = scr_gettext("SCR_TEXT_4063") // \M2* I'll show you&  how it's done!/
            global.msg[4] = scr_gettext("SCR_TEXT_4064") // * NGAHHH!/%%
        }
        break
    case 712:
        global.msg[0] = scr_gettext("SCR_TEXT_4071") // * ... we add the&  noodles!/
        global.msg[1] = scr_gettext("SCR_TEXT_4072") // \E0* Homemade noodles&  are the best!/
        global.msg[2] = scr_gettext("SCR_TEXT_4073") // \E6* BUT I JUST BUY&  STORE-BRAND!/
        global.msg[3] = scr_gettext("SCR_TEXT_4074") // \M2* THEY'RE THE&  CHEAPEST!!!/
        global.msg[4] = scr_gettext("SCR_TEXT_4075") // \E1* NGAHHHHHHHHH&  HHHHHHHHHH!!!/
        global.msg[5] = scr_gettext("SCR_TEXT_4076") // \E9* Uhh^1, just put them&  in the pot./
        global.msg[6] = scr_gettext("SCR_TEXT_4077") // \TS \F0 \T0 %
        global.msg[7] = scr_gettext("SCR_TEXT_4078") // \M0* (How will you put them in?)& &         Fiercely    Careful\C
        global.msg[8] = scr_gettext("SCR_TEXT_4079") //  
        break
    case 713:
        if (global.choice == 0)
        {
            obj_undynedate_inside.con = 199
            global.msg[0] = scr_gettext("SCR_TEXT_4086") // * (You throw everything into&  the pot as hard as you can^1,&  including the box.)/
            global.msg[1] = scr_gettext("SCR_TEXT_4087") // * (It clanks against the&  empty bottom.)/
            scr_undface(2, 6)
            global.msg[3] = scr_gettext("SCR_TEXT_4089") // \M2* YEAH!!^1!&* I'M INTO IT!!!/%%
        }
        if (global.choice == 1)
        {
            obj_undynedate_inside.con = 200
            global.msg[0] = scr_gettext("SCR_TEXT_4094") // * (You place the noodles&  in one at a time.)/
            global.msg[1] = scr_gettext("SCR_TEXT_4095") // * (They clank against the&  empty bottom.)/
            scr_undface(2, 9)
            global.msg[3] = scr_gettext("SCR_TEXT_4097") // * Nice???/%%
        }
        break
    case 714:
        global.msg[0] = scr_gettext("SCR_TEXT_4103") // \E0* Humans suck^1, but&  their history..^1.&* Kinda rules./
        global.msg[1] = scr_gettext("SCR_TEXT_4104") // \E2* Case in point^1:&* This giant sword!/
        global.msg[2] = scr_gettext("SCR_TEXT_4105") // \E0* Historically^1, humans&  wielded swords up&  to 10x their size./
        global.msg[3] = scr_gettext("SCR_TEXT_4106") // \E1* RIGHT?& &  True        False\C
        global.msg[4] = scr_gettext("SCR_TEXT_4107") //  
        break
    case 715:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4113") // \E6* Heh^1, I knew it!/
            global.msg[1] = scr_gettext("SCR_TEXT_4114") // \E2* When I first heard&  that^1, I immediately&  wanted one!/
            global.msg[2] = scr_gettext("SCR_TEXT_4115") // \E0* So me and Alphys&  built a giant&  sword together./
            global.msg[3] = scr_gettext("SCR_TEXT_4116") // \E0* She figured out all&  the specs herself.../
            global.msg[4] = scr_gettext("SCR_TEXT_4117") // \E6* She's smart^1, huh!?/%%
        }
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4121") // \E2* Pfft^1!&* You liar!/
            global.msg[1] = scr_gettext("SCR_TEXT_4122") // \E3* I've READ Alphys's&  human history book&  collection!/
            global.msg[2] = scr_gettext("SCR_TEXT_4123") // \E3* I know all about&  your giant swords.../
            global.msg[3] = scr_gettext("SCR_TEXT_4124") // \E3* Your colossal^1,&  alien-fighting&  robots.../
            global.msg[4] = scr_gettext("SCR_TEXT_4125") // * Your supernatural&  princesses.../
            global.msg[5] = scr_gettext("SCR_TEXT_4126") // \E6* Heh^1! There's no&  way you're gonna&  fool me!!!/%%
        }
        break
    case 716:
        global.msg[0] = scr_gettext("SCR_TEXT_4131") // * (Look inside the bone drawer?)& &         Yes         No\C
        global.msg[1] = scr_gettext("SCR_TEXT_4132") //  
        break
    case 717:
        global.msg[0] = scr_gettext("SCR_TEXT_4136") //  %%
        if (global.choice == 0)
        {
            with (obj_mainchara)
                uncan = 1
            obj_bonedrawer_check.con = 5
        }
        break
    case 720:
        global.msg[0] = scr_gettext("SCR_TEXT_4147") // \M5* WHAT A SENSATIONAL OPPORTUNITY&  FOR A STORY!/
        global.msg[1] = scr_gettext("SCR_TEXT_4148") // \M3* I CAN SEE THE HEADLINE NOW:/
        global.msg[2] = scr_gettext("SCR_TEXT_4149") // \M4* " + '"' + "A DOG EXISTS SOMEWHERE." + '"' + "/
        global.msg[3] = scr_gettext("SCR_TEXT_4150") // \M2* FRANKLY^1, I'M BLOWN AWAY./
        global.msg[4] = scr_gettext("SCR_TEXT_4151") // * (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[5] = scr_gettext("SCR_TEXT_4152") //  
        break
    case 721:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4159") //  %%
            obj_mettnewsevent.eventchoice = 1
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4165") //  %%
        break
    case 722:
        global.msg[0] = scr_gettext("SCR_TEXT_4170") // \M5* THIS DOG..^1.&* STILL EXISTS!/
        global.msg[1] = scr_gettext("SCR_TEXT_4171") // * THIS STORY..^1.&* JUST KEEPS GETTING&  BETTER AND BETTER!/
        global.msg[2] = scr_gettext("SCR_TEXT_4172") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[3] = scr_gettext("SCR_TEXT_4173") //  
        break
    case 723:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4179") //  %%
            obj_mettnewsevent.eventchoice = 1
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4185") //  %%
        break
    case 724:
        global.msg[0] = scr_gettext("SCR_TEXT_4191") // \M5* OH MY!!!!/
        global.msg[1] = scr_gettext("SCR_TEXT_4192") // \M2* ... IT'S A COMPLETELY&  NONDESCRIPT GLASS OF WATER./
        global.msg[2] = scr_gettext("SCR_TEXT_4193") // \M4* BUT ANYTHING CAN MAKE&  A GREAT STORY WITH ENOUGH&  SPIN!/
        global.msg[3] = scr_gettext("SCR_TEXT_4194") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[4] = scr_gettext("SCR_TEXT_4195") //  
        break
    case 725:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4201") //  %%
            obj_mettnewsevent.eventchoice = 2
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4207") //  %%
        break
    case 726:
        global.msg[0] = scr_gettext("SCR_TEXT_4214") // \M3* I'M HONORED TO BE IN THE&  PRESENCE OF SUCH A HUGE&  LUKEWARM WATER FAN^1, FOLKS!/
        global.msg[1] = scr_gettext("SCR_TEXT_4215") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[2] = scr_gettext("SCR_TEXT_4216") //  
        break
    case 727:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4222") //  %%
            obj_mettnewsevent.eventchoice = 2
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4228") //  %%
        break
    case 728:
        global.msg[0] = scr_gettext("SCR_TEXT_4234") // \M5* OH NO!!^1!&* THAT MOVIE SCRIPT!!^1!&* HOW'D??^1? THAT GET THERE???/
        global.msg[1] = scr_gettext("SCR_TEXT_4235") // \M4* IT'S A SUPER-JUICY SNEAK&  PREVIEW OF MY LATEST&  GUARANTEED-NOT-TO-BOMB FILM:/
        global.msg[2] = scr_gettext("SCR_TEXT_4236") // \M6* METTATON THE MOVIE XXVIII..^1.&  STARRING METTATON!/
        global.msg[3] = scr_gettext("SCR_TEXT_4237") // \M1* I'VE HEARD THAT LIKE THE&  OTHER FILMS.../
        global.msg[4] = scr_gettext("SCR_TEXT_4238") // \M1* IT CONSISTS MOSTLY OF A SINGLE&  FOUR-HOUR SHOT OF ROSE PETALS&  SHOWERING ON MY RECLINING BODY./
        global.msg[5] = scr_gettext("SCR_TEXT_4239") // \M5* OOH!!^1!&* BUT THAT'S!!^1!&* NOT CONFIRMED!!/
        global.msg[6] = scr_gettext("SCR_TEXT_4240") // \M5* YOU WOULDN'T (COUGH) SPOIL MY&  MOVIE FOR EVERYONE WITH A&  PROMOTIONAL STORY^1, WOULD YOU?/
        global.msg[7] = scr_gettext("SCR_TEXT_4241") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[8] = scr_gettext("SCR_TEXT_4242") //  
        break
    case 729:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4248") //  %%
            obj_mettnewsevent.eventchoice = 3
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4254") // \M5* PHEW!!^1! THAT WAS CLOSE!^1!&* YOU ALMOST GAVE ME A BUNCH&  OF FREE ADVERTISEMENT!!/%%
            global.msg[1] = scr_gettext("SCR_TEXT_4255") // \M2 %%
        }
        break
    case 730:
        global.msg[0] = scr_gettext("SCR_TEXT_4260") // \M3* OH^1!&* YOU'RE BACK!/
        global.msg[1] = scr_gettext("SCR_TEXT_4261") // \M6* THAT'S RIGHT^1, FOLKS^1!&* IT SEEMS NO ONE CAN RESIST&  THE ALLURE OF MY NEW FILM!/
        global.msg[2] = scr_gettext("SCR_TEXT_4262") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[3] = scr_gettext("SCR_TEXT_4263") //  
        break
    case 731:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4270") //  %%
            obj_mettnewsevent.eventchoice = 3
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4276") //  %%
        break
    case 732:
        global.msg[0] = scr_gettext("SCR_TEXT_4282") // \M4* BASKETBALL'S A BLAST^1, ISN'T IT^1,&  DARLING?/
        global.msg[1] = scr_gettext("SCR_TEXT_4283") // \M1* TOO BAD YOU CAN'T PLAY WITH&  THESE BALLS./
        global.msg[2] = scr_gettext("SCR_TEXT_4284") // \M4* THEY'RE MTT-BRAND FASHION&  BASKETBALLS^1.&* FOR WEARING^1, NOT PLAYING./
        global.msg[3] = scr_gettext("SCR_TEXT_4285") // \M6* YOU CAN'T GET RICH AND FAMOUS&  LIKE MOI WITHOUT BEAUTIFYING&  A FEW ORBS./
        global.msg[4] = scr_gettext("SCR_TEXT_4286") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[5] = scr_gettext("SCR_TEXT_4287") //  
        break
    case 733:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4293") //  %%
            obj_mettnewsevent.eventchoice = 4
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4299") //  %%
        break
    case 734:
        global.msg[0] = scr_gettext("SCR_TEXT_4304") // * IT SEEMS OUR REPORTER IS DRAWN&  TO SPORTS LIKE MOTHS TO A&  FLAMING BASKETBALL HOOP./
        global.msg[1] = scr_gettext("SCR_TEXT_4305") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[2] = scr_gettext("SCR_TEXT_4306") //  
        break
    case 735:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4312") //  %%
            obj_mettnewsevent.eventchoice = 4
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4318") //  %%
        break
    case 736:
        global.msg[0] = scr_gettext("SCR_TEXT_4326") // \M5* OH MY^1! IT'S A PRESENT^1!&* AND IT'S ADDRESSED TO YOU^1,&  DARLING!/
        global.msg[1] = scr_gettext("SCR_TEXT_4327") // \M6* AREN'T YOU JUST BURSTING&  WITH EXCITEMENT?/
        global.msg[2] = scr_gettext("SCR_TEXT_4328") // \M5* WHAT COULD BE INSIDE^1?&* WELL^1, NO TIME LIKE THE&  " + '"' + "PRESENT" + '"' + " TO FIND OUT!/
        global.msg[3] = scr_gettext("SCR_TEXT_4329") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[4] = scr_gettext("SCR_TEXT_4330") //  
        break
    case 737:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4336") //  %%
            obj_mettnewsevent.eventchoice = 5
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4342") //  %%
        break
    case 738:
        global.msg[0] = scr_gettext("SCR_TEXT_4347") // \M4* READY FOR YOUR..^1.&* PRESENTATION?/
        global.msg[1] = scr_gettext("SCR_TEXT_4348") // \M4* (... LET'S CUT THAT ONE IN&  POST.)/
        global.msg[2] = scr_gettext("SCR_TEXT_4349") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[3] = scr_gettext("SCR_TEXT_4350") //  
        break
    case 739:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4356") //  %%
            obj_mettnewsevent.eventchoice = 5
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4362") //  %%
        break
    case 740:
        global.msg[0] = scr_gettext("SCR_TEXT_4369") // \M5* OOH LA LA^1!&* THIS VIDEO GAME YOU FOUND..^1.&* IS DYNAMITE!!!/
        global.msg[1] = scr_gettext("SCR_TEXT_4370") // \M4* THOUGH I DON'T MAKE AN&  APPEARANCE IN IT UNTIL&  THREE-FOURTHS IN./
        global.msg[2] = scr_gettext("SCR_TEXT_4371") // \M3* BUT I LIKE THAT./
        global.msg[3] = scr_gettext("SCR_TEXT_4372") // \M6* APPEARING FROM THE HEAVENS LIKE&  MANNA^1, SLAKING THE AUDIENCE'S&  HUNGER FOR GORGEOUS ROBOTS.../
        global.msg[4] = scr_gettext("SCR_TEXT_4373") // \M5* OOH^1!&* THAT'S METTATON!/
        global.msg[5] = scr_gettext("SCR_TEXT_4374") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[6] = scr_gettext("SCR_TEXT_4375") //  
        break
    case 741:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4381") //  %%
            obj_mettnewsevent.eventchoice = 6
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4387") //  %%
        break
    case 742:
        global.msg[0] = scr_gettext("SCR_TEXT_4392") // * AH^1, YOU UNDERSTAND./
        global.msg[1] = scr_gettext("SCR_TEXT_4393") // * THIS IS A GAME WHERE YOU&  SHOULD CHECK EVERYTHING&  TWICE./
        global.msg[2] = scr_gettext("SCR_TEXT_4394") // \M2* (REPORT THIS ONE?)& &         Report      Look More\C
        global.msg[3] = scr_gettext("SCR_TEXT_4395") //  
        break
    case 743:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_4401") //  %%
            obj_mettnewsevent.eventchoice = 6
            obj_mettnewsevent.con = 50
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_4407") //  %%
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
    case 829:
        doak = 0
        noroom = 0
        if (global.flag[495] < 8)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5250") // * (Buy chips for 25G?)& &         Buy         No \C
            global.msg[1] = scr_gettext("SCR_TEXT_5251") //  
        }
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5255") // * (There were no chips left&  in the machine.)/%%
            global.msg[1] = scr_gettext("SCR_TEXT_5256") //  
        }
        break
    case 830:
        script_execute(scr_cost, 25)
        if (global.choice == 0)
        {
            if (afford == 1)
            {
                if (doak == 0)
                {
                    doak = 1
                    script_execute(scr_itemget, 58)
                    if (noroom == 0)
                    {
                        global.gold -= 25
                        global.flag[495] += 1
                    }
                }
            }
        }
        if (noroom == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5274") // * (The vending machine&  dispensed some chisps.)/%%
            if (afford == 0)
                global.msg[0] = scr_gettext("SCR_TEXT_5275") // * (You didn't have enough&  gold.)/%%
        }
        if (noroom == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_5277") // * (You are carrying too&  many items.)/%%
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_5280") // *%%
        break
    case 853:
        global.msg[0] = scr_gettext("SCR_TEXT_5541") // * (It's a small white dog.^1)&* (It's fast asleep...)/
        global.msg[1] = scr_gettext("SCR_TEXT_5542") // * (Fight the dog?)& &         Yes         No\C
        global.msg[2] = scr_gettext("SCR_TEXT_5543") //  
        break
    case 854:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5550") // * (Can't fight the dog.)/
            global.msg[1] = scr_gettext("SCR_TEXT_5551") // * (Seems like the fabric it's&  sleeping on has too many&  holes in it.)/
            global.msg[2] = scr_gettext("SCR_TEXT_5552") // * (Seems like the dog needs&  to " + '"' + "patch" + '"' + " the fabric.)/
            global.msg[3] = scr_gettext("SCR_TEXT_5553") // * (Then you can fight the dog.^1)&* (... maybe.)/
            global.msg[4] = scr_gettext("SCR_TEXT_5554") // * (Upon closer examination^1,&  the holes in the fabric&  seem to be growing.)/
            global.msg[5] = scr_gettext("SCR_TEXT_5555") // * (Might take a while for the&  dog to fix all of them.)/
            global.msg[6] = scr_gettext("SCR_TEXT_5556") // * (Dogs aren't usually very&  good at knitting.)/
            global.msg[7] = scr_gettext("SCR_TEXT_5557") // * (A crocheting dog is out of&  the question.)/%%
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_5561") // * (Let sleeping dogs lie^1, instead&  of fighting them.^1)&* (That's how the saying goes.)/%%
        break
    case 860:
        global.msg[0] = scr_gettext("SCR_TEXT_5566") // * (Knock knock)./
        if (global.flag[262] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5569") // * Oooooaaah ^1!&* Room service !/
            global.msg[1] = scr_gettext("SCR_TEXT_5570") // * Got my " + '"' + "Sea Tea" + '"' + " ?& &         Yes         No\C
            global.msg[2] = scr_gettext("SCR_TEXT_5571") //  
            if (global.flag[7] == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_5575") // * Room service never came ^1.&* (Sigh ...)/%%
        }
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5581") // * Thanks a million ./%%
            if (global.flag[7] == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_5585") // * (No response.)/%%
        }
        break
    case 861:
        if (global.choice == 0)
        {
            scr_itemremove(41)
            if (removed == true)
            {
                global.gold += 99
                global.flag[262] = 1
                global.msg[0] = scr_gettext("SCR_TEXT_5598") // * (You pour the Sea Tea under&  the door.)/
                global.msg[1] = scr_gettext("SCR_TEXT_5599") // * HUH !?!?!?!^2?&* That's just the way I want ^1!&* Here's a tip ./
                global.msg[2] = scr_gettext("SCR_TEXT_5600") // * (You got 99G.)/%%
            }
            else
                global.msg[0] = scr_gettext("SCR_TEXT_5604") // * ..^1.&* No you don't ./%%
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_5609") // * Then ...!?/%%
        break
    case 862:
        global.msg[0] = scr_gettext("SCR_TEXT_5614") // * (Knock knock)./
        if (global.flag[263] == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5617") // * Oooooaaah ^1!&* Room service !/
            global.msg[1] = scr_gettext("SCR_TEXT_5618") // * Got my " + '"' + "Cinnamon Bun" + '"' + " ?& &         Yes         No\C
            global.msg[2] = scr_gettext("SCR_TEXT_5619") //  
            if (global.flag[7] == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_5623") // * Room service never came ^1.&* (Sigh ...)/%%
        }
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5628") // * Thanks a trillion ./%%
            if (global.flag[7] == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_5632") // * (No response.)/%%
        }
        break
    case 863:
        if (global.choice == 0)
        {
            scr_itemremove(21)
            if (removed == true)
            {
                global.gold += 99
                global.flag[263] = 1
                global.msg[0] = scr_gettext("SCR_TEXT_5646") // * (You flatten the Cinnamon Bun&  until it's paper thin.)&* (You slide it under the door.)/
                global.msg[1] = scr_gettext("SCR_TEXT_5647") // * HUH !?!?!?!^2?&* That's just the way I want ^1!&* Here's a tip ./
                global.msg[2] = scr_gettext("SCR_TEXT_5648") // * (You got 99G.)/%%
            }
            else
                global.msg[0] = scr_gettext("SCR_TEXT_5652") // * ..^1.&* No you don't ./%%
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_5657") // * Then ...!?/%%
        break
    case 864:
        global.msg[0] = scr_gettext("SCR_TEXT_5662") // * (You hear shuffling.)/
        global.msg[1] = scr_gettext("SCR_TEXT_5663") // * (Seems like you could put&  something under the door.)/
        global.msg[2] = scr_gettext("SCR_TEXT_5664") //  & &         Put         No Put\C
        global.msg[3] = scr_gettext("SCR_TEXT_5665") //  
        if (global.flag[7] == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_5669") // * (No response.)/%%
        break
    case 865:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5676") // * (...)/
            global.msg[1] = scr_gettext("SCR_TEXT_5677") // * (But you didn't have anything&  appealing.)/%%
            type = 0
            scr_itemcheck(38)
            if (haveit == true && global.flag[264] == 0)
                type = 1
            scr_itemcheck(39)
            if (haveit == true)
                type = 2
            scr_itemcheck(28)
            if (haveit == true)
                type = 3
            scr_itemcheck(29)
            if (haveit == true)
                type = 4
            scr_itemcheck(30)
            if (haveit == true)
                type = 4
            scr_itemcheck(31)
            if (haveit == true)
                type = 4
            scr_itemcheck(32)
            if (haveit == true)
                type = 4
            scr_itemcheck(33)
            if (haveit == true)
                type = 4
            scr_itemcheck(34)
            if (haveit == true)
                type = 4
            if (type == 1 && global.flag[264] == 0)
            {
                scr_itemremove(38)
                scr_itemget(62)
                global.msg[0] = scr_gettext("SCR_TEXT_5705") // * (You put a Hot Dog in front&  of the door.)/
                global.msg[1] = scr_gettext("SCR_TEXT_5706") // * (A white paw shoots out from&  under the door.)/
                global.msg[2] = scr_gettext("SCR_TEXT_5707") // * (It tries to pull the Hot Dog&  into its room...)/
                global.msg[3] = scr_gettext("SCR_TEXT_5708") // * (But it keeps pressing down too&  hard^1, and the hot dog keeps&  spinning away.)/
                global.msg[4] = scr_gettext("SCR_TEXT_5709") // * (...)/
                global.msg[5] = scr_gettext("SCR_TEXT_5710") // * (It finally succeeds.)/
                global.msg[6] = scr_gettext("SCR_TEXT_5711") // * (...)/
                global.msg[7] = scr_gettext("SCR_TEXT_5712") // * (You hear the grinding of&  stone.)/
                global.msg[8] = scr_gettext("SCR_TEXT_5713") // * (A single hushpuppy slides&  out from under the door.)/
                global.msg[9] = scr_gettext("SCR_TEXT_5714") // * (You got Hush Puppy.)/%%
                global.flag[264] = 1
            }
            if (type == 2)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_5720") // * (You put a Hot Cat in front&  of the door.)/
                global.msg[1] = scr_gettext("SCR_TEXT_5721") // * (You hear growling...)/%%
            }
            if (type == 3)
            {
                scr_itemremove(28)
                global.msg[0] = scr_gettext("SCR_TEXT_5727") // * (You put a Dog Salad in front&  of the door.^1)&* (It slides underneath.)/
                global.msg[1] = scr_gettext("SCR_TEXT_5728") // * (...)/
                global.msg[2] = scr_gettext("SCR_TEXT_5729") // * (The Dog Salad was absorbed&  by the darkness.)/%%
            }
            if (type == 4)
            {
                rr = choose(29, 30, 31, 32, 33, 34)
                scr_itemget(rr)
                global.msg[0] = scr_gettext("SCR_TEXT_5736") // * (You put a Dog Residue in&  front of the door.)/
                global.msg[1] = scr_gettext("SCR_TEXT_5737") // * (It slides underneath the door^1,&  as if pulled by a magnet.)/
                global.msg[2] = scr_gettext("SCR_TEXT_5738") // * (...)/
                if (noroom == 1)
                    global.msg[3] = scr_gettext("SCR_TEXT_5743") // * (ZOMMM!!^1!)&* (It shoots back out at a&  high speed!)/%%
                else
                    global.msg[3] = scr_gettext("SCR_TEXT_5747") // * (Two Dog Residues slowly slide&  back out from underneath&  the door.)/%%
            }
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_5755") //  %%
        break
    case 866:
        global.msg[0] = scr_gettext("SCR_TEXT_5761") // * Yes^1, we know^1.&* The elevator to the city&  is NOT working./
        global.msg[1] = scr_gettext("SCR_TEXT_5762") // * Because of this incident^1, rooms&  are running at a special rate!/
        global.msg[2] = scr_gettext("SCR_TEXT_5763") // * 200G a room^1. Interested^1?& &         Stay        Do not\C
        global.msg[3] = scr_gettext("SCR_TEXT_5764") //  
        if (global.flag[267] == 2)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5768") // * 200G a room^1. Interested^1?& &         Stay        Do not\C
            global.msg[1] = scr_gettext("SCR_TEXT_5769") //  
        }
        if (global.flag[267] == 1)
        {
            global.flag[267] = 2
            global.msg[0] = scr_gettext("SCR_TEXT_5774") // * Did you enjoy your stay?/
            global.msg[1] = scr_gettext("SCR_TEXT_5775") // * What^1?&* Room..^1.&* Key?/
            global.msg[2] = scr_gettext("SCR_TEXT_5776") // * No^1, we don't do that./
            global.msg[3] = scr_gettext("SCR_TEXT_5777") // * If you leave your room^1,&  you'll have to pay again./
            global.msg[4] = scr_gettext("SCR_TEXT_5778") // * 200G a room^1. Interested^1?& &         Stay        Do not\C
            global.msg[5] = scr_gettext("SCR_TEXT_5779") //  
        }
        break
    case 867:
        if (global.choice == 0)
        {
            if (global.gold >= 200)
            {
                global.gold -= 200
                with (obj_mainchara)
                    uncan = 1
                global.msg[0] = scr_gettext("SCR_TEXT_5791") // * Fabulous^1!&* We'll escort you to your&  room!/%%
                if (global.flag[267] < 1)
                    global.flag[267] = 1
                obj_hotelreceptionist.con = 1
            }
            else
                global.msg[0] = scr_gettext("SCR_TEXT_5797") // * ... that's not enough money./%%
        }
        else
            global.msg[0] = scr_gettext("SCR_TEXT_5802") // * Do let us know if you&  change your mind^1.&* Have a sparkular day!/%%
        break
    case 870:
        global.msg[0] = scr_gettext("SCR_TEXT_5807") // * ... MY ONE TRUE LOVE?/
        global.msg[1] = scr_gettext("SCR_TEXT_5808") // * .../
        global.msg[2] = scr_gettext("SCR_TEXT_5809") // * (YOU LOOK BORED^1, DARLING.)/
        global.msg[3] = scr_gettext("SCR_TEXT_5810") // * (I WANT THIS TO BE A STELLAR&  PERFORMANCE^1, SO IF YOU&  WON'T GIVE IT YOUR ALL...)/
        global.msg[4] = scr_gettext("SCR_TEXT_5811") // * (THEN I'LL SKIP AHEAD FOR&  THE AUDIENCE'S SAKE.)/
        global.msg[5] = scr_gettext("SCR_TEXT_5812") // * (Perform?)& &         Yeah        Skip this\C
        global.msg[6] = scr_gettext("SCR_TEXT_5813") //  
        break
    case 871:
        if (global.choice == 0)
            global.msg[0] = scr_gettext("SCR_TEXT_5819") // * (UNDERSTOOD.^1)&* (LET'S KNOCK 'EM DEAD!)/%%
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5823") // * (KA-SIGH...^1)&* (THE SHOW MUST GO ON!)/%%
            with (obj_playmovement)
                con = 240
        }
        break
    case 888:
        global.msg[0] = scr_gettext("SCR_TEXT_5829") // Interesting./
        global.msg[1] = scr_gettext("SCR_TEXT_5830") // You want to go back./
        global.msg[2] = scr_gettext("SCR_TEXT_5831") // You want to go bac^1k&to the worl^2d&you destroyed./
        global.msg[3] = scr_gettext("SCR_TEXT_5832") // It was you who pushed&everythin^1g to its edge./
        global.msg[4] = scr_gettext("SCR_TEXT_5833") // It was you who led the worl^1d&to its destruction./
        global.msg[5] = scr_gettext("SCR_TEXT_5834") // But you cannot accept it./
        global.msg[6] = scr_gettext("SCR_TEXT_5835") // You think you are above&consequences.&         Yes         No\C
        global.msg[7] = scr_gettext("SCR_TEXT_5836") // 
        break
    case 889:
        if (global.choice == 0)
            global.msg[0] = scr_gettext("SCR_TEXT_5842") // Exactly./%%
        else
            global.msg[0] = scr_gettext("SCR_TEXT_5846") // Then what are you looking for?/%%
        break
    case 890:
        global.msg[0] = scr_gettext("SCR_TEXT_5851") // Perhaps./
        global.msg[1] = scr_gettext("SCR_TEXT_5852") // We can reach a compromise./
        global.msg[2] = scr_gettext("SCR_TEXT_5853") // You still have somethin^1g&I want./
        global.msg[3] = scr_gettext("SCR_TEXT_5854") // Give it to me./
        global.msg[4] = scr_gettext("SCR_TEXT_5855") // And I will bring this&world back./
        global.msg[5] = scr_gettext("SCR_TEXT_5856") //  & &         Yes         No\C
        global.msg[6] = scr_gettext("SCR_TEXT_5857") // 
        break
    case 891:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5863") // Then it is agreed./
            global.msg[1] = scr_gettext("SCR_TEXT_5864") // You will give me your SOUL.& &         Yes         No\C
            global.msg[2] = scr_gettext("SCR_TEXT_5865") //  
        }
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5869") // Then stay here for&all eternity./
            global.msg[1] = scr_gettext("SCR_TEXT_5870") //  
        }
        break
    case 892:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5877") // .../
            global.msg[1] = scr_gettext("SCR_TEXT_5878") // Then^1, it is done./%%
        }
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5882") // Then stay here for&all eternity./
            global.msg[1] = scr_gettext("SCR_TEXT_5883") //  
        }
        break
    case 900:
        global.msg[0] = scr_gettext("SCR_TEXT_5888") // * hey./
        global.msg[1] = scr_gettext("SCR_TEXT_5889") // * is your refrigerator&  running?/
        global.msg[2] = scr_gettext("SCR_TEXT_5890") //  & &         yes         no\C
        global.msg[3] = scr_gettext("SCR_TEXT_5891") //  
        break
    case 901:
        if (global.choice == 0)
            global.msg[0] = scr_gettext("SCR_TEXT_5897") // * nice^1.&* i'll be over to deposit&  the brewskis./%%
        else
        {
            global.msg[0] = scr_gettext("SCR_TEXT_5901") // * ok^1, i'll send someone&  over to fix it./
            global.msg[1] = scr_gettext("SCR_TEXT_5902") // * thanks for letting me&  know./
            global.msg[2] = scr_gettext("SCR_TEXT_5903") // * good communication is&  important./%%
        }
        break
    case 950:
        global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5913") // * (Dog Shrine.)/
        global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_5914") // * (Donate?)& &         Dognate     Dognot\C
        global.msg[2] = " "
        if (global.flag[295] >= 1)
            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5919", string(global.flag[292]), string(global.flag[293]))
        if (global.flag[295] == 2 && global.flag[294] == 1)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5924") // * (Looks like the money was used&  to buy some fairy lights.)/
            global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_5925") // * (It was kind of dark in here.)/
            global.msg[2] = scr_gettext("SCR_TEXT_dogshrine_5919", string(global.flag[292]), string(global.flag[293]))
            global.msg[3] = " "
            global.flag[295] = 3
        }
        if (global.flag[295] == 3 && global.flag[294] == 5)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5933") // * (Looks like the money was used&  to increase the size of the&  shrine.)/
            global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_5919", string(global.flag[292]), string(global.flag[293]))
            global.msg[2] = " "
            global.flag[295] = 4
        }
        if (global.flag[295] == 4 && global.flag[294] == 10)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5941") // * (The donation box slot is even&  bigger now.)/
            global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_5942") // * (You should be able to donate&  even more at once!)/
            global.msg[2] = scr_gettext("SCR_TEXT_dogshrine_5943") // * (... actually^1, it looks like&  the sides of the slot are&  just painted on...)/
            global.msg[3] = scr_gettext("SCR_TEXT_dogshrine_5944") // * (Seems you'll still have to&  donate just 1G at a time...)/
            global.msg[4] = scr_gettext("SCR_TEXT_dogshrine_5919", string(global.flag[292]), string(global.flag[293]))
            global.msg[5] = " "
            global.flag[295] = 5
        }
        if (global.flag[295] >= 6)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5954") // * (The donation box is sealed.)/
            global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_5955") // * (There was seemingly no point&  to all of this...)/%
            if (global.flag[7] == 1)
            {
                global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5958") // * (Since your adventure is over^1,&  you can reminisce about how&  useful the Dog Shrine was...)/
                global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_5959") // * (... it wasn't useful at all.)/%
            }
        }
        break
    case 951:
        if (doak == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5970") // * (Something is wrong with&  the box.)/%
            if (global.choice == 0)
            {
                if (global.flag[292] >= global.flag[293])
                    global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5977") // * (The box is full.)/%
                if (global.gold <= 0)
                {
                    global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5982") // * (Not enough money.)/
                    global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_5983") // * (That's relieving...)/%
                }
                if (global.flag[292] < global.flag[293])
                {
                    if (global.gold >= 1)
                    {
                        audio_play_sound(snd_item,80,false)
                        global.gold -= 1
                        global.flag[292] += 1
                        global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5993") // * (You donated 1G.)/%
                        if (global.flag[295] == 0)
                        {
                            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_5997") // * (You put 1G into the box.)/
                            global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_5998") // * (You feel like you're about to&  waste a lot of time...)/%
                        }
                        if (global.flag[292] >= global.flag[293])
                        {
                            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6003") // * (Clink!)&* (The box is filled with coins.)/
                            global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_6004") // * (Perhaps if you leave and&  return^1, the donations will be&  used for something.)/%
                            global.flag[294] += 1
                        }
                    }
                }
                if (global.flag[295] == 0)
                    global.flag[295] = 1
            }
            if (global.choice == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6015") // * (You feel a sense of relief.)/%
            doak = 1
        }
        break
    case 952:
        global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6024") // * (Donation box.)& &         Use It      Do not\C
        global.msg[1] = " "
        break
    case 953:
        if (global.choice == 0)
        {
            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6031") // * (... hand can't fit inside.)/
            global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_6032") // * (Check it again to try&  donating.)/%
            global.flag[296] = 1
        }
        if (global.choice == 1)
            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6037") // * (Right.)/%
        break
    case 955:
        global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6045") // * (The boombox is playing...)&* (An upbeat song.)/
        global.msg[1] = scr_gettext("SCR_TEXT_dogshrine_6046") // * (It's having a psychological&  effect on your desire to&  donate.)/
        global.msg[2] = scr_gettext("SCR_TEXT_dogshrine_6047") // * (... It's not clear what kind&  of effect that is.)/
        global.msg[3] = scr_gettext("SCR_TEXT_dogshrine_6048") // * (Change the track?)& &         Change      Do not\C
        global.msg[4] = " "
        break
    case 956:
        p = audio_sound_get_pitch(global.currentsong)
        p2 = (p + 0.1)
        if (p2 >= 1.5)
            p2 = 1.5
        if (global.choice == 0)
        {
            audio_sound_pitch(global.currentsong, p2)
            global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6059") // * (Huh!?)&* (The next track is just the&  same but faster...!?)/%
        }
        if (global.choice == 1)
        {
            if (p == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6065") // * (You see no reason to&  change it.)/%
            else
            {
                audio_sound_pitch(global.currentsong, 1)
                global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6070") // * (You returned the song&  to normal.)/%
            }
        }
        break
    case 960:
        global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6076", string(global.flag[292]))
        global.msg[1] = " "
        break
    case 961:
        if (doak == 0)
        {
            if (global.choice == 0)
            {
                if (global.flag[292] < 350)
                {
                    if (global.gold >= 1)
                    {
                        global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6095") // * (1G was put inside.)/%
                        global.flag[292] += 1
                        global.gold -= 1
                    }
                    else
                        global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6101") // * (Not enough G.)/%
                }
                else
                    global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6106") // * (There's enough.)/%
            }
            if (global.choice == 1)
                global.msg[0] = scr_gettext("SCR_TEXT_dogshrine_6112") // * (Nothing was put inside.)/%
            doak = 1
        }
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

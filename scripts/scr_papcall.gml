global.typer = 5
global.facechoice = 0
global.faceemotion = 0
dontplay = 0
noresponse = 0
tired = false
global.msg[0] = scr_gettext("scr_papcall_7") // * Ring..^1. Ring.../
global.msg[1] = scr_gettext("scr_papcall_8") // * (There's no response...)/%%
u = 0
if (global.flag[465] == 1)
    u = 1
switch room
{
    case room_tundra1:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_17") // HMMMM..^1.&THE STRANGE DOOR&IN THE WOODS./
        global.msg[3] = scr_gettext("scr_papcall_18") // \E0ACTUALLY^1,&MY BROTHER SPENDS&A LOT OF TIME HERE./
        global.msg[4] = scr_gettext("scr_papcall_19") // \E3WHAT'S HE DOING...?/
        global.msg[5] = scr_gettext("scr_papcall_20") // \E1I'VE GOT TO KEEP&HIM ON THE STRAIGHT&AND NARROW!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_24") // ARE YOU STILL&AROUND THAT DOOR?/
            global.msg[3] = scr_gettext("scr_papcall_25") // \E1OH NO!!^1!&MY BROTHER'S A&BAD INFLUENCE!!!/%%
        }
        break
    case room_tundra2:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_31") // THIS IS WHERE MY&BROTHER IS SUPPOSED&TO PATROL.../
        global.msg[3] = scr_gettext("scr_papcall_32") // \E3BUT^1, EVERY TIME I&SHOW UP^1, HE'S&SLACKING OFF./
        global.msg[4] = scr_gettext("scr_papcall_33") // \E0IT'S A GOOD THING&I SPOTTED YOU&FIRST!/
        global.msg[5] = scr_gettext("scr_papcall_34") // \E3I'M SURE HE WOULD&HAVE MADE A WEIRD&FIRST IMPRESSION./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_39") // IF HE'S NOT AROUND^1,&HE WON'T COME&BACK.../
            global.msg[3] = scr_gettext("scr_papcall_40") // \E3THAT'S JUST THE&WAY HE FUNCTIONS./%%
        }
        break
    case room_tundra3:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_46") // WHAT??^1?&ARE YOU LOST???/
        global.msg[3] = scr_gettext("scr_papcall_47") // \E0HMMM..^1. YOU SHOULD&TRY CALLING&SOMEONE FOR HELP!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_52") // HUH??^1?&WHY ARE YOU&CALLING ME??/%%
        }
        break
    case room_tundra3A:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_58") // IT'S TOO COLD&TO SWIM IN THE&RIVER./
        global.msg[3] = scr_gettext("scr_papcall_59") // UNLESS YOU HAVE A&WATERPROOF&SWEATER!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_65") // IT'S JUST A&RIVER./%%
        }
        break
    case room_tundra4:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_71") // NYEH HEH HEH!^1!&IMPRESSED!?!/
        global.msg[3] = scr_gettext("scr_papcall_72") // NOT ONLY AM I&GREAT AT PUZZLES.../
        global.msg[4] = scr_gettext("scr_papcall_73") // BUT I'M ALSO&AN ESTEEMED&ARCHITECT!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_79") // MY BROTHER HELPED&ME FIND THE BOX!/%%
        }
        break
    case room_tundra5:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_85") // THE STATION OF&DOGGO./
        global.msg[3] = scr_gettext("scr_papcall_86") // HE HAS THE AMAZING&POWER TO SEE THINGS&WHEN THEY MOVE./
        global.msg[4] = scr_gettext("scr_papcall_87") // \E3OKAY^1, MAYBE IT'S&NOT AN AMAZING&POWER./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_93") // DOGGO'S NOT HOME./%%
        }
        break
    case room_tundra6:
        scr_papface(1, 1)
        global.msg[2] = scr_gettext("scr_papcall_100") // CAREFUL!^1!&THE ICE IS&SLPPERY./
        global.msg[3] = scr_gettext("scr_papcall_101") // \E0BUT IF YOU SLIDE&ON THE ICE^1, NO ONE&WILL ATTACK YOU./
        global.msg[4] = scr_gettext("scr_papcall_102") // \E3NO ONE WANTS TO&PRATFALL DURING A&COOL TECHNIQUE./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_108") // I'M COLD OUT OF&THINGS TO SAY./%%
        }
        break
    case room_tundra6A:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_114") // IT MUST BE TOUGH&BEING A SNOWMAN./
        global.msg[3] = scr_gettext("scr_papcall_115") // \E2TRY TO BE NICE&TO PEOPLE MADE OF&STRANGE MATERIALS./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_121") // IS THAT SNOWMAN&STILL THERE?/%%
        }
        break
    case room_tundra7:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_127") // OH HO^1!&THE ELECTRIC MAZE^1!&THAT SURE WAS FUN!/
        global.msg[3] = scr_gettext("scr_papcall_128") // \E3EXCEPT FOR WHEN&I GOT SHOCKED./%%
        if (global.flag[291] == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_133") // OH HO^1!&THE ELECTRIC MAZE^1!&A GREAT PUZZLE!/
            global.msg[3] = scr_gettext("scr_papcall_134") // \E3EXCEPT FOR THE&PART WHERE WE&DIDN'T EVEN DO IT./
            global.msg[4] = scr_gettext("scr_papcall_135") // \E0MINUS THAT ONE&TINY FLAW^1, IT'S AN&EASY 10 OUT OF 10!/%%
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_141") // DISAPPOINTING^1, BUT&I TURNED OFF THE&ELECTRICITY./%%
        }
        break
    case room_tundra8:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_149") // THE FAMOUS SNOWDIN&SNOWBALL GAME./
        global.msg[3] = scr_gettext("scr_papcall_150") // FASTER COMPLETION&GIVES DIFFERENT&PRIZES./
        global.msg[4] = scr_gettext("scr_papcall_151") // \E3WHERE DOES THE&MONEY COME FROM?/
        global.msg[5] = scr_gettext("scr_papcall_152") // \E0THE SNOWBALL TAX^1,&OF COURSE!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_157") // WHAT^1?&YOU'VE NEVER HEARD&OF A SNOWBALL TAX?/
            global.msg[3] = scr_gettext("scr_papcall_158") // \E2THE SURFACE WORLD&MUST BE PARADISE.../%%
        }
        break
    case room_tundra8A:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_166") // THE STATION OF THE&MARRIED DOGS.../
        global.msg[3] = scr_gettext("scr_papcall_167") // \E3HMMM^1. DO YOU EVER&THINK ABOUT DOING&THAT SOMEDAY?/
        global.msg[4] = scr_gettext("scr_papcall_168") // \E0MARRYING A DOG?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_173") // NAH..^1.&THAT'S WEIRD./
            global.msg[3] = scr_gettext("scr_papcall_174") // \E0THERE ARE WAY&BETTER ANIMALS TO&MARRY./
            global.msg[4] = scr_gettext("scr_papcall_175") // LIKE SKELETONS!!!/%%
        }
        break
    case room_tundra9:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_182") // HMM... CROSSWORD^1.&I GUESS IT'S AN&APT NAME./
        global.msg[3] = scr_gettext("scr_papcall_183") // \E4THOSE WORDS MAKE&ME CROSS!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_188") // ARE YOU STILL&LOOKING AT THAT&WORD SEARCH?/%%
        }
        break
    case room_tundra_spaghetti:
        scr_papface(1, 2)
        global.msg[2] = scr_gettext("scr_papcall_195") // AH^1, THE SPAGHETTI&TRAP ROOM.../
        global.msg[3] = scr_gettext("scr_papcall_196") // ERROR????/%%
        if (global.flag[62] == 2)
        {
            global.msg[3] = scr_gettext("scr_papcall_199") // \E3I STILL HAVE TO&GO VISIT IT.../
            global.msg[4] = scr_gettext("scr_papcall_200") // \E2THE SPAGHETTI YOU&LEFT ME IS STILL&THERE!!!/%%
        }
        if (global.flag[62] == 1)
        {
            global.msg[3] = scr_gettext("scr_papcall_204") // \E3WELL^1, I GUESS IT'S&NOT MUCH OF A&TRAP ANYMORE.../
            global.msg[4] = scr_gettext("scr_papcall_205") // \E0SINCE YOU ATE THE&WHOLE THING^1,&RIGHT!?/%%
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_211") // NOTHING LIKE A&HOT BUCKET OF&SPAGH.../%%
        }
        break
    case room_tundra_snowpuzz:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_218") // THIS ROOM IS&NORMALLY BLOCKED&BY THOSE SPIKES./
        global.msg[3] = scr_gettext("scr_papcall_219") // \E3BUT WE'RE THINKING&OF GETTING RID&OF THEM.../
        global.msg[4] = scr_gettext("scr_papcall_220") // \E0THE KING RELEASED&A MANDATE ON&PUZZLES RECENTLY./
        global.msg[5] = scr_gettext("scr_papcall_221") // \E3HE THINKS SPIKES&ARE INEFFECTIVE AND&HAZARDOUS TO KIDS./
        global.msg[6] = scr_gettext("scr_papcall_222") // \E4BUT I THINK HE'S&WRONG!!!/
        global.msg[7] = scr_gettext("scr_papcall_223") // \E0KIDS LOVE DEADLY&SPIKES!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_228") // IF YOU KNOW ANY&KIDS^1, YOU SHOULD&ASK THEM!!!/%%
        }
        break
    case room_tundra_xoxosmall:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_234") // HMMM..^1.&THE SOLUTION TO&THIS ONE...?/
        global.msg[3] = scr_gettext("scr_papcall_235") // \E5I ACTUALLY JUST&STEPPED OVER THE&SPIKES./
        global.msg[4] = scr_gettext("scr_papcall_236") // \E0SO THE SOLUTION&IS TO BE VERY&TALL AND HANDSOME./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_241") // I'M SOLVING IT&AS WE SPEAK.../%%
        }
        break
    case room_tundra_xoxopuzz:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_248") // OH-HO!!^1! &THIS PUZZLE^1!/
        global.msg[3] = scr_gettext("scr_papcall_249") // YOU FIGURED IT OUT&SO EASILY!!/
        global.msg[4] = scr_gettext("scr_papcall_250") // \E2THAT WAS VERY&PAPYRUS OF YOU./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_255") // TALKING ON THE&PHONE..^1. HOW&PAPYRUS OF YOU./%%
        }
        break
    case room_tundra_randoblock:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_262") // OH-HO!!^1!&THE PUZZLE THAT&DR. ALPHYS MADE!/
        global.msg[3] = scr_gettext("scr_papcall_263") // I HAD TO ASK&UNDYNE TO ASK&HER TO MAKE ONE./
        global.msg[4] = scr_gettext("scr_papcall_264") // \E3I ONLY FOLLOW&HER ONLINE.../
        global.msg[5] = scr_gettext("scr_papcall_265") // \E3I'M NOT REALLY&FRIENDS WITH HER.../
        global.msg[6] = scr_gettext("scr_papcall_266") // \E0YET!!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_271") // SOMEDAY I'LL&IMPRESS HER WITH&MY HUGE BICEPS.../
            global.msg[3] = scr_gettext("scr_papcall_272") // \E0THAT'S A GOOD&WAY TO MAKE&FRIENDS!!!/%%
        }
        break
    case room_tundra_lesserdog:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_278") // THE STATION OF&LESSERDOG./
        global.msg[3] = scr_gettext("scr_papcall_279") // THIS DOG LOVES&TO BE PET./
        global.msg[4] = scr_gettext("scr_papcall_280") // THAT'S ITS DEFINING&PERSONALITY&TRAIT./
        global.msg[5] = scr_gettext("scr_papcall_281") // \E3WAIT^1, WHY ARE THEY&A ROYAL GUARD&AND NOT ME!?/
        global.msg[6] = scr_gettext("scr_papcall_282") // \E0I LOVE TO BE&PET TOO!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_287") // SIGH..^1.&IT'S ALL JUST A&PUPULARITY CONTEST./%%
        }
        break
    case room_tundra_icehole:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_293") // WE WERE GETTING&BORED WAITING&FOR YOU.../
        global.msg[3] = scr_gettext("scr_papcall_294") // \E0SO I BUILT A&SNOW-PAPYRUS!/
        global.msg[4] = scr_gettext("scr_papcall_295") // \E3AND SANS...&DID HIS THING./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_300") // ACTUALLY^1, IT'S ONE&OF HIS BETTER&LUMPS./%%
        }
        break
    case room_tundra_iceentrance:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_306") // I ALWAYS JUMP OVER&THE GAP INSTEAD OF&SOLVING THE PUZZLE./
        global.msg[3] = scr_gettext("scr_papcall_307") // SANS NEVER SOLVES&IT EITHER./
        global.msg[4] = scr_gettext("scr_papcall_308") // \E3HE ALWAYS JUST..^1.&UM.../
        global.msg[5] = scr_gettext("scr_papcall_309") // GETS ACROSS./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_314") // I THINK HE HAS&A SHORTCUT OR&SOMETHING./%%
        }
        break
    case room_tundra_iceexit_new:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_321") // GYFTROT LIVES NEAR&THERE^1.&THEY LIKE GIFTS./
        global.msg[3] = scr_gettext("scr_papcall_322") // \E3DON'T WORRY IF&YOU CAN'T AFFORD&SOMETHING NICE./
        global.msg[4] = scr_gettext("scr_papcall_323") // \E0IT'S THE THOUGHT&THAT COUNTS./
        global.msg[5] = scr_gettext("scr_papcall_324") // SO IMAGINE YOU&HAVE A LOT OF&MONEY.../%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_329") // DID YOU MEET&GYFTROT?/%%
        }
        break
    case room_tundra_iceexit:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_336") // MY SIGNAL IS&GETTING WEAK./
        global.msg[3] = scr_gettext("scr_papcall_337") // \E3LOOKS LIKE THE&PHONE WON'T WORK&PAST HERE./
        global.msg[4] = scr_gettext("scr_papcall_338") // \E0SO THERE'S NO&REASON TO GO&FURTHER./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_343") // HELLO./%%
        }
        break
    case room_tundra_poffzone:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_349") // THE STATION OF&GREATERDOG./
        global.msg[3] = scr_gettext("scr_papcall_350") // \E3HE LOOKS A BIT&LIKE A CERTAIN DOG&I DON'T LIKE./
        global.msg[4] = scr_gettext("scr_papcall_351") // \E0BUT GREATERDOG&DOESN'T COLLECT&ANYTHING./
        global.msg[5] = scr_gettext("scr_papcall_352") // \E2HE'S ONLY A&KLEPTOMANIAC&FOR AFFECTION!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_357") // HE'S AMASSED A&LARGE COLLECTION&OF HUGS AND PETS./%%
        }
        break
    case room_tundra_dangerbridge:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_363") // THIS BRIDGE LOOKS&DANGEROUS^1, BUT&IT'S VERY STABLE./
        global.msg[3] = scr_gettext("scr_papcall_364") // IN FACT^1, IT'S JUST&A ROCK FORMATION&I PAINTED OVER./
        global.msg[4] = scr_gettext("scr_papcall_365") // I THINK IT LOOKS&MORE DRAMATIC&THAT WAY./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_370") // I ADDED THE ROPE^1,&TOO./%%
        }
        break
    case room_tundra_town:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_376") // SNOWDIN..^1.&HOME OF PAPYRUS!/
        global.msg[3] = scr_gettext("scr_papcall_377") // \E3THAT'S THE SLOGAN^1,&RIGHT???/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_382") // I'M PETITIONING TO&CHANGE THE SLOGAN./%%
        }
        break
    case room_tundra_town2:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_389") // THAT FURRY PERSON&THROWS ICE ALL&DAY./
        global.msg[3] = scr_gettext("scr_papcall_390") // NOBODY KNOWS&WHERE IT GOES./%%
        if (u == 1)
        {
            global.msg[2] = scr_gettext("scr_papcall_394") // THAT FURRY PERSON&THROWS ICE ALL&DAY./
            global.msg[3] = scr_gettext("scr_papcall_395") // NOBODY KNOWS&WHERE IT GOES./
            scr_undface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_397") // * Hey^1, I know^1!&* Alphys told me.../
            global.msg[6] = scr_gettext("scr_papcall_398") // * It goes to Hotland&  to cool down the&  CORE!/
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_400") // WOW^1, UNDYNE!^1!&I DIDN'T KNOW YOU&LIKED NERDY STUFF!/
            global.msg[9] = scr_gettext("scr_papcall_401") // \E3JUST STRENGTH&AND FIGHTING.../
            scr_undface(10, 0)
            global.msg[11] = scr_gettext("scr_papcall_403") // \E0* Are you kidding!?&* Why wouldn't I!?/
            global.msg[12] = scr_gettext("scr_papcall_404") // \E6* The brain's the&  biggest muscle of&  all!!!/%%
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_410") // HYPNOTIZING^1, ISN'T&IT???/%%
        }
        break
    case room_tundra_inn:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_416") // THE INN'S A&GREAT PLACE&TO STAY./
        global.msg[3] = scr_gettext("scr_papcall_417") // THE LADY WHO&RUNS IT IS&REALLY NICE./
        global.msg[4] = scr_gettext("scr_papcall_418") // \E2SHE ALWAYS GIVES&ME A LOLLIPOP AND&A PAT ON THE HEAD./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_423") // WHY ARE YOU&CALLING ME?/
            global.msg[3] = scr_gettext("scr_papcall_424") // \E0ARE YOU TRYING&TO MAKE A&RESERVATION???/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_430") // * Hey^1, I always stay&  there when I come&  to Snowdin!/
            global.msg[3] = scr_gettext("scr_papcall_431") // \E4* I used to stay&  at Papyrus's^1, but.../
            global.msg[4] = scr_gettext("scr_papcall_432") // \E1* His couch is like^1,&  lumpy and jangly?/
            global.msg[5] = scr_gettext("scr_papcall_433") // \E5* And his brother&  kept making 100's&  of midnight snacks./%%
            global.msg[6] = scr_gettext("scr_papcall_434") // \E2* And Papyrus himself&  doesn't??^1?&* Know how to sleep?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_439") // * Yeah^1, just sleep&  here./%%
            }
        }
        break
    case room_tundra_grillby:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_448") // GRILLBY'S...&IT'S DARK AND FULL&OF GREASE./
        global.msg[3] = scr_gettext("scr_papcall_449") // PURGATORY OF&FRIES..^1.&HAMBURGER ABYSS.../
        global.msg[4] = scr_gettext("scr_papcall_450") // ANYWAY^1, MY BROTHER&PRACTICALLY LIVES&HERE./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_455") // I'M NOT COMING&TO GRILLBY'S./%%
        }
        if (u == 1)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_461") // GRILLBY'S^1? WE'RE TOO&REFINED FOR THAT&GREASEHOLE./
            scr_undface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_463") // * WOAH^1, if you go^1,&  you HAVE to try&  the cheese fries./
            global.msg[5] = scr_gettext("scr_papcall_464") // \E6* They're AMAZINGLY&  bad for you!!/
            global.msg[6] = scr_gettext("scr_papcall_465") // \E9* Oh^1, sorry^1, Papyrus^1,&  were you saying&  something?/
            scr_papface(7, 5)
            global.msg[8] = scr_gettext("scr_papcall_467") // JUST MONOLOGUING&ABOUT MY LOVE&FOR GREASE!!!/%%
            if (global.flag[462] >= 1)
            {
                scr_papface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_472") // OUR FEELINGS FOR&GREASE RUN DEEP&LIKE A RIVER./
                scr_undface(3, 7)
                global.msg[4] = scr_gettext("scr_papcall_474") // * Grease^1, I.../
                global.msg[5] = scr_gettext("scr_papcall_475") // \E8* I..^1.&* .../
                global.msg[6] = scr_gettext("scr_papcall_476") // \E6* I want you in&  all my food!!!/%%
            }
        }
        break
    case room_tundra_library:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_487") // I LOVE THE LIBRARY^1.&THE BOOKS ARE ALL&ARRANGED BY COLOR../
        global.msg[3] = scr_gettext("scr_papcall_488") // \E4THIS SENSE OF&ORDER!!^1! IT FILLS&ME WITH POWER!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_493") // WHAT'S A LIBRARY&CARD?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_499") // * I couldn't get enough&  books when I was&  a kid./
            global.msg[3] = scr_gettext("scr_papcall_500") // \E9* I tore through all&  sorts of 'em!/
            global.msg[4] = scr_gettext("scr_papcall_501") // \E1* I ripped through&  tons of 'em!/
            global.msg[5] = scr_gettext("scr_papcall_502") // \E6* I kicked 'em into&  shreds!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_507") // * But now I think&  reading's cool./%%
            }
        }
        break
    case room_tundra_paproom:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_516") // WOW^1! IT ONLY TOOK&YOU FOUR SECONDS&TO CALL ME!!/
        global.msg[3] = scr_gettext("scr_papcall_517") // YOU MUST BE VERY&DESPERATE FOR MY&HELP!!!/
        global.msg[4] = scr_gettext("scr_papcall_518") // WELL^1! DO NOT FEAR^1!&THIS IS PAPYRUS'S&HOTFUL HELPLINE!/
        global.msg[5] = scr_gettext("scr_papcall_519") // JUST DESCRIBE YOUR&LOCATION^1, AND...!/
        global.msg[6] = scr_gettext("scr_papcall_520") // I WILL DESCRIBE&SOME HOT TIPS!/
        global.msg[7] = scr_gettext("scr_papcall_521") // \E0SO^1, WHERE ARE&YOU?/
        global.msg[8] = scr_gettext("scr_papcall_522") // \E3.../
        global.msg[9] = scr_gettext("scr_papcall_523") // \E5... YOU'RE STILL&IN MY ROOM??/
        global.msg[10] = scr_gettext("scr_papcall_524") // \E3.../
        global.msg[11] = scr_gettext("scr_papcall_525") // \E3HAVE YOU HEARD OF&SOMETHING CALLED&A..^1. DOOR?/
        global.msg[12] = scr_gettext("scr_papcall_526") // \E0WAIT^1! DON'T WORRY^1!&I'LL DRAW A&DIAGRAM FOR YOU!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_531") // HOLD UP^1!&I'M STILL DRAWING!/%%
        }
        if (global.flag[283] == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_537") // WHAT^1? I THOUGHT&YOU HAD GOTTEN OUT&OF MY ROOM./
            global.msg[3] = scr_gettext("scr_papcall_538") // \E1WE'RE GOING TO&HAVE TO START OVER&FROM SQUARE ONE!/
            global.msg[4] = scr_gettext("scr_papcall_539") // \E0FIRST: DO YOU&KNOW WHO PAPYRUS&IS!?/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_544") // DO I KNOW WHO&PAPYRUS IS!?/%%
            }
        }
        break
    case room_tundra_sanshouse:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_554") // YOU'RE IN MY&HOUSE^1.&GOOD CHOICE!/
        global.msg[3] = scr_gettext("scr_papcall_555") // \E3THOUGH I GUESS&IT'S TECHNICALLY&SANS'S HOUSE TOO./
        global.msg[4] = scr_gettext("scr_papcall_556") // \E1BUT I PREFER NOT&TO DISCUSS HIS&PART OF IT./
        global.msg[5] = scr_gettext("scr_papcall_557") // \E3HIS ROOM IS..^1.&IT'S LIKE ANOTHER&WORLD!/
        global.msg[6] = scr_gettext("scr_papcall_558") // \E2A WORLD WHERE&THEY DON'T KNOW&HOW TO VACUUM./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_563") // YOU'RE BEST&STAYING AWAY FROM&THAT STRANGE PLACE./%%
        }
        break
    case room_fogroom:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_572") // THIS IS WHERE&I TRIED TO&CAPTURE YOU!/
        global.msg[3] = scr_gettext("scr_papcall_573") // WHAT A TERRIBLE&MEMORY!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_578") // .../%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_584") // * Yeah!^1! This is the&  best room for&  snow-wrestling!!/
            scr_papface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_586") // SNOW WRESTLING IS&WHEN SHE SNEAKS UP&ON YOU FROM BEHIND,/
            global.msg[5] = scr_gettext("scr_papcall_587") // THEN TACKLES YOU&AND YELLS&" + '"' + "SNOW-WRESTLING!" + '"' + "/
            global.msg[6] = scr_gettext("scr_papcall_588") // \E5IT'S..^1.&NOT THE BEST&GAME./
            scr_undface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_590") // \E9* Well^1, you know&  what I think?/
            scr_papface(9, 0)
            global.msg[10] = scr_gettext("scr_papcall_592") // WHAT?/
            scr_undface(11, 6)
            global.msg[12] = scr_gettext("scr_papcall_594") // * Snow-wrestling!!/
            scr_papface(13, 5)
            global.msg[14] = scr_gettext("scr_papcall_596") // NOOOOOOOOO!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_601") // * We'll have to play&  sometime!/%%
            }
        }
        break
    case room_water1:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_610") // WATERFALL..^1.&I BARELY KNOW&ANYTHING ABOUT IT./
        global.msg[3] = scr_gettext("scr_papcall_611") // \E0BUT I'LL DO MY&BEST TO INFORM&YOU!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_616") // UH^1, I DON'T HAVE&ANY FACTS ABOUT&THIS ROOM./%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_622") // * If you're going to&  Snowdin^1, I won't&  have much to say./
            scr_papface(3, 0)
            global.msg[4] = scr_gettext("scr_papcall_624") // BUT I WILL!!/
            scr_undface(5, 9)
            global.msg[6] = scr_gettext("scr_papcall_626") // * There's the rub^1,&  right?/
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_628") // WHAT!^1?&THERE'S A RUB^1?&WHERE!?!?/
            scr_undface(9, 6)
            global.msg[10] = scr_gettext("scr_papcall_630") // * In Snowdin^1, duh!!!/%%
            if (global.flag[462] >= 1)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_635") // I'LL DO MY&BEST TO FIND&THE RUB./
                scr_undface(3, 2)
                global.msg[4] = scr_gettext("scr_papcall_637") // * Hey^1, I think I&  found something!/
                scr_papface(5, 0)
                global.msg[6] = scr_gettext("scr_papcall_639") // OOH^1, WHERE?/
                global.msg[7] = scr_gettext("scr_papcall_640") // \E5AND WHAT'S THIS&HORRIBLE NOOGIE?/
                scr_undface(8, 6)
                global.msg[9] = scr_gettext("scr_papcall_642") // * It's the rub!!!/%%
            }
        }
        break
    case room_water2:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_660") // MY BROTHER HAS&A STATION HERE./
        global.msg[3] = scr_gettext("scr_papcall_661") // \E3YES^1, HE MANS&TWO STATIONS AT&ONCE./
        global.msg[4] = scr_gettext("scr_papcall_662") // \E0AMAZING^1, ISN'T&HE?/
        global.msg[5] = scr_gettext("scr_papcall_663") // HE SLACKS OFF&TWICE AS MUCH&AS NORMAL!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_668") // NORMAL FOLKS CAN&ONLY DREAM OF&SUCH SLOTH.../%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_674") // * This is Papyrus's&  brother's station./
            global.msg[3] = scr_gettext("scr_papcall_675") // \E4* I'm always catching&  him slacking off^1,&  or sleeping.../
            global.msg[4] = scr_gettext("scr_papcall_676") // \E2* But his results are&  JUST good enough&  to not fire him./
            global.msg[5] = scr_gettext("scr_papcall_677") // \E4* Well^1, except today./
            global.msg[6] = scr_gettext("scr_papcall_678") // \E2* He didn't tell me&  ANYTHING about you./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_683") // \E4* JUST scraping by&  the bare minimum&  every time.../
                global.msg[3] = scr_gettext("scr_papcall_684") // \E9* I guess it's kind&  of impressive...?/%%
            }
        }
        break
    case room_water3:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_693") // ROCKS?/
        global.msg[3] = scr_gettext("scr_papcall_694") // \E0IT MUST BE ONE&OF UNDYNE'S&INGENIOUS PUZZLES./
        global.msg[4] = scr_gettext("scr_papcall_695") // \E0YOU'D BETTER BE&CAREFUL!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_700") // BE WARY OF ROCKS./%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_706") // * God^1, I was supposed&  to build a puzzle&  for this room.../
            global.msg[3] = scr_gettext("scr_papcall_707") // \E2* But I HATE puzzles./
            global.msg[4] = scr_gettext("scr_papcall_708") // \E6* So I just put a&  huge pile of&  rocks upstream./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_714") // * What??^1?&* Don't judge me!!!/
                global.msg[3] = scr_gettext("scr_papcall_715") // \E6* My lack of&  creativity's making&  your life easier!/%%
            }
        }
        if (global.plot < 106)
        {
            global.msg[0] = scr_gettext("scr_papcall_722") // * Ring..^1. Ring.../
            global.msg[1] = scr_gettext("scr_papcall_723") // * (There's no response...)/%%
        }
        break
    case room_water3A:
        scr_papface(1, 5)
        global.msg[2] = scr_gettext("scr_papcall_731") // WHERE'D YOU GO!?&I CAN'T SEE&YOU!!!/
        global.msg[3] = scr_gettext("scr_papcall_732") // \E0OH WAIT^1, THAT'S&BECAUSE YOU'RE&ON THE PHONE./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_737") // ARE YOU STILL&ON THE PHONE?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_743") // * So you found the&  room behind the&  waterfall.../
            global.msg[3] = scr_gettext("scr_papcall_744") // \E0* When I feel like&  relaxing^1, I always&  take a break there./
            global.msg[4] = scr_gettext("scr_papcall_745") // \E1* That means NEVER!^1!&* I HATE RELAXING!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 6)
                global.msg[2] = scr_gettext("scr_papcall_750") // * I LOVE being&  ANGRY and STRESSED&  OUT!!!/
                global.msg[3] = scr_gettext("scr_papcall_751") // \E0* Nah^1, I'm joking./%%
            }
        }
        if (global.plot < 110)
        {
            global.msg[0] = scr_gettext("scr_papcall_757") // * Ring..^1. Ring.../
            global.msg[1] = scr_gettext("scr_papcall_758") // * (There's no response...)/%%
        }
        break
    case room_water4:
        scr_papface(1, 5)
        global.msg[2] = scr_gettext("scr_papcall_766") // WOWIE^1, I HAD AN&AWKWARD TIME IN&THIS ROOM EARLIER./
        global.msg[3] = scr_gettext("scr_papcall_767") // \E0GOOD HEAVENS&YOU WEREN'T AROUND&TO SEE IT!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_772") // YOU REALLY&DIDN'T SEE IT!/
            global.msg[3] = scr_gettext("scr_papcall_773") // I LOVE THAT&FACT^1, AND&REPEATING IT!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_779") // * This is the room&  where I first&  spotted you./
            global.msg[3] = scr_gettext("scr_papcall_780") // \E2* You have NO idea&  how many spears I&  wanted to throw!!!/
            global.msg[4] = scr_gettext("scr_papcall_781") // \E9* But^1, um^1, that sea-&  grass is under&  scientific protection./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_786") // * What!!!!^1!&* That's a real thing!/%%
            }
        }
        if (global.plot < 106)
        {
            global.msg[0] = scr_gettext("scr_papcall_792") // * Ring..^1. Ring.../
            global.msg[1] = scr_gettext("scr_papcall_793") // * (There's no response...)/%%
        }
        break
    case room_water_bridgepuzz1:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_801") // A BRIDGE GROWS&IF YOU ALIGN&FOUR BRIDGE SEEDS./
        global.msg[3] = scr_gettext("scr_papcall_802") // \E3BUT THAT'S SORT&OF LIMITED IN&USEFULNESS./
        global.msg[4] = scr_gettext("scr_papcall_803") // \E2WHY DON'T WE&HAVE AIRPLANE&SEEDS???/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_808") // OR^1, PHONES THAT&CAN TURN INTO&JETPACKS???/%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_814") // * Wait^1, did you actually&  DO the puzzle!?/
            global.msg[3] = scr_gettext("scr_papcall_815") // \E2* You can't just jump&  across!?/
            global.msg[4] = scr_gettext("scr_papcall_816") // \E6* You can't do the&  jimpity jumpity&  joodle!?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 6)
                global.msg[2] = scr_gettext("scr_papcall_821") // * The limpity loppity&  leap!?/%%
            }
        }
        break
    case room_water5:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_830") // HMMM..^1. THIS PUZZLE.../
        global.msg[3] = scr_gettext("scr_papcall_831") // \E0I'VE GOT IT!!!/
        global.msg[4] = scr_gettext("scr_papcall_832") // TRY TO BUILD A&BRIDGE WITH THE&BRIDGE SEEDS!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_837") // I'M HELPING./%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_843") // * Alphys helped measure&  out the mud tiles&  for this puzzle./
            global.msg[3] = scr_gettext("scr_papcall_844") // * It was a lot of work^1,&  but we got to make&  sand castles after./
            global.msg[4] = scr_gettext("scr_papcall_845") // \E9* We're a good team^1.&* She's great at&  building them.../
            global.msg[5] = scr_gettext("scr_papcall_846") // \E6* And I'm great at&  wrecking them!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_851") // * There's barely even&  a trace of 'em&  now.../%%
            }
        }
        break
    case room_water5A:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_861") // WHAT'S BETTER&THAN A BENCHFUL&OF QUICHE?/%%
        if (u == 1)
        {
            scr_undface(1, 9)
            global.msg[2] = scr_gettext("scr_papcall_866") // * What's better than&  a benchful of&  quiche?/%%
        }
        break
    case room_water6:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_876") // \E3THE WISHING ROOM^1.&DO YOU HAVE&A WISH...?/
        global.msg[3] = scr_gettext("scr_papcall_877") // \E0NYEH HEH HEH!^1!&I HAVE ONE!!!/
        global.msg[4] = scr_gettext("scr_papcall_878") // \E2I WISH I WAS&TALKING TO MY&COOL FRIEND!!!/
        global.msg[5] = scr_gettext("scr_papcall_879") // \E0LOOK!!^1!&IT'S COMING TRUE!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_885") // WHAT WILL YOU&WISH FOR?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 7)
            global.msg[2] = scr_gettext("scr_papcall_891") // * Every day^1, people&  come here and wish&  to the stars.../
            global.msg[3] = scr_gettext("scr_papcall_892") // \E1* I won't let them&  down!!!/
            global.msg[4] = scr_gettext("scr_papcall_893") // * I'll make everyone's&  wishes come true!!/
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_895") // I WISH I HAD&EIGHT LEGS.../
            global.msg[7] = scr_gettext("scr_papcall_896") // \E0SO I COULD WEAR&FOUR PAIRS OF&HOTPANTS./
            scr_undface(8, 1)
            global.msg[9] = scr_gettext("scr_papcall_898") // * I'll make most&  people's wishes&  come true!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_903") // * What^1, you have a&  wish?/
                global.msg[3] = scr_gettext("scr_papcall_904") // \E3* Add it to the pile^1,&  punk./%%
            }
        }
        break
    case room_water7:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_915") // THERE ARE MANY&ANCIENT PLAQUES&HERE./
        global.msg[3] = scr_gettext("scr_papcall_916") // WATERFALL IS&PRACTICALLY A&HISTORY MUSEUM./
        global.msg[4] = scr_gettext("scr_papcall_917") // \E3EXCEPT WITH&MUSCULAR&SEAHORSES./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_922") // HI?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 7)
            global.msg[2] = scr_gettext("scr_papcall_928") // * Along these walls&  lies our tragic&  history.../
            global.msg[3] = scr_gettext("scr_papcall_929") // \E1* Tragically BORING!/
            global.msg[4] = scr_gettext("scr_papcall_930") // \E2* Why can't our history&  be COOL ANIMATIONS&  like the humans'!?/
            global.msg[5] = scr_gettext("scr_papcall_931") // \E6* Someone at LEAST&  engrave a plaque with&  swords and kissing!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_936") // * Come on^1, don't act&  like your history's&  not COOL!!/%%
            }
        }
        if (global.plot < 110)
        {
            global.msg[0] = scr_gettext("scr_papcall_942") // * Ring..^1. Ring.../
            global.msg[1] = scr_gettext("scr_papcall_943") // * (There's no response...)/%%
        }
        break
    case room_water8:
        scr_papface(1, 2)
        global.msg[2] = scr_gettext("scr_papcall_950") // ANOTHER HARMLESS&AND VERY SAFE&CORRIDOR.../
        global.msg[3] = scr_gettext("scr_papcall_951") // \E0ALL THANKS TO&ME!!^1!&NYEH HEH HEH!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_956") // HEH!!!!!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_962") // * This is where I&  threw all those&  spears at you.../
            global.msg[3] = scr_gettext("scr_papcall_963") // \E6* That was fun!!^1!&* Let's do that&  again sometime!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_968") // * Come on^1!&* Don't fear the spear!/%%
            }
        }
        if (global.plot < 110)
        {
            global.msg[0] = scr_gettext("scr_papcall_974") // * Ring..^1. Ring.../
            global.msg[1] = scr_gettext("scr_papcall_975") // * (There's no response...)/%%
        }
        break
    case room_water9:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_982") // WATCH YOUR STEP!/
        global.msg[3] = scr_gettext("scr_papcall_983") // \E3UNDYNE REALLY CARES&ABOUT THIS GRASS&FOR SOME REASON./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_988") // ARE YOU WATCHING?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_994") // * If it wasn't for&  that grass^1, I'd&  have kicked your.../
            global.msg[3] = scr_gettext("scr_papcall_995") // \E9* Uh^1, if not for&  that grooty^1, I'd have&  kicked your booty./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1000") // * Don't ask me what&  a grooty is!!!/%%
            }
        }
        if (global.plot < 110)
        {
            global.msg[0] = scr_gettext("scr_papcall_1006") // * Ring..^1. Ring.../
            global.msg[1] = scr_gettext("scr_papcall_1007") // * (There's no response...)/%%
        }
        break
    case room_water_savepoint1:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1014") // WHY ARE THERE SO&MANY TABLES LYING&AROUND HERE?/%%
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1019") // * Where are all&  these tables coming&  from?/%%
        }
        break
    case room_water11:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1029") // HUH^1? SANS ISN'T&PLAYING WITH HIS&TELESCOPE?/
        global.msg[3] = scr_gettext("scr_papcall_1030") // \E0WOWIE!!^1! MAYBE HE&WENT TO WORK!!!/
        global.msg[4] = scr_gettext("scr_papcall_1031") // \E2WOW!!^1! AM I&ALLOWED TO BE&PROUD???/%%
        if instance_exists(obj_sans_room)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1036") // HUH^1? MY BROTHER^1?&OF COURSE HE HAS&A TELESCOPE./
            global.msg[3] = scr_gettext("scr_papcall_1037") // \E0SANS LOVES&OUTER SPACEY&SCI-FI STUFF./
            global.msg[4] = scr_gettext("scr_papcall_1038") // \E3HMM^1?&HE NEVER TOLD&YOU??/
            global.msg[5] = scr_gettext("scr_papcall_1039") // \E0YEAH^1, SANS NEVER&TELLS ANYBODY&ANYTHING!/%%
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1046") // THANKS FOR CALLING./%%
        }
        if (u == 1)
        {
            scr_undface(1, 9)
            global.msg[2] = scr_gettext("scr_papcall_1052") // * Hey^1, here's a&  neat party trick./
            global.msg[3] = scr_gettext("scr_papcall_1053") // \E0* Try talking to&  the southern&  wall!/
            global.msg[4] = scr_gettext("scr_papcall_1054") // \E4* First you have to&  throw a party&  though.../
            global.msg[5] = scr_gettext("scr_papcall_1055") // \E0* Hey^1, you should&  make it a costume&  party!/
            global.msg[6] = scr_gettext("scr_papcall_1056") // \E6* Then Papyrus can&  have someplace he&  seems normal!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1062") // * Oh^1!&* I should invite&  Alphys^1, too!/%%
            }
        }
        break
    case room_water_nicecream:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1071") // ICE CREAM^1?&THANKS^1, BUT I&LIVE IN SNOWDIN!/
        global.msg[3] = scr_gettext("scr_papcall_1072") // \E0THERE'S ICE CREAM&ALL OVER THE&GROUND!!!/
        scr_sansface(4, 1)
        global.msg[5] = scr_gettext("scr_papcall_1074") // * that's called snow./
        scr_papface(6, 1)
        global.msg[7] = scr_gettext("scr_papcall_1076") // SANS!!^1! I DIDN'T&ASK YOUR OPINION!!/%%
        if (global.flag[462] >= 1)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_1081") // I'M FLATTERED HOW&MUCH YOU WANT TO&GIVE ME ICE CREAM./
            scr_sansface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_1083") // * me too./
            scr_papface(5, 4)
            global.msg[6] = scr_gettext("scr_papcall_1085") // NO YOU AREN'T!!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1097") // \E1* Ugh^1, ice cream!^1?&* Sugary... COLD..^1.&* Talk about GROSS./
            global.msg[3] = scr_gettext("scr_papcall_1098") // \E3* Now this chilly&  pink stuff that&  Alphys makes me.../
            global.msg[4] = scr_gettext("scr_papcall_1099") // \E6* THAT rules!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1104") // * I'll also drink it&  if it's heated up./%%
            }
        }
        break
    case room_water_shoe:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1113") // SOMETIMES^1, PRIZES&ARE HIDDEN UNDER&THE GRASS./
        global.msg[3] = scr_gettext("scr_papcall_1114") // TREASURES LIKE&MUD^1, OR DIRT./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1120") // DID YOU FIND&THE TREASURE?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1126") // * There's normally a&  pair of old shoes&  in that seagrass./
            global.msg[3] = scr_gettext("scr_papcall_1127") // \E4* Strangely^1, they're made&  for someone without&  fins or claws./
            global.msg[4] = scr_gettext("scr_papcall_1128") // \E7* What kind of monster&  is like that...?/
            global.msg[5] = scr_gettext("scr_papcall_1129") // \E2* Oh^1, wait!^1?&* What about a slime&  monster!?/
            global.msg[6] = scr_gettext("scr_papcall_1130") // \E6* Wait^1, those don't&  have feet at all!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1136") // * Well^1, if they fit&  you^1, you might as&  well take them./
                global.msg[3] = scr_gettext("scr_papcall_1137") // \E6* Whoever wore them&  isn't coming back!/%%
            }
        }
        break
    case room_water_bird:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1146") // \E3A BIRD MONSTER?^1?&TRY TALKING TO&IT!!!/
        global.msg[3] = scr_gettext("scr_papcall_1147") // \E0OR YOU COULD&PUT ME ON THE&LINE!/
        global.msg[4] = scr_gettext("scr_papcall_1148") // \E2I'VE GOT SOME&PRETTY GOOD&TWEETS./
        global.msg[5] = scr_gettext("scr_papcall_1149") // \E0(HORRIBLE&  BIRD IMITATIONS)/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1155") // DID THE BIRD LIKE&MY TWEETS???/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1161") // * That bird will carry&  anyone past the gap^1.&* It NEVER says no./
            global.msg[3] = scr_gettext("scr_papcall_1162") // \E7* When I was younger^1,&  it gave me a lift^1.&* It took an hour.../
            global.msg[4] = scr_gettext("scr_papcall_1163") // \E2* But this bird NEVER&  once thought of&  giving up!!!/
            global.msg[5] = scr_gettext("scr_papcall_1164") // \E7* Cherish this bird./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1170") // * Well??^1?&* Are you CHERISHING???/
                global.msg[3] = scr_gettext("scr_papcall_1171") // \E1* CHERISH HARDER!!!/%%
            }
        }
        break
    case room_water_onionsan:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1180") // ONION?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1186") // HUM HUM HUM.../%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1192") // * Onion...?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1198") // * ...?/%%
            }
        }
        break
    case room_water14:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1206") // I'VE HEARD A SHY&MONSTER LIVES&AROUND HERE./
        global.msg[3] = scr_gettext("scr_papcall_1207") // \E3WELL^1, IF YOU WANT&TO GET SOMEONE&TO OPEN UP.../
        global.msg[4] = scr_gettext("scr_papcall_1208") // \E0YOU SHOULD ENGAGE&THEM IN COMBAT!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1214") // HUM HUM HUM.../%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1220") // * Oh yeah^1, Shyren&  lives around here./
            global.msg[3] = scr_gettext("scr_papcall_1221") // * I used to give her&  piano lessons./
            global.msg[4] = scr_gettext("scr_papcall_1222") // \E4* She was really&  talented..^1. \E9for someone&  with no fingers./
            global.msg[5] = scr_gettext("scr_papcall_1223") // \E4* One day^1, she stopped&  coming to her lessons^1,&  though.../%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1229") // \E7* How did her song&  go again...?/%%
            }
        }
        break
    case room_water_piano:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1239") // HUH!^1?&ARE YOU SERENADING&ME!?/
        global.msg[3] = scr_gettext("scr_papcall_1240") // \E2OH NO!!^1!&YOU'RE MAKING ME&BLUSH!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1246") // LET'S WRITE A&MUSICAL ABOUT&OUR ADVENTURES!!!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1252") // \E6* Yeah!^1! YEAH!!^1!&* I made this puzzle!!/
            global.msg[3] = scr_gettext("scr_papcall_1253") // \E0* Really^1, it was just&  an excuse to put&  a piano here./
            global.msg[4] = scr_gettext("scr_papcall_1254") // \E2* I love FIGHTING THE&  IVORIES!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1259") // \E9* Maybe I'll play you&  something sometime!/%%
            }
        }
        break
    case room_water_dogroom:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1269") // \E3HMMM.../
        global.msg[3] = scr_gettext("scr_papcall_1270") // THERE'S SOMETHING&ANNOYING ABOUT&THIS ROOM./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1276") // BUT I CAN'T&QUITE PLACE MY&FINGER ON IT.../
            global.msg[3] = scr_gettext("scr_papcall_1277") // THEN PLACE MY&WHOLE HAND ON&IT.../
            global.msg[4] = scr_gettext("scr_papcall_1278") // THEN PET IT&AFFECTIONATELY.../%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1291") // \E1* Huh!^1?&* Did you solve the&  puzzle!?/
            global.msg[3] = scr_gettext("scr_papcall_1292") // \E6* No one has ever..^1.&* I've been waiting so&  long for someone to.../
            global.msg[4] = scr_gettext("scr_papcall_1293") // \E2* I mean^1, uhhh^1, big deal^1!&* Whatever!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1298") // * Guess I've gotta&  find a new mystic&  artifact./%%
            }
        }
        break
    case room_water_statue:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1308") // \E3A MYSTERIOUS&STATUE.../%%
        if (global.flag[86] == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1313") // \E3WHAT'S THAT MUSIC?/
            global.msg[3] = scr_gettext("scr_papcall_1314") // AM I ON HOLD???/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1320") // \E0* That statue's been&  here forever.../
            global.msg[3] = scr_gettext("scr_papcall_1321") // * No one knows where&  it came from./%%
            if (global.flag[86] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1326") // * Hey^1, you figured out&  how to get the&  music to play...?/
                global.msg[3] = scr_gettext("scr_papcall_1327") // \E9* Nice^1, isn't it?/%%
            }
        }
        break
    case room_water_prewaterfall:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1336") // ALWAYS CARRY AN&UMBRELLA IN CASE&IT RAINS!/
        global.msg[3] = scr_gettext("scr_papcall_1337") // YOU KNOW^1.&JUST KEEP A FEW&IN YOUR POCKETS./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1342") // NOTHING LIKE A&HOT BUCKET OF&'BRELLAS.../%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1348") // * Those umbrellas were&  ASGORE's idea./
            global.msg[3] = scr_gettext("scr_papcall_1349") // \E9* He says he doesn't&  want anyone to&  catch a cold./
            global.msg[4] = scr_gettext("scr_papcall_1350") // \E0* Waterfall's underwater&  citizens couldn't care&  less^1, though./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1355") // * Did you get a 'brella?/%%
            }
        }
        break
    case room_water_waterfall:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1365") // YOU CAN SEE YOUR&REFLECTION IN A&PUDDLE^1, BUT.../
        global.msg[3] = scr_gettext("scr_papcall_1366") // \E1DON'T LET A BODY&OF WATER DETERMINE&YOUR SELF-WORTH!!!/%%
        if instance_exists(obj_mkid_actor)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1372") // HMMM^1? YOU'RE&HANGING OUT&WITH A FRIEND?/
            global.msg[3] = scr_gettext("scr_papcall_1373") // THEN MAYBE YOU&SHOULDN'T TALK&TO ME.../
            global.msg[4] = scr_gettext("scr_papcall_1374") // \E0YOU'LL MAKE THEM&JEALOUS!/%%
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1380") // CALLING AGAIN...?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1386") // * What!^1?&* You're at my&  FAVORITE SPOT!?!?/
            global.msg[3] = scr_gettext("scr_papcall_1387") // \E2* You'd better jump in&  at least 1000 puddles&  for me!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1392") // * Have you reached&  triple digits yet!?/%%
            }
        }
        break
    case room_water_waterfall2:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1402") // WHERE ARE YOU^1?&I HEAR WATER./
        global.msg[3] = scr_gettext("scr_papcall_1403") // ARE YOU IN THE&TOILET?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1409") // ALSO^1, WHAT'S A&TOILET?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1415") // * This whole area's&  like a little&  nature trail./
            global.msg[3] = scr_gettext("scr_papcall_1416") // * It's nice to have&  a rainy spot away&  from civilization.../
            global.msg[4] = scr_gettext("scr_papcall_1417") // \E7* Though^1, with the city&  filling up^1, who knows&  how long that'll last./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1422") // * Well?^1!&* Are you enjoying&  nature!?/%%
            }
        }
        break
    case room_water_waterfall3:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1431") // THAT'S THE KING'S&CASTLE.../%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1436") // SEEMS YOU CAN&FINALLY SEE THE&END./%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1442") // * ASGORE's castle.../
            global.msg[3] = scr_gettext("scr_papcall_1443") // \E7* Guess there's no&  stopping you^1, huh?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 7)
                global.msg[2] = scr_gettext("scr_papcall_1448") // * .../%%
            }
        }
        break
    case room_water_waterfall4:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1458") // SEEMS LIKE THE&PHONE CONNECTION'S&GETTING WEAK.../%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1463") // BETTER NOT GO&PAST THAT POINT./%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1469") // * The trail dead-ends&  here^1, unless you can&  jump./
            global.msg[3] = scr_gettext("scr_papcall_1470") // \E4* Honestly^1, I can't&  believe I expected&  you to go this way./
            global.msg[4] = scr_gettext("scr_papcall_1471") // \E6* What was I thinking???/
            global.msg[5] = scr_gettext("scr_papcall_1472") // \E1* ... and how was I&  right???/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_1477") // * Don't explain it!!/%%
            }
        }
        break
    case room_water_trashzone1:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1488") // FLOWERS...?/
        global.msg[3] = scr_gettext("scr_papcall_1489") // \E0DO ANY OF THEM&TALK!^1?&SAY HI FOR ME!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1494") // FLOWERS ARE OUR&BEST FRIENDS!!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1500") // * Those flowers.../
            global.msg[3] = scr_gettext("scr_papcall_1501") // * One day^1, they just&  started to grow&  there./
            global.msg[4] = scr_gettext("scr_papcall_1502") // * I swear^1, it's like&  they have a mind&  of their own./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1507") // * That's ridiculous&  though!/%%
            }
        }
        if (global.plot < 116)
        {
            global.msg[0] = scr_gettext("scr_papcall_1513") // * Ring..^1. Ring.../
            global.msg[1] = scr_gettext("scr_papcall_1514") // * (There's no response...)/%%
        }
        break
    case room_water_trashsavepoint:
        scr_papface(1, 2)
        global.msg[2] = scr_gettext("scr_papcall_1522") // GARBAGE^1, HUH^1?&BOY^1, DO I KNOW&GARBAGE!!/
        global.msg[3] = scr_gettext("scr_papcall_1523") // \E4AFTER ALL^1, I'M&HOUSEMATES WITH A&LAZY BAG OF TRASH!/
        global.msg[4] = scr_gettext("scr_papcall_1524") // \E0HIS NAME'S TRASHY^1.&HE LIVES IN THE&GARBAGE CAN./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1529") // YOU DIDN'T THINK I&DIDN'T NAME MY&GARBAGE^1, DID YOU?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1535") // \E1* That's where I&  met Alphys for the&  first time!!/
            global.msg[3] = scr_gettext("scr_papcall_1536") // \E0* I was looking for&  cool swords^1, when&  I saw her.../
            global.msg[4] = scr_gettext("scr_papcall_1537") // \E1* Uh^1, standing there^1,&  staring into the&  abyss./
            global.msg[5] = scr_gettext("scr_papcall_1538") // \E4* She looked pretty..^1.&* Um..^1.&* ... contemplative./
            global.msg[6] = scr_gettext("scr_papcall_1539") // \E9* So I asked her&  where she thought&  the abyss led to!/
            global.msg[7] = scr_gettext("scr_papcall_1540") // \E2* She looked up at&  me^1, shocked^1, and went&  red in the face./
            global.msg[8] = scr_gettext("scr_papcall_1541") // \E6* But I'm scary^1,&  so I'm used to&  that kinda stuff!/
            global.msg[9] = scr_gettext("scr_papcall_1542") // \E1* Then she kept&  explaining all her&  different theories./
            global.msg[10] = scr_gettext("scr_papcall_1543") // \E9* She went on for&  hours^1!&* I was so captivated!/
            global.msg[11] = scr_gettext("scr_papcall_1544") // \E1* After that^1, I kept&  running into her&  here./
            global.msg[12] = scr_gettext("scr_papcall_1545") // \E6* And now we're&  friends^1!&* Yeeee hawww!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1550") // * Oh my GOD^1!&* Don't make me tell&  this story AGAIN!!!/%%
            }
        }
        if (global.plot < 116)
        {
            global.msg[0] = scr_gettext("scr_papcall_1557") // * Ring..^1. Ring.../
            global.msg[1] = scr_gettext("scr_papcall_1558") // * (There's no response...)/%%
        }
        break
    case room_water_trashzone2:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1566") // I KNOW WHY YOU&CALLED ME./
        global.msg[3] = scr_gettext("scr_papcall_1567") // \E0I ALWAYS MAKE&PEOPLE FEEL&BETTER.../
        global.msg[4] = scr_gettext("scr_papcall_1568") // \E2WHEN THEY'RE DOWN&IN THE DUMPS!!!/
        global.msg[5] = scr_gettext("scr_papcall_1569") // \E0.../
        global.msg[6] = scr_gettext("scr_papcall_1570") // \E3I'VE SPENT TOO&LONG WITH MY&BROTHER TODAY./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1575") // FORGET I SAID&THAT./%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1581") // * The garbage dump!^1!&* So many great things&  come from there!!/
            global.msg[3] = scr_gettext("scr_papcall_1582") // \E0* The only reason we&  have modern&  technology.../
            global.msg[4] = scr_gettext("scr_papcall_1583") // * Is 'cause of all the&  human junk that flows&  from the surface!/
            global.msg[5] = scr_gettext("scr_papcall_1584") // \E9* Plus^1, it's a GREAT&  place to meet&  girls./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1590") // * Wait^1!&* Don't quote me on&  that one!!!/%%
            }
        }
        if (global.plot < 116)
        {
            global.msg[0] = scr_gettext("scr_papcall_1596") // * Ring..^1. Ring.../
            global.msg[1] = scr_gettext("scr_papcall_1597") // * (There's no response...)/%%
        }
        break
    case room_water_friendlyhub:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1604") // HEY^1!&YOU'RE NEAR&UNDYNE'S HOUSE!/
        global.msg[3] = scr_gettext("scr_papcall_1605") // THAT'S TO THE&LEFT-UPWARDS^1.&LUPWARDS./
        global.msg[4] = scr_gettext("scr_papcall_1606") // \E3ALL THE OTHER&DIRECTIONS GO TO&THE WRONG HOUSE./
        global.msg[5] = scr_gettext("scr_papcall_1607") // \E0NORTH:&GHOST HOUSE./
        global.msg[6] = scr_gettext("scr_papcall_1608") // EAST: TURTLE HOUSE./
        global.msg[7] = scr_gettext("scr_papcall_1609") // SOUTH:&TRASH HOUSE./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1614") // WEST: BIRD HOUSE./%%
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1620") // SOUNDS LIKE YOU'RE&NEAR UNDYNE'S&HOUSE./
            global.msg[3] = scr_gettext("scr_papcall_1621") // HEY^1!&WE SHOULD GO&VISIT UNDYNE!/
            scr_undface(4, 1)
            global.msg[5] = scr_gettext("scr_papcall_1623") // * I'm right here!/
            scr_papface(6, 0)
            global.msg[7] = scr_gettext("scr_papcall_1625") // I LOVE WHEN A PLAN&COMES TOGETHER^1!&NYEH HEH HEH!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1632") // * Well^1, I think we&  should hang out&  with Papyrus./
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_1634") // REALLY??^1?&CAN WE???/%%
            }
        }
        break
    case room_water_undyneyard:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1641") // THAT'S UNDYNE'S&HOUSE./
        global.msg[3] = scr_gettext("scr_papcall_1642") // LET'S GO THERE&AND HANG OUT&SOME DAY!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1647") // STILL WAITING&OUTSIDE HER&HOUSE...?/
            global.msg[3] = scr_gettext("scr_papcall_1648") // \E0YEAH^1, I DO THAT&SOMETIMES^1, TOO!/%%
        }
        if instance_exists(obj_papyrus_room)
        {
            global.msg[2] = scr_gettext("scr_papcall_1653") // THAT'S UNDYNE'S&HOUSE./
            global.msg[3] = scr_gettext("scr_papcall_1654") // YOU KNOW^1, THE&ONE WITH THE&SKELETON IN FRONT./%%
        }
        if (u == 1)
        {
            if (global.flag[389] < 5)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1662") // THAT'S UNDYNE'S&HOUSE./
                global.msg[3] = scr_gettext("scr_papcall_1663") // IT'S A GREAT&PLACE TO.../
                global.msg[4] = scr_gettext("scr_papcall_1664") // \E5UHHH?/
                scr_undface(5, 1)
                global.msg[6] = scr_gettext("scr_papcall_1666") // * Huff..^1. puff...!/
                global.msg[7] = scr_gettext("scr_papcall_1667") // \E6* YEAH!!^1!&* That's MY HOUSE!!!/
                scr_papface(8, 0)
                global.msg[9] = scr_gettext("scr_papcall_1669") // HI UNDYNE^1!&HOW'D YOU GET&HERE SO FAST?/
                scr_undface(10, 9)
                global.msg[11] = scr_gettext("scr_papcall_1671") // \E9* I ran./
                scr_papface(12, 0)
                global.msg[13] = scr_gettext("scr_papcall_1673") // WOWIE!!^1!&UNDYNE!!!/
                global.msg[14] = scr_gettext("scr_papcall_1674") // SOMEDAY I WANT&TO BE AS STRONG&AND SWEATY AS YOU./%%
                if (global.flag[462] > 0)
                {
                    scr_papface(1, 3)
                    global.msg[2] = scr_gettext("scr_papcall_1680") // SO YOU RAN HERE&JUST TO BE ON&THE PHONE???/
                    scr_undface(3, 9)
                    global.msg[4] = scr_gettext("scr_papcall_1682") // * Yep!/
                    scr_papface(5, 0)
                    global.msg[6] = scr_gettext("scr_papcall_1684") // THEN YOU MUST&HAVE SOMETHING.../
                    global.msg[7] = scr_gettext("scr_papcall_1685") // EXTREMELY COOL&TO SAY ABOUT&YOUR HOUSE!!!/
                    scr_undface(8, 6)
                    global.msg[9] = scr_gettext("scr_papcall_1687") // * Nope!!!/%%
                }
            }
            else
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1694") // * That's my house./
                global.msg[3] = scr_gettext("scr_papcall_1695") // \E1* Or^1, it WAS my&  house^1, until we&  set it on fire./
                global.msg[4] = scr_gettext("scr_papcall_1696") // \E6* But hey^1, can't say&  I've never done&  that before!!/%%
                if (global.flag[462] > 0)
                {
                    scr_undface(1, 0)
                    global.msg[2] = scr_gettext("scr_papcall_1701") // * Hey^1, if you find&  any cool swords in&  the wreckage.../
                    global.msg[3] = scr_gettext("scr_papcall_1702") // * You know where to&  find me./%%
                }
            }
        }
        break
    case room_water_blookyard:
        scr_papface(1, 4)
        global.msg[2] = scr_gettext("scr_papcall_1714") // OH^1, THAT'S THE&HOUSE OF... UM..^1.&UNDYNE'S NEIGHBOR./
        global.msg[3] = scr_gettext("scr_papcall_1715") // \E3WHAT WAS THEIR&NAME AGAIN?/
        global.msg[4] = scr_gettext("scr_papcall_1716") // \E0SPOOKY BLOO BLOO?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1721") // NAPPER HOG...?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1727") // * That's Napstablook's&  house./
            global.msg[3] = scr_gettext("scr_papcall_1728") // \E9* They kind of keep&  to theirself^1, but...&* That's a good ghost./
            global.msg[4] = scr_gettext("scr_papcall_1729") // \E4* I try to be a good&  neighbor^1, but I think&  they're scared of me./
            global.msg[5] = scr_gettext("scr_papcall_1730") // \E2* C'mon^1, what's scary&  about a good-natured&  invite to wrestle!!?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1736") // * They're incorporeal&  anyway!!!/%%
            }
        }
        break
    case room_water_blookhouse:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1745") // SO YOU'RE FRIENDS&WITH A GHOST.../
        global.msg[3] = scr_gettext("scr_papcall_1746") // \E5ISN'T THAT KIND&OF SPOOKY?/
        global.msg[4] = scr_gettext("scr_papcall_1747") // \E3I'D THINK YOU'D&LIKE YOUR FRIENDS&WARM AND CUDDLY.../
        global.msg[5] = scr_gettext("scr_papcall_1748") // \E0LIKE SKELETONS!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1754") // VERY SOFT^1, AND&FULL OF CALCIUM./%%
        }
        if (u == 1)
        {
            scr_undface(1, 6)
            global.msg[2] = scr_gettext("scr_papcall_1760") // * Oh^1, you're hanging&  out with Napstablook!^1?&* That's great!!!/
            global.msg[3] = scr_gettext("scr_papcall_1761") // \E9* I haven't seen them&  hanging out with&  anyone since.../
            global.msg[4] = scr_gettext("scr_papcall_1762") // \E4* Well^1, their cousin./
            global.msg[5] = scr_gettext("scr_papcall_1763") // \E9* They would both watch&  TV at all hours of&  the day.../
            global.msg[6] = scr_gettext("scr_papcall_1764") // \E0* Then they would&  practice these&  weird performances./
            global.msg[7] = scr_gettext("scr_papcall_1765") // \E4* Where'd they go...?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1771") // * Don't feel like you&  have to live up&  to their cousin!/
                global.msg[3] = scr_gettext("scr_papcall_1772") // \E6* Just be your lovable&  old garbage self!/%%
            }
        }
        break
    case room_water_hapstablook:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1781") // THAT HOUSE USED&TO BE HAUNTED./
        global.msg[3] = scr_gettext("scr_papcall_1782") // BECAUSE A GHOST&LIVED THERE./
        global.msg[4] = scr_gettext("scr_papcall_1783") // BUT THE GHOST&MOVED AWAY./
        global.msg[5] = scr_gettext("scr_papcall_1784") // IT'S AN&UN-HAUNTED HOUSE./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1791") // BY THE BY^1,&BREAKING INTO&A HOUSE.../
            global.msg[3] = scr_gettext("scr_papcall_1792") // \E3THAT'S ILLEGAL^1,&RIGHT???/
            global.msg[4] = scr_gettext("scr_papcall_1793") // \E5PLEASE STOP&COMMITTING GHOST&CRIMES./%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_1799") // * WHAT?/
            global.msg[3] = scr_gettext("scr_papcall_1800") // * You broke into&  Napstablook's&  cousin's house!?/
            global.msg[4] = scr_gettext("scr_papcall_1801") // \E2* That's..^1.&* That's...!/
            global.msg[5] = scr_gettext("scr_papcall_1802") // \E9* Hey^1, what was&  their name^1, anyway?/
            scr_papface(6, 0)
            global.msg[7] = scr_gettext("scr_papcall_1804") // HAPPSTABLOOK^1,&THE HAPPY&GHOST./
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_1806") // * Okay^1, that's&  DEFINITELY wrong./
            scr_papface(10, 0)
            global.msg[11] = scr_gettext("scr_papcall_1808") // IT'S NOT WRONG^1.&IT'S JUST MY&HEADCANON./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_1815") // * Seriously^1, though^1,&  stop committing&  ghost crimes./%%
            }
        }
        break
    case room_water_farm:
        scr_papface(1, 2)
        global.msg[2] = scr_gettext("scr_papcall_1825") // THESE SNAILS ARE&JUST LIKE MY&BROTHER./
        global.msg[3] = scr_gettext("scr_papcall_1826") // ROUND^1, SLOW.../
        global.msg[4] = scr_gettext("scr_papcall_1827") // \E3AND CONSTANTLY&EMITTING SLIME???/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1832") // EMITTING SLIME..^1.&THAT'S JUST WHAT&BROTHERS DO./%%
        }
        if (u == 1)
        {
            scr_undface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_1838") // * Napstablook's family&  used to run this&  farm^1, but.../
            global.msg[3] = scr_gettext("scr_papcall_1839") // \E7* They've all..^1.&* Passed on.../
            global.msg[4] = scr_gettext("scr_papcall_1840") // \E9* ... to different jobs^1,&  since there's not&  much business here./
            global.msg[5] = scr_gettext("scr_papcall_1841") // \E0* Them and their cousin&  stayed behind to run&  the family farm./
            global.msg[6] = scr_gettext("scr_papcall_1842") // \E4* But no one's seen&  their cousin for a&  long time./
            global.msg[7] = scr_gettext("scr_papcall_1843") // \E7* Now Napstablook's&  all alone.../
            global.msg[8] = scr_gettext("scr_papcall_1844") // \E1* Be nice to them^1,&  okay!?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1850") // * Cherish this ghost!!!/%%
            }
        }
        break
    case room_water_shop:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1859") // IF YOU SEE A&SHOP^1, YOU SHOULD&STOP.../
        global.msg[3] = scr_gettext("scr_papcall_1860") // DROP^1, AND&ROLL.../
        global.msg[4] = scr_gettext("scr_papcall_1861") // INTO SOME&GREAT DEALS!!/
        global.msg[5] = scr_gettext("scr_papcall_1862") // BECAUSE WE'RE&HAVING A FIRE&SALE!!/
        global.msg[6] = scr_gettext("scr_papcall_1863") // AT MY IMAGINARY&STORE^1, WHICH&SELLS FLAMES./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1868") // YET ANOTHER DREAM&OF MINE./%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1874") // \E1* Hey!/
            global.msg[3] = scr_gettext("scr_papcall_1875") // * That's the store of&  Gerson^1, the Hammer of&  Justice!/
            global.msg[4] = scr_gettext("scr_papcall_1876") // \E9* The toughest monster&  that ever lived...!/
            global.msg[5] = scr_gettext("scr_papcall_1877") // \E4* He fought in the&  war between humans&  and monsters.../
            global.msg[6] = scr_gettext("scr_papcall_1878") // \E6* And he survived^1!&* He's a real hero!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1883") // * Are you gonna buy&  something?/%%
            }
        }
        break
    case room_water_dock:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_1892") // IS THE RIVER&PERSON THERE&TODAY?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1897") // ARE THEY?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1903") // * That river connects&  to Snowdin and&  Hotland./
            global.msg[3] = scr_gettext("scr_papcall_1904") // * If you need to get&  from one place to&  another^1, jump in!/
            global.msg[4] = scr_gettext("scr_papcall_1905") // \E2* Look^1, that's all we&  got for public&  transport^1, OK!?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1910") // * So what?/%%
            }
        }
        break
    case room_water15:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1919") // WHAT'S THAT&STRANGE WHISPER?/
        global.msg[3] = scr_gettext("scr_papcall_1920") // \E5I MIGHT HAVE&TO HANG UP./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 5)
            global.msg[2] = scr_gettext("scr_papcall_1925") // PAPYRUS ISN'T&HOME RIGHT NOW!!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1931") // * A field of echo&  flowers.../
            global.msg[3] = scr_gettext("scr_papcall_1932") // \E4* They babble back and&  forth to each other.../
            global.msg[4] = scr_gettext("scr_papcall_1933") // * ... until their words&  become meaningless&  noise./
            global.msg[5] = scr_gettext("scr_papcall_1934") // \E5* Creepy^1, huh?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_1939") // * Stop calling me&  from that creepy&  room!!/%%
            }
        }
        break
    case room_water16:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1948") // WHAT^1?&MUSHROOMS^1?&CAN YOU EAT THEM?/
        global.msg[3] = scr_gettext("scr_papcall_1949") // \E3ARE YOU SURE&YOU CAN'T EAT&THEM???/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_1954") // I'D TRY EATING&THEM./%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1960") // * Once you get familiar&  with this room.../
            global.msg[3] = scr_gettext("scr_papcall_1961") // \E9* You don't even need&  to light up the&  mushrooms!/
            global.msg[4] = scr_gettext("scr_papcall_1962") // \E0* I mean^1, the path&  to Temmie Village is&  never lit up here./
            global.msg[5] = scr_gettext("scr_papcall_1963") // \E6* But why would you&  wanna go there!?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1968") // * It's down south if&  you want to avoid&  it./%%
            }
        }
        break
    case room_water17:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_1977") // LANTERNS^1?&UM^1, OKAY.../
        global.msg[3] = scr_gettext("scr_papcall_1978") // \E0CAN YOU EAT&THEM???/
        global.msg[4] = scr_gettext("scr_papcall_1979") // \E3I'M SERIOUSLY OUT&OF IDEAS HERE./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1984") // I'D TRY EATING&THEM./%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_1990") // * Once you get familiar&  with this room.../
            global.msg[3] = scr_gettext("scr_papcall_1991") // \E9* You don't even need&  to light up the&  lanterns!/
            global.msg[4] = scr_gettext("scr_papcall_1992") // \E0* ... yeah./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_1997") // * Whatever./%%
            }
        }
        break
    case room_water18:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2007") // HMMM..^1.&A CORRIDOR FILLED&WITH WATER./
        global.msg[3] = scr_gettext("scr_papcall_2008") // \E0THAT'S JUST A&GUESS./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2013") // I HAVE NOTHING&TO SAY./%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2019") // * That's where I first&  talked to you!/
            global.msg[3] = scr_gettext("scr_papcall_2020") // \E3* Weren't you SUPER&  terrified?/
            global.msg[4] = scr_gettext("scr_papcall_2021") // \E2* I practice that&  monologue ALL the&  time in the mirror!/
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_2023") // UNDYNE???/
            scr_undface(7, 1)
            global.msg[8] = scr_gettext("scr_papcall_2025") // * I mean!!^1!&* Uh!!^1!&* No I don't!!!/
            scr_papface(9, 3)
            global.msg[10] = scr_gettext("scr_papcall_2027") // OH^1.&I WAS JUST GOING&TO ASK./
            global.msg[11] = scr_gettext("scr_papcall_2028") // \E0DO YOU WANT TO&PRACTICE MONOLOGUES&TOGETHER...?!!/
            scr_undface(12, 6)
            global.msg[13] = scr_gettext("scr_papcall_2030") // * UH!!^1!&* NO!!^1!&* I DON'T!!!!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2035") // ATTENTION EVERYONE^1!&I AM GOING TO&OPEN THE FRIDGE!/
                scr_undface(3, 2)
                global.msg[4] = scr_gettext("scr_papcall_2037") // * Do you have a&  monologue for&  EVERYTHING?/%%
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case room_water19:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2051") // ECHO FLOWERS.../
        global.msg[3] = scr_gettext("scr_papcall_2052") // \E0THERE'S ONLY ONE&TALKING FLOWER&FOR ME!!/%%
        if (u == 1)
        {
            scr_undface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2058") // * Fields of flowers^1,&  whispering everybody's&  hopes and dreams.../
            global.msg[3] = scr_gettext("scr_papcall_2059") // \E1* NGAHHHH!!^1!&* IT FILLS ME WITH&  POWER!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2064") // * NGAHHHH!!/%%
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case room_water20:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2078") // EACH AREA HAS TO&HAVE A PRECARIOUS&BRIDGE./
        global.msg[3] = scr_gettext("scr_papcall_2079") // IT'S MANDATED BY&THE GOVERNMENT./
        global.msg[4] = scr_gettext("scr_papcall_2080") // OF COURSE^1, KING&FLUFFYBOY WANTS TO&UNMANDATE IT SAFER./
        global.msg[5] = scr_gettext("scr_papcall_2081") // \E1WHY!!^1? WON'T HE&THINK OF THE&CHILDREN!?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2088") // SPIKES^1. DANGER&BRIDGES^1. THE&PILLARS OF YOUTH./%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2094") // * This room...!/
            global.msg[3] = scr_gettext("scr_papcall_2095") // * Error?/%%
            if (global.flag[98] == 1)
            {
                global.msg[3] = scr_gettext("scr_papcall_2098") // \E7* That sure was a&  tense scenario./
                global.msg[4] = scr_gettext("scr_papcall_2099") // \E4* I just wanted to&  help that poor kid^1,&  but.../
                global.msg[5] = scr_gettext("scr_papcall_2100") // \E1* I thought if I tried^1,&  you'd attack me!/
                global.msg[6] = scr_gettext("scr_papcall_2101") // \E9* Thankfully^1, you&  ended up saving&  them./%%
            }
            if (global.flag[98] == 2)
            {
                global.msg[3] = scr_gettext("scr_papcall_2105") // \E7* I'd actually..^1.&* Forgotten what had&  happened here./
                global.msg[4] = scr_gettext("scr_papcall_2106") // \E4* You just let that&  poor kid drop to&  the floor./
                global.msg[5] = scr_gettext("scr_papcall_2107") // * Maybe you were just&  afraid./
                global.msg[6] = scr_gettext("scr_papcall_2108") // \E7* But if I hadn't&  been around^1, then...?/%%
            }
            if (global.flag[98] == 0)
            {
                global.msg[3] = scr_gettext("scr_papcall_2112") // \E2* That's when you ran&  away when your friend&  asked for help!!!/
                global.msg[4] = scr_gettext("scr_papcall_2113") // \E9* Though^1, who can blame&  you for fleeing from&  certain death...?/
                global.msg[5] = scr_gettext("scr_papcall_2114") // \E6* ME!!!^1!&* I'm still TOTALLY&  disappointed!/
                global.msg[6] = scr_gettext("scr_papcall_2115") // \E1* That's the WIMPIEST&  thing you've EVER&  done!/
                global.msg[7] = scr_gettext("scr_papcall_2116") // * Apologize to your&  poor friend^1, OK^1,&  buster!?/%%
            }
            if (global.flag[462] > 0)
            {
                scr_undface(7, 1)
                global.msg[2] = scr_gettext("scr_papcall_2122") // * .../%%
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case room_water21:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2136") // THIS IS WHERE&ELDER PUZZLER&LIKES TO STAND./
        global.msg[3] = scr_gettext("scr_papcall_2137") // BLOCK-PUSHING^1.&KEY-GATHERING^1.&TEDIOUS AGONY./
        global.msg[4] = scr_gettext("scr_papcall_2138") // IT'S IMPORTANT TO&RESPECT OUR ROOTS!/%%
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2144") // THIS IS WHERE&ELDER PUZZLER&LIKES TO STAND./
            global.msg[3] = scr_gettext("scr_papcall_2145") // IT'S IMPORTANT TO&RESPECT OUR&PUZZLING ROOTS./
            scr_undface(4, 2)
            global.msg[5] = scr_gettext("scr_papcall_2147") // * Yeah^1, someone else&  has to care so I&  don't have to!/
            scr_papface(6, 5)
            global.msg[7] = scr_gettext("scr_papcall_2149") // BUT UNDYNE^1, DON'T&YOU LIKE TRADITION?/
            scr_undface(8, 2)
            global.msg[9] = scr_gettext("scr_papcall_2151") // * I worked in an office&  pushing blocks for&  a month!/
            global.msg[10] = scr_gettext("scr_papcall_2152") // \E9* My respect for block&  puzzles was depleted&  by corporate life./
            scr_papface(11, 5)
            global.msg[12] = scr_gettext("scr_papcall_2154") // WHAT!^1? YOU THREW&AWAY MY DREAM&LIFE!!!/
            global.msg[13] = scr_gettext("scr_papcall_2155") // \E2THE LIFE OF A&SIMPLE SALARYMAN.../
            global.msg[14] = scr_gettext("scr_papcall_2156") // COMMUTING EVERY&DAY ON A TRAIN&FULL OF SPIKES.../
            scr_undface(15, 9)
            global.msg[16] = scr_gettext("scr_papcall_2158") // * (I won't tell him&  that's not how it&  works...)/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_2163") // UNDYNE^1, DID YOU&REALLY HAVE AN&OFFICE JOB?/
                scr_undface(3, 4)
                global.msg[4] = scr_gettext("scr_papcall_2165") // * Well^1, it was more&  of a^1, uh^1, community&  service thing./
                scr_papface(5, 0)
                global.msg[6] = scr_gettext("scr_papcall_2167") // THAT'S UNDYNE!^1!&ALWAYS HELPING OUT&THE COMMUNITY!/
                scr_undface(7, 9)
                global.msg[8] = scr_gettext("scr_papcall_2169") // * Uh^1, yep^1!&* Totally of my own&  volition there!/%%
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case room_water_undynefinal:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2185") // THAT'S UNDYNE'S&DRAMATIC CRAG./
        global.msg[3] = scr_gettext("scr_papcall_2186") // \E0SHE'S ALWAYS&POSING ATOP IT./
        global.msg[4] = scr_gettext("scr_papcall_2187") // \E3MUMBLING SOMETHING&TO HERSELF.../%%
        if (global.flag[462] > 0)
            global.msg[2] = scr_gettext("scr_papcall_2191") // I THINK IT'S&SOMETHING SHE&HAS TO MEMORIZE./%%
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2198") // * Oh my GOD!!^1!&* Wasn't this room&  the BEST!?/
            global.msg[3] = scr_gettext("scr_papcall_2199") // \E3* Like when I decided&  to NOT do that&  BORING monologue.../
            global.msg[4] = scr_gettext("scr_papcall_2200") // \E6* And then went TOTALLY&  off-the-cuff!?/
            global.msg[5] = scr_gettext("scr_papcall_2201") // \E2* Or when I almost&  killed you with&  spears???/
            global.msg[6] = scr_gettext("scr_papcall_2202") // \E3* Or when I almost&  killed you with&  MORE spears???/
            global.msg[7] = scr_gettext("scr_papcall_2203") // \E9* Aw man^1.&* I should have taken&  photos./
            global.msg[8] = scr_gettext("scr_papcall_2204") // \E8* Think about how cute&  a little scrapbook&  would be.../
            scr_papface(9, 4)
            global.msg[10] = scr_gettext("scr_papcall_2206") // NOW I WANT A&SCRAPBOOK OF&MY FIGHT TOO!!!/
            scr_undface(11, 6)
            global.msg[12] = scr_gettext("scr_papcall_2208") // * Let's start a photo&  company for boss&  fights!/
            scr_papface(13, 0)
            global.msg[14] = scr_gettext("scr_papcall_2210") // ONE WEEK LATER^1,&SAMPLE GLOSSIES&IN THE MAIL./
            scr_undface(15, 9)
            global.msg[16] = scr_gettext("scr_papcall_2212") // * Relive the memories.../%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2217") // * Going off-the-cuff..^1.&* It helped that I...&* Uh./
                global.msg[3] = scr_gettext("scr_papcall_2218") // \E9* Completely forgot the&  words to my monologue^1,&  anyway.../%%
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case room_water_undynefinal3:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2234") // HEY..^1. ISN'T THIS&WHERE I CALLED&YOU?/
        global.msg[3] = scr_gettext("scr_papcall_2235") // \E2I HAVE A PHOTO-&GRAPHIC MEMORY&FOR PHONE CALLS./
        global.msg[4] = scr_gettext("scr_papcall_2236") // \E3.../
        global.msg[5] = scr_gettext("scr_papcall_2237") // \E5HEY^1, WHEN ARE&WE GONNA HANG&WITH UNDYNE?/%%
        if (global.flag[462] > 0)
            global.msg[2] = scr_gettext("scr_papcall_2241") // \E0HEY^1, WHEN ARE&WE GONNA HANG&WITH UNDYNE?/%%
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2248") // * This is where I&  was chasing you.../
            global.msg[3] = scr_gettext("scr_papcall_2249") // \E1* But you got a phone&  call^1, so I had to&  wait./
            scr_papface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_2251") // OH^1!&THAT WAS ME!/
            scr_undface(6, 2)
            global.msg[7] = scr_gettext("scr_papcall_2253") // * What!^1?&* What were you even&  calling about!?/
            scr_papface(8, 0)
            global.msg[9] = scr_gettext("scr_papcall_2255") // I WAS JUST&SAYING WE SHOULD&ALL HANG OUT./
            scr_undface(10, 2)
            global.msg[11] = scr_gettext("scr_papcall_2257") // * As I was trying&  to kill them!?/
            scr_papface(12, 4)
            global.msg[13] = scr_gettext("scr_papcall_2259") // WELL!^1!&NOBODY STARTS AS&GREAT FRIENDS!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_2265") // * Nobody starts as&  great friends^1, huh?/
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_2267") // THAT'S THE RULE./
                scr_undface(5, 2)
                global.msg[6] = scr_gettext("scr_papcall_2269") // * Well^1, you're gonna&  END as my great&  friend!!/
                scr_papface(7, 7)
                global.msg[8] = scr_gettext("scr_papcall_2271") // N... NO!!^1!&NOT THE FLATTERY&SUPLEX!!!/%%
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case room_fire1:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2285") // OH!!!&YOU'RE IN HOTLAND&NOW!!!/
        global.msg[3] = scr_gettext("scr_papcall_2286") // \E4... HEY SANS^1,&AREN'T YOU SUPPOSED&TO BE THERE?/
        scr_sansface(4, 2)
        global.msg[5] = scr_gettext("scr_papcall_2288") // * don't worry^1.&* i am./
        scr_papface(6, 0)
        global.msg[7] = scr_gettext("scr_papcall_2290") // PHEW!/%%
        if (global.flag[462] > 0)
            global.msg[2] = scr_gettext("scr_papcall_2295") // FINALLY^1, SANS IS&DOING HIS JOB./%%
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2302") // \E1* I can't believe&  Papyrus's brother was&  sleeping!!/
            global.msg[3] = scr_gettext("scr_papcall_2303") // \E2* I was counting on&  him to stop you!^1!&* UrrrrgHHHH!!!/
            scr_papface(4, 3)
            global.msg[5] = scr_gettext("scr_papcall_2305") // HE'S GOTTEN REALLY&OUT OF SHAPE^1.&HE TIRES EASILY./
            global.msg[6] = scr_gettext("scr_papcall_2306") // LATELY HE'S BEEN&NAPPING OVER 7&HOURS A NIGHT.../
            global.msg[7] = scr_gettext("scr_papcall_2307") // \E1HE'S NAPPING&HIMSELF INTO AN&EARLY GRAVE!!/
            scr_undface(8, 1)
            global.msg[9] = scr_gettext("scr_papcall_2309") // * I agree!^1!&* Your brother needs&  to...!/
            global.msg[10] = scr_gettext("scr_papcall_2310") // \E9* ... wait^1, isn't that&  just called sleeping?/
            scr_papface(11, 7)
            global.msg[12] = scr_gettext("scr_papcall_2312") // UNDYNE!^1! NO!!^1!&NOT YOU TOO!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 4)
                global.msg[2] = scr_gettext("scr_papcall_2319") // * Wait^1. Papyrus..^1.&* When do YOU sleep?/
                scr_papface(3, 3)
                global.msg[4] = scr_gettext("scr_papcall_2321") // \E3I'M USUALLY TOO&BUSY TO SLEEP^1.&WHY???/
                scr_undface(5, 7)
                global.msg[6] = scr_gettext("scr_papcall_2323") // * Well^1, I was just&  thinking.../
                global.msg[7] = scr_gettext("scr_papcall_2324") // \E6* If you're not using&  that cool car bed^1,&  can I have it!?/%%
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case room_fire2:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2339") // A WATER COOLER...^1?&IN HOTLAND???&THAT'S WEIRD./
        global.msg[3] = scr_gettext("scr_papcall_2340") // \E0SHOULDN'T IT BE&A FIRE COOLER&INSTEAD?/%%
        if (global.flag[462] > 0)
        {
            global.msg[2] = scr_gettext("scr_papcall_2345") // \E3WHAT'S A WATER&COOLER DO^1,&ANYWAY?/
            global.msg[3] = scr_gettext("scr_papcall_2346") // \E3MAKE WATER..^1.&COOLER?/
            global.msg[4] = scr_gettext("scr_papcall_2347") // \E0SO IT GIVES IT&SPIKES AND MAKES&IT GLOW?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 6)
            global.msg[2] = scr_gettext("scr_papcall_2354") // * Thank God for that&  water cooler^1, huh?/
            global.msg[3] = scr_gettext("scr_papcall_2355") // \E4* Actually^1, you can&  thank Alphys.../
            global.msg[4] = scr_gettext("scr_papcall_2356") // \E9* She put it there&  just for me./
            global.msg[5] = scr_gettext("scr_papcall_2357") // \E0* Now I can take a&  drink on the way&  to her lab./
            global.msg[6] = scr_gettext("scr_papcall_2358") // \E1* Though^1, usually I'm&  not wearing 100&  pounds of armor...!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_2363") // * Thanks for giving me&  that water^1, I guess./%%
            }
        }
        if (global.plot < 122 || global.flag[350] == 1)
            noresponse = 1
        break
    case room_fire_lab1:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2377") // A LAB??^1?&MY BROTHER&WOULD LOVE THAT!/
        global.msg[3] = scr_gettext("scr_papcall_2378") // HE LOVES SCIENCE&FICTION!!/
        global.msg[4] = scr_gettext("scr_papcall_2379") // ESPECIALLY&WHEN IT'S&REAL./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2384") // WAIT^1, THAT BAG OF&DOG FOOD LOOKS&FAMILIAR.../
            global.msg[3] = scr_gettext("scr_papcall_2385") // I REMEMBER SEEING&IT..^1.&IN SANS'S ROOM?/
            global.msg[4] = scr_gettext("scr_papcall_2386") // \E1YEAH^1! I ASKED HIM&WHY HE HAD IT!/
            global.msg[5] = scr_gettext("scr_papcall_2387") // \E0HE TOLD ME HE&WAS TRYING TO&EAT HEALTHIER./%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2393") // * You're at Alphys's&  lab^1?&* Is she there...?/
            global.msg[3] = scr_gettext("scr_papcall_2394") // \E1* Hey^1, tell her I&  said hi^1, okay!?/
            global.msg[4] = scr_gettext("scr_papcall_2395") // \E2* And^1, tell me how&  she's doing!/
            global.msg[5] = scr_gettext("scr_papcall_2396") // \E9* And tell me if&  she needs anything^1,&  and.../
            global.msg[6] = scr_gettext("scr_papcall_2397") // \E1* Wait^1! No^1!&* Don't ask any of&  that!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2402") // * But she's fine^1,&  right!?/%%
            }
        }
        if (global.plot <= 125)
            global.msg[0] = scr_gettext("scr_papcall_2408") // * (There's some strange&  interference...)/%%
        break
    case room_fire_lab2:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2416") // \E2YOU'RE IN HER&ROOM^1, UNINVITED^1?&WOWIE.../
        global.msg[3] = scr_gettext("scr_papcall_2417") // \E3THAT'S EXTREMELY&CREEPY./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2422") // MAYBE DON'T DO&THAT./%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2428") // * What!^1?&* You're in her room!?/
            global.msg[3] = scr_gettext("scr_papcall_2429") // \E2* Get out of there!/
            global.msg[4] = scr_gettext("scr_papcall_2430") // \E9* Unless^1, um^1, she&  invited you.../
            global.msg[5] = scr_gettext("scr_papcall_2431") // \E2* No wayyyy!!^1!&* That did NOT happen!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2436") // * Stop that!/%%
            }
        }
        break
    case room_fire3:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2445") // HOTLAND^1, HUH.../
        global.msg[3] = scr_gettext("scr_papcall_2446") // \E2I KNOW IT LIKE&THE BACK OF&MY HAND.../
        global.msg[4] = scr_gettext("scr_papcall_2447") // \E3WHICH^1, SINCE I'M&ALWAYS WEARING&GLOVES.../
        global.msg[5] = scr_gettext("scr_papcall_2448") // \E0I DON'T KNOW&ANYTHING&ABOUT!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2453") // MY KNOWLEDGE&QUANTITY IS&STAGNANT./%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2459") // NEITHER OF US&KNOW ANYTHING&ABOUT HOTLAND./
            scr_undface(3, 2)
            global.msg[4] = scr_gettext("scr_papcall_2461") // * So we'll just have&  to COMBINE OUR&  POWER!!!/
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_2463") // ZERO PLUS ZERO&IS STILL ZERO./
            scr_undface(7, 6)
            global.msg[8] = scr_gettext("scr_papcall_2465") // * Yeah^1, but it's a&  BIG zero!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2470") // * THE BIGGEST ZERO!/%%
            }
        }
        break
    case room_fire_dock:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2479") // HEY^1, YOU SHOULD&COME TO SNOWDIN&AND VISIT ME!/
        global.msg[3] = scr_gettext("scr_papcall_2480") // \E2I'VE BEEN WORKING&ON A FEW THINGS./
        global.msg[4] = scr_gettext("scr_papcall_2481") // \E0A FEW SENTENCES&TO STAND AROUND&AND REPEAT./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2486") // A FEW SENTENCES&TO STAND AROUND&AND REPEAT./%%
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2492") // HEY^1, YOU SHOULD&COME TO SNOWDIN&AND VISIT ME!/
            scr_undface(3, 2)
            global.msg[4] = scr_gettext("scr_papcall_2494") // * No WAY!!^1!&* Come to Snowdin&  and visit ME!!!/
            scr_papface(5, 5)
            global.msg[6] = scr_gettext("scr_papcall_2496") // WHAT??^1?&WE'RE IN THE&SAME LOCATION!!/
            scr_undface(7, 6)
            global.msg[8] = scr_gettext("scr_papcall_2498") // * Wrong^1! I'm standing&  slightly to the&  right!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2503") // * Come on!!^1!&* Make your choice!!!/%%
            }
        }
        break
    case room_fire5:
        scr_papface(1, 5)
        global.msg[2] = scr_gettext("scr_papcall_2512") // CONVEYOR BELTS&EVERYWHERE?^1?&ARE YOU SERIOUS?/
        global.msg[3] = scr_gettext("scr_papcall_2513") // \E3IMAGINE RIDING&ONE TO GET TO&WORK OR SCHOOL./
        global.msg[4] = scr_gettext("scr_papcall_2514") // RIDICULOUS./
        global.msg[5] = scr_gettext("scr_papcall_2515") // \E0NOW ICE AND&SPIKES^1, THERE'S&CONVENIENCE!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2520") // GLAD I DON'T&LIVE IN HOTLAND./%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2526") // * I rode on a&  conveyor belt&  once./
            global.msg[3] = scr_gettext("scr_papcall_2527") // \E1* I learned pretty&  fast that they&  make me sick./
            scr_papface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_2529") // DID YOU HURL??/
            scr_undface(6, 6)
            global.msg[7] = scr_gettext("scr_papcall_2531") // * Yeah^1, like 9000&  times!^1!&* It was awesome!!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 5)
                global.msg[2] = scr_gettext("scr_papcall_2536") // STOP CALLING AND&MAKING HER SAY&GROSS THINGS./%%
            }
        }
        break
    case room_fire6:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2546") // STEAM VENTS^1?&WOW..^1. THAT&SOUNDS AWFUL./
        global.msg[3] = scr_gettext("scr_papcall_2547") // \E1WHAT IF YOU'RE&WEARING A&DRESS?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2552") // GLAD I DON'T&LIVE IN HOTLAND!!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2558") // * Steam vents^1?&* I think Alphys told&  me about those./
            global.msg[3] = scr_gettext("scr_papcall_2559") // * The CORE cools off&  by releasing steam&  through those.../
            global.msg[4] = scr_gettext("scr_papcall_2560") // \E9* And at the same&  time^1, it doubles&  as transport!/
            global.msg[5] = scr_gettext("scr_papcall_2561") // \E6* Pretty cool^1, if&  you aren't wearing&  a dress!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2566") // * Huh!^1?&* Did you put on&  a dress?/%%
            }
        }
        break
    case room_fire_lasers1:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2576") // ORANGE AND BLUE&LASERS^1, HUH?/
        global.msg[3] = scr_gettext("scr_papcall_2577") // \E3JUST KEEP IN&MIND WHAT THE&COLORS MEAN./
        global.msg[4] = scr_gettext("scr_papcall_2578") // \E0BLUE MEANS&JUMP.../
        global.msg[5] = scr_gettext("scr_papcall_2579") // \E3AND ORANGE MEANS&YOU'LL..^1. SMELL&LIKE ORANGES./
        global.msg[6] = scr_gettext("scr_papcall_2580") // \E0THAT'S WHAT I&REMEMBER./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2585") // HAVE FUN!!/%%
        }
        if (u == 1 && global.plot >= 131)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2591") // * What!^1?&* Why'd I call Alphys&  about the weather?/
            global.msg[3] = scr_gettext("scr_papcall_2592") // \E3* Who CARES!?!^1?&* Isn't it natural&  to love meteorology!?/
            scr_papface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_2594") // ZOINKS!!!/
            global.msg[6] = scr_gettext("scr_papcall_2595") // \E3I THOUGHT THAT WAS&JUST AN EXCUSE&TO TALK TO HER./
            global.msg[7] = scr_gettext("scr_papcall_2596") // I DIDN'T KNOW&THERE WAS WEATHER&DOWN HERE!!!/
            scr_undface(8, 2)
            global.msg[9] = scr_gettext("scr_papcall_2598") // \E1* YEAH!?!^1!&* THERE IS?!!?!/
            global.msg[10] = scr_gettext("scr_papcall_2599") // \E2* And I'm forecasting&  an incoming front&  of SHUT UP!!!/
            scr_papface(11, 0)
            global.msg[12] = scr_gettext("scr_papcall_2601") // WOWIE!!^1!&WILL I NEED&AN UMBRELLA?/%%
            if (global.flag[470] == 1)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2607") // * What!^1?&* What ABOUT this&  room!?/%%
            }
            if (global.flag[462] >= 1)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_2614") // * Oh^1, Papyrus^1.&* I can't stay mad&  at you./
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_2616") // IT'S OKAY^1, I&FORGIVE YOU!/
                global.msg[5] = scr_gettext("scr_papcall_2617") // \E3(PSST^1, WHEN WAS&SHE MAD AT ME?)/%%
            }
            global.flag[470] = 1
        }
        break
    case room_fire8:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2637") // IT'S IMPORTANT TO&STAY IN SCHOOL./
        global.msg[3] = scr_gettext("scr_papcall_2638") // \E3A REAL TEACHER.../
        global.msg[4] = scr_gettext("scr_papcall_2639") // \E0WOULD NEVER ACCEPT&DEADLY LASERS AS&AN EXCUSE!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2645") // GLAD!&I DON'T&LIVE IN HOTLAND!!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_2651") // * Huh^1?&* Those kids are&  skipping school?/
            global.msg[3] = scr_gettext("scr_papcall_2652") // * .../
            global.msg[4] = scr_gettext("scr_papcall_2653") // \E6* ... well^1, I can't&  blame them^1, school&  sucks!/
            global.msg[5] = scr_gettext("scr_papcall_2654") // \E4* We need to find&  some way to make&  it cooler.../
            global.msg[6] = scr_gettext("scr_papcall_2655") // \E2* Hey^1, what if I&  visited their&  school!?/
            global.msg[7] = scr_gettext("scr_papcall_2656") // \E6* Then I could beat&  up ALL the teachers!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_2661") // * Okay^1, maybe I&  wouldn't beat up&  a teacher.../%%
            }
        }
        break
    case room_fire9:
        scr_papface(1, 1)
        global.msg[2] = scr_gettext("scr_papcall_2671") // OH NO^1!&THE PUZZLES&REACTIVATING.../
        global.msg[3] = scr_gettext("scr_papcall_2672") // \E3CAUSED THOSE&PEOPLE TO MISS&THEIR WORK!?/
        scr_sansface(4, 0)
        global.msg[5] = scr_gettext("scr_papcall_2674") // * yep./
        global.msg[6] = scr_gettext("scr_papcall_2675") // \E1* that's why i'm&  missing work^1, too./
        scr_papface(7, 4)
        global.msg[8] = scr_gettext("scr_papcall_2677") // OH MY GOD!!^1!&SANS^1, GO DO YOUR&JOB(S)!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2682") // GLAD^1,&I DON'T&LIVE IN HOTLAND./
            scr_sansface(3, 0)
            global.msg[4] = scr_gettext("scr_papcall_2684") // * me too./
            scr_papface(5, 4)
            global.msg[6] = scr_gettext("scr_papcall_2686") // THEN WHY ARE&YOU SKIPPING&WORK!?!/%%
        }
        break
    case room_fire_turn:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2697") // I HEARD YOU GOT&TO MEET METTATON!!/
        global.msg[3] = scr_gettext("scr_papcall_2698") // \E0IS THAT TRUE!^1?&CAN YOU GET ME&AN AUTOGRAPH!?/
        global.msg[3] = scr_gettext("scr_papcall_2699") // \E2HE'S MY FAVORITE&SEXY RECTANGLE!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 5)
            global.msg[2] = scr_gettext("scr_papcall_2704") // I WISH I LIVED&IN HOTLAND!!!/%%
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2710") // I HEARD YOU GOT&TO MEET METTATON!!/
            scr_undface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_2712") // * Really^1? Careful^1, that&  dude gives me bad&  vibes./
            scr_papface(5, 5)
            global.msg[6] = scr_gettext("scr_papcall_2714") // WH-WHAT^1?&BUT HE'S SO&POPULAR.../
            scr_undface(7, 4)
            global.msg[8] = scr_gettext("scr_papcall_2716") // * I don't care about&  people just because&  they're popular./
            scr_papface(9, 3)
            global.msg[10] = scr_gettext("scr_papcall_2718") // WELL^1, YOU CAN&SAY THAT BECAUSE&YOU'RE POPULAR./
            scr_undface(11, 6)
            global.msg[12] = scr_gettext("scr_papcall_2720") // * Pssshhht^1, what!^1?&* Popular with WHO?/
            scr_papface(13, 0)
            global.msg[14] = scr_gettext("scr_papcall_2722") // YOU'RE POPULAR&WITH ME!!!/
            scr_undface(15, 9)
            global.msg[16] = scr_gettext("scr_papcall_2724") // * Awww..^1.&* Papyrus^1, you're popular&  with me^1, too./
            scr_papface(17, 0)
            global.msg[18] = scr_gettext("scr_papcall_2726") // AWW^1, WOWIE!^1!&WAIT.../
            global.msg[19] = scr_gettext("scr_papcall_2727") // \E3DOES THAT MEAN&YOU DON'T CARE&ABOUT ME...?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_2732") // * Let's not discuss&  this anymore./%%
            }
        }
        break
    case room_fire_hotdog:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2742") // WHAT^1? MY BROTHER'S&ACTUALLY AT HIS&STATION?/
        global.msg[3] = scr_gettext("scr_papcall_2743") // \E1BUT SOMEHOW^1, HE'S&SELLING HOTDOGS&INSTEAD?/
        global.msg[4] = scr_gettext("scr_papcall_2744") // \E3SLACKING OFF BY&DOING WORK.../
        global.msg[5] = scr_gettext("scr_papcall_2745") // TRULY MY BROTHER&IS A MASTER./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2750") // NO FURTHER&COMMENT./%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2756") // WHAT^1? MY BROTHER'S&ACTUALLY AT HIS&STATION?/
            scr_undface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_2758") // * What^1?&* I thought he only&  had three stations./
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_2760") // NO^1, HE HAS..^1.&AT LEAST FOUR?/
            scr_undface(7, 2)
            global.msg[8] = scr_gettext("scr_papcall_2762") // * Who the heck keeps&  hiring this guy!?/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2767") // * Seriously!!/%%
            }
        }
        if (instance_exists(obj_sans_room) == 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2774") // MY BROTHER ISN'T&EVEN THERE???/
            global.msg[3] = scr_gettext("scr_papcall_2775") // \E1WASN'T HE SLACKING&OFF BY SELLING&HOTDOGS?/
            global.msg[4] = scr_gettext("scr_papcall_2776") // \E3NOW HE'S SLACKING&OFF FROM SLACKING&OFF.../
            global.msg[5] = scr_gettext("scr_papcall_2777") // TRULY MY BROTHER&IS A MASTER./%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_2782") // NO FURTHER&COMMENT./%%
            }
        }
        break
    case room_fire10:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2796") // WHAT^1? YOU HAVE TO&SOLVE A PUZZLE&ON THE CONVEYORS?/
        global.msg[3] = scr_gettext("scr_papcall_2797") // \E3THAT GOES AGAINST&PUZZLE DESIGN&101.../
        global.msg[4] = scr_gettext("scr_papcall_2798") // \E4CONVEYORS ARE&AWFUL AND SHOULD&NEVER BE USED!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 4)
            global.msg[2] = scr_gettext("scr_papcall_2803") // GLAD I DON'T&LIVE ON CONVEYOR&PLANET!!!/%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2809") // WHAT^1? YOU HAVE TO&SOLVE A PUZZLE&ON THE CONVEYORS?/
            scr_undface(3, 2)
            global.msg[4] = scr_gettext("scr_papcall_2811") // * Oh MAN^1, did I ever&  tell you MY conveyor&  puzzle idea?/
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_2813") // WHAT... IS IT?/
            scr_undface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_2815") // * Imagine four basketball&  hoops on the sides&  of a conveyor loop./
            global.msg[9] = scr_gettext("scr_papcall_2816") // \E2* The conveyor keeps&  speeding up^1, until&  you get sick.../
            global.msg[10] = scr_gettext("scr_papcall_2817") // \E6* Then you have to&  puke in all four&  hoops in a row!!!/
            scr_papface(11, 5)
            global.msg[12] = scr_gettext("scr_papcall_2819") // I HATE THIS./
            scr_undface(13, 6)
            global.msg[14] = scr_gettext("scr_papcall_2821") // * You have to time&  the pukes!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 6)
                global.msg[2] = scr_gettext("scr_papcall_2826") // * Oh man!!^1!&* You wanna hear more&  of my great idea!?/
                scr_papface(3, 5)
                global.msg[4] = scr_gettext("scr_papcall_2828") // I'M GONNA HANG&UP NOW!!!/%%
            }
        }
        break
    case room_fire_rpuzzle:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2836") // SO THE ARROWS&FLIP WHEN YOU&DO WHAT?/
        global.msg[3] = scr_gettext("scr_papcall_2837") // I CAN'T VISUALIZE&THIS PUZZLE AT&ALL./
        global.msg[4] = scr_gettext("scr_papcall_2838") // \E0CAN YOU DRAW&A PICTURE???/
        global.msg[5] = scr_gettext("scr_papcall_2839") // \E3THEN HOLD IT UP&TO THE RECEIVER??/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2844") // DID YOU DRAW IT&YET?/%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2850") // WHAT^1? HOW'S THIS&PUZZLE WORK^1?&UMMM.../
            global.msg[3] = scr_gettext("scr_papcall_2851") // \E0WHOOPS^1, I THINK&IT'S UNDYNE'S TURN&TO TALK!!!/
            scr_undface(4, 2)
            global.msg[5] = scr_gettext("scr_papcall_2853") // \E1* What!^1?&* No^1, I HATE puzzles^1!&* Papyrus^1, YOU do it!/
            scr_papface(6, 3)
            global.msg[7] = scr_gettext("scr_papcall_2855") // WELL^1, ALPHYS MADE&THE PUZZLE^1,&RIGHT?/
            global.msg[8] = scr_gettext("scr_papcall_2856") // \E0YOU SHOULD JUST&CALL HER UP.../
            global.msg[9] = scr_gettext("scr_papcall_2857") // \E2AND SAY IN A&HOT VOICE.../
            global.msg[10] = scr_gettext("scr_papcall_2858") // ALPHYS..^1.&I NEED HELP WITH&A.../
            global.msg[11] = scr_gettext("scr_papcall_2859") // (AUDIBLE WINK)/
            global.msg[12] = scr_gettext("scr_papcall_2860") // \E2PUZZLE.../
            scr_undface(13, 1)
            global.msg[14] = scr_gettext("scr_papcall_2862") // * Oh my GOD^1!&* NO^1!&* Shut up!!!/
            scr_papface(15, 4)
            global.msg[16] = scr_gettext("scr_papcall_2864") // FINE!!^1!&GIVE ME HER&NUMBER!!!/
            global.msg[17] = scr_gettext("scr_papcall_2865") // \E0I'LL DO THE HOT&VOICE!!!/
            scr_undface(18, 2)
            global.msg[19] = scr_gettext("scr_papcall_2867") // * NO!!!^1!&* THAT'S EVEN WORSE!!!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2872") // (AUDIBLE WINK).../
                global.msg[3] = scr_gettext("scr_papcall_2873") // \E3WAIT^1, WHOSE NUMBER&IS THIS???/%%
            }
        }
        break
    case room_fire_boysnightout:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2883") // THE ROYAL GUARD&PATROLS THAT&AREA./
        global.msg[3] = scr_gettext("scr_papcall_2884") // YES^1, LIKE SNOWDIN^1,&HOTLAND HAS ROYAL&GUARD MEMBERS./
        global.msg[4] = scr_gettext("scr_papcall_2885") // WATERFALL DOESN'T&NEED THEM BECAUSE&IT'S GOT UNDYNE!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2890") // DID YOU SEE&THEM?/%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2896") // * Careful^1, the Royal&  Guard patrols that&  area./
            global.msg[3] = scr_gettext("scr_papcall_2897") // \E4* I think it's RG01&  and RG02 today.../
            global.msg[4] = scr_gettext("scr_papcall_2898") // \E0* It's funny^1, the bunny&  actually requested to be&  with the dragon guy./
            global.msg[5] = scr_gettext("scr_papcall_2899") // * It's nice when people&  are platonic friends&  like that!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_2904") // * It's nice when people&  are platonic friends&  like that!/%%
            }
        }
        break
    case room_fire_newsreport:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_2912") // I LOVE THE NEWS^1!&IT'S SO&INFORMATIVE.../
        global.msg[3] = scr_gettext("scr_papcall_2913") // AND FULL OF CUT-&THROAT^1, EXPLOSIVE&ACTION!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_2918") // KA-WOWIE!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_2924") // * Yeah^1! You totally&  kicked his butt&  on the news!!!/
            global.msg[3] = scr_gettext("scr_papcall_2925") // \E9* And I bet Alphys&  was helping you^1,&  wasn't she?/
            global.msg[4] = scr_gettext("scr_papcall_2926") // \E6* Oh my god!!^1!&* You guys becoming&  friends.../
            global.msg[5] = scr_gettext("scr_papcall_2927") // \E8* It's kinda cute.../
            global.msg[6] = scr_gettext("scr_papcall_2928") // \E1* ... I mean^1, uh.../
            global.msg[7] = scr_gettext("scr_papcall_2929") // \E2* I'm tough!!^1!&* I love to eat rocks!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_2934") // * What!?!?/%%
            }
        }
        if (global.plot <= 160)
            global.msg[0] = scr_gettext("scr_papcall_2940") // * (There's some strange&  interference...)/%%
        break
    case room_fire_coreview2:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2948") // THE CORE..^1.&YOU'RE GETTING&CLOSE^1, HUH...?/
        global.msg[3] = scr_gettext("scr_papcall_2949") // \E6.../%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 6)
            global.msg[2] = scr_gettext("scr_papcall_2954") // .../%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_2960") // THE CORE..^1.&YOU'RE GETTING&CLOSE^1, HUH...?/
            scr_undface(3, 1)
            global.msg[4] = scr_gettext("scr_papcall_2962") // * What!^1?&* No^1, we just&  became friends!!/
            global.msg[5] = scr_gettext("scr_papcall_2963") // \E4* You can't already&  be that close.../%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 4)
                global.msg[2] = scr_gettext("scr_papcall_2968") // * What?/%%
            }
        }
        break
    case room_fire_spidershop:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2980") // IT MIGHT SOUND&WEIRD THAT SPIDERS&NEED DONATIONS./
        global.msg[3] = scr_gettext("scr_papcall_2981") // \E0BUT THINK ABOUT&IT^1, THEY HAVE&EIGHT FEET./
        global.msg[4] = scr_gettext("scr_papcall_2982") // \E3THAT'S FOUR PAIRS&OF SHOES./
        global.msg[5] = scr_gettext("scr_papcall_2983") // \E0A SPIDER WEARING&FOUR PAIRS OF&PINK BOOTIES./
        global.msg[6] = scr_gettext("scr_papcall_2984") // MEDITATE ON&THIS IMAGE./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_2989") // OM.../%%
        }
        break
    case room_fire_walkandbranch2:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_2997") // THE ENTIRE ROOM&IS COVERED IN&STEAM THINGIES?/
        global.msg[3] = scr_gettext("scr_papcall_2998") // \E1OH MY GOD^1, CAN'T&YOU JUST TAKE&A BUS!?!?/
        global.msg[4] = scr_gettext("scr_papcall_2999") // \E3HOTLAND STINKS.../%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3004") // DON'T TELL ME&MORE OF THIS&GARBAGE./%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3010") // A WHOLE ROOM&COVERED IN VENTS^1?&OH NO.../
            scr_undface(3, 0)
            global.msg[4] = scr_gettext("scr_papcall_3012") // * Hey^1, did I ever&  tell you about my&  puzzle idea?/
            global.msg[5] = scr_gettext("scr_papcall_3013") // * It's a maze full&  of steam vents.../
            global.msg[6] = scr_gettext("scr_papcall_3014") // \E2* But the steam vents&  are on conveyor&  belts^1, and.../
            scr_papface(7, 5)
            global.msg[8] = scr_gettext("scr_papcall_3016") // OH MY GOD!!^1!&I HATE THIS!?!?/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 5)
                global.msg[2] = scr_gettext("scr_papcall_3021") // ITS BEST IF YOU&DON'T ENCOURAGE&HER./%%
            }
        }
        break
    case room_fire_conveyorlaser:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3030") // LASERS ON&CONVEYORS^1?&NO THANKS./
        global.msg[3] = scr_gettext("scr_papcall_3031") // SOUNDS LIKE MY&LEAST FAVORITE&NIGHTMARE./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3036") // DON'T TELL ME&MORE OF THIS&GARBAGE./%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3042") // LASERS ON&CONVEYORS^1? ARE&YOU SERIOUS???/
            scr_undface(3, 2)
            global.msg[4] = scr_gettext("scr_papcall_3044") // * Hey^1, this reminds&  me of a puzzle&  idea./
            scr_papface(5, 5)
            global.msg[6] = scr_gettext("scr_papcall_3046") // OH MY GOD??^1?&NO??^1?&WHY????/
            global.msg[7] = scr_gettext("scr_papcall_3047") // I THOUGHT YOU&HATED MAKING&UP PUZZLES!!/
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_3049") // * Yeah^1, but I love&  driving you crazy!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 5)
                global.msg[2] = scr_gettext("scr_papcall_3054") // PLEASE STOP&ENCOURAGING&HER./%%
            }
        }
        break
    case room_fire_mewmew2:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3063") // WHERE DID THAT&TABLE COME FROM?/
        global.msg[3] = scr_gettext("scr_papcall_3064") // \E0DOES IT BELONG&TO THE MOUSE??/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3069") // EH???/%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_3075") // * Where are all these&  tables coming from?/
            scr_papface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_3077") // MAYBE THEY BELONG&TO THE MOUSE./
            scr_undface(5, 4)
            global.msg[6] = scr_gettext("scr_papcall_3079") // * What would a mouse&  need a table for?/
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_3081") // TO PUT THE&CHEESE ON./
            scr_undface(9, 2)
            global.msg[10] = scr_gettext("scr_papcall_3083") // * But where's the&  cheese come from!?/
            scr_sansface(11, 1)
            global.msg[12] = scr_gettext("scr_papcall_3085") // * doesn't it come&  from milk?/
            scr_papface(13, 4)
            global.msg[14] = scr_gettext("scr_papcall_3087") // OH MY GOD!!^1!&GET OUT OF&HERE!!!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3092") // WAIT^1, DOES IT&COME FROM MILK??/%%
            }
        }
        break
    case room_fire_operatest:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3102") // WOW!!^1!&THAT CHOREOGRAPHY!/
        global.msg[3] = scr_gettext("scr_papcall_3103") // \E2I CAN'T BELIEVE&I'M FRIENDS.../
        global.msg[4] = scr_gettext("scr_papcall_3104") // \E0WITH A BONE-A-&FIDE OPERA&STAR!!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3109") // WOWIE!/%%
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3115") // I CAN'T BELIEVE&YOU GOT TO DANCE&WITH METTATON!/
            scr_undface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_3117") // * Big deal.../
            global.msg[5] = scr_gettext("scr_papcall_3118") // \E2* Earlier^1, the human&  and I danced with&  DEATH!!!/
            scr_papface(6, 0)
            global.msg[7] = scr_gettext("scr_papcall_3120") // WOW!!!/
            global.msg[8] = scr_gettext("scr_papcall_3121") // IS DEATH COOL?/
            scr_undface(9, 6)
            global.msg[10] = scr_gettext("scr_papcall_3123") // * Yeah^1, she's like&  super hot./%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3128") // I WANT TO MEET&DEATH.../%%
            }
        }
        if (global.plot <= 166)
            global.msg[0] = scr_gettext("scr_papcall_3135") // * (There's some strange&  interference...)/%%
        break
    case room_fire_hotelfront_1:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3144") // WHAT?&I^1? SCREAM?/
        global.msg[3] = scr_gettext("scr_papcall_3145") // \E0SURE^1!&I'LL TRY./
        global.msg[4] = scr_gettext("scr_papcall_3146") // A^1. A^1. A^1. A^1. A./
        global.msg[5] = scr_gettext("scr_papcall_3147") // I'M SCREAMING VERY&SLOWLY./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3152") // A./%%
        }
        if (u == 1)
        {
            if (global.flag[402] == 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_3160") // * WHAT!^1?&* RG01 and RG02 are&  slacking off?!/
                global.msg[3] = scr_gettext("scr_papcall_3161") // \E2* Come ON^1!&* They should be KILLING&  you right now!/
                global.msg[4] = scr_gettext("scr_papcall_3162") // \E9* Not that I want&  them to^1, I mean./
                global.msg[5] = scr_gettext("scr_papcall_3163") // \E6* But they could at&  least TRY^1, y'know!?/%%
            }
            else
            {
                scr_undface(1, 4)
                global.msg[2] = scr_gettext("scr_papcall_3169") // * Oh yeah^1, that&  reminds me./
                global.msg[3] = scr_gettext("scr_papcall_3170") // * I told RG01 and RG02&  that if they managed&  to nab you.../
                global.msg[4] = scr_gettext("scr_papcall_3171") // \E9* I'd take them both&  out for ice cream./
                global.msg[5] = scr_gettext("scr_papcall_3172") // \E0* I hope you were able&  to avoid them./
                global.msg[6] = scr_gettext("scr_papcall_3173") // \E6* Cause I HATE ice&  cream!!/%%
            }
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3179") // I ALMOST CAPTURED&YOU.../
                global.msg[3] = scr_gettext("scr_papcall_3180") // WHERE'S MY ICE&CREAM./%%
            }
        }
        break
    case room_fire_hotellobby:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3187") // A HOT-L.../
        global.msg[3] = scr_gettext("scr_papcall_3188") // \E0THAT'S SHORT FOR&HOTLAND^1, RIGHT?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3194") // WOWIE!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 6)
            global.msg[2] = scr_gettext("scr_papcall_3200") // * A hotel?^1? Cool!^1!&* I've never stayed&  at a fancy hotel!/
            scr_papface(3, 0)
            global.msg[4] = scr_gettext("scr_papcall_3202") // REALLY?^1?&ME NEITHER./
            scr_undface(5, 9)
            global.msg[6] = scr_gettext("scr_papcall_3204") // * Papyrus^1, we should&  go on vacation&  sometime!/
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_3206") // YEAH!^1!&LET'S VACATION TO&A HOTEL!!!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_3211") // * Well^1, maybe we would&  go someplace besides&  the hotel^1, too.../
                scr_papface(3, 2)
                global.msg[4] = scr_gettext("scr_papcall_3213") // OH^1, I WAS BEING&SARCASTIC./
                global.msg[5] = scr_gettext("scr_papcall_3214") // \E0I WOULD NEVER&TAKE A VACATION&FOR ANY REASON./%%
            }
        }
        break
    case room_fire_restaurant:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3224") // A FANCY&SCHMANCY&RESTAURANT!?!?/
        global.msg[3] = scr_gettext("scr_papcall_3225") // \E2AFTER TASTING MY&COOKING^1, THAT SEEMS&POINTLESS^1, RIGHT?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3231") // I BET THEY CAN'T&EVEN MAKE&SPAGHETTI!/%%
        }
        if (u == 1)
        {
            scr_undface(1, 1)
            global.msg[2] = scr_gettext("scr_papcall_3237") // * Woah!^1!&* A fancy restaurant!?/
            global.msg[3] = scr_gettext("scr_papcall_3238") // \E6* Are you treating us^1?&* Do they have steak?/
            scr_papface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_3240") // PSHHHHHHT./
            global.msg[5] = scr_gettext("scr_papcall_3241") // \E0WHO NEEDS THAT!&YOUR FRIENDS ARE&GREAT CHEFS!/
            scr_undface(6, 9)
            global.msg[7] = scr_gettext("scr_papcall_3243") // * Well^1, maybe our cooking&  abilities aren't&  exactly perfect./
            global.msg[8] = scr_gettext("scr_papcall_3244") // \E6* Nah!!^1!&* They totally are!^1!&* Eat up^1, punk!!/
            global.msg[9] = scr_gettext("scr_papcall_3245") // \TS \F0 \T0 %
            global.msg[10] = scr_gettext("scr_papcall_3246") // * (You hear spaghetti thwap&  against the receiver.)/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3251") // ISN'T FRIENDSHIP&DELICIOUS?/%%
            }
        }
        break
    case room_fire_hoteldoors:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3261") // CAREFUL^1.&LOTS OF HOTELS ARE&INFESTED NOWADAYS./
        global.msg[3] = scr_gettext("scr_papcall_3262") // THEY CAN SLIDE&UNDER CLOSED DOOR&HOLES 1 INCH HIGH./
        global.msg[4] = scr_gettext("scr_papcall_3263") // WHAT DO I MEAN^1?&YOU'LL KNOW IT&IF YOU SEE IT./
        global.msg[5] = scr_gettext("scr_papcall_3264") // \TS \F0 \T0 %
        global.msg[6] = scr_gettext("scr_papcall_3265") // * (You hear a muffled bark&  behind one of the doors.)/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 7)
            global.msg[2] = scr_gettext("scr_papcall_3270") // WHAT WAS THAT???/%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3276") // CAREFUL^1. I'VE HEARD&THAT HOTEL HAS A&DOG PROBLEM./
            scr_undface(3, 9)
            global.msg[4] = scr_gettext("scr_papcall_3278") // * Oh^1?&* No pets allowed^1, huh?/
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_3280") // I'M NOT TALKING&ABOUT PETS./
            scr_undface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_3282") // * What's the problem?/
            scr_papface(9, 3)
            global.msg[10] = scr_gettext("scr_papcall_3284") // THE PROBLEM IS..^1.&DOG./
            scr_undface(11, 1)
            global.msg[12] = scr_gettext("scr_papcall_3286") // * What's wrong with&  dogs!?/
            scr_papface(13, 3)
            global.msg[14] = scr_gettext("scr_papcall_3288") // NOT ALL DOGS^1.&JUST THAT ONE./
            scr_undface(15, 2)
            global.msg[16] = scr_gettext("scr_papcall_3290") // * What's WRONG with it!?/
            scr_papface(17, 5)
            global.msg[18] = scr_gettext("scr_papcall_3292") // EVERYTHING./%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 4)
                global.msg[2] = scr_gettext("scr_papcall_3297") // * So you hate this dog^1,&  but like weird&  talking flowers?/
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_3299") // THE FLOWER IS MY&FRIEND!/
                scr_undface(5, 4)
                global.msg[6] = scr_gettext("scr_papcall_3301") // * I mean^1, if having&  an imaginary friend&  makes you happy.../
                scr_papface(7, 4)
                global.msg[8] = scr_gettext("scr_papcall_3303") // OH MY GOD!^1!&HE'S NOT IMAGINARY^1!&HE HAS A NAME!/
                scr_undface(9, 9)
                global.msg[10] = scr_gettext("scr_papcall_3305") // * What's his name./
                scr_papface(11, 0)
                global.msg[12] = scr_gettext("scr_papcall_3307") // FL.../
                global.msg[13] = scr_gettext("scr_papcall_3308") // \E3FLOWERY?/
                scr_undface(14, 6)
                global.msg[15] = scr_gettext("scr_papcall_3310") // * Oh my GOD!!^1!&* You just made that&  up!!/
                scr_papface(16, 4)
                global.msg[17] = scr_gettext("scr_papcall_3312") // OK^1, I DID!^1!&BUT HE'S REAL!!/%%
            }
        }
        break
    case room_fire_hotelbed:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3320") // YOU HAVE YOUR OWN&HOTEL ROOM!?/
        global.msg[3] = scr_gettext("scr_papcall_3321") // \E3... WHY?/
        global.msg[4] = scr_gettext("scr_papcall_3322") // \E0MY GARAGE IS&ALWAYS OPEN TO&YOU!!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3327") // THE PRICE IS&RIGHT!!/%%
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3333") // YOU HAVE YOUR OWN&HOTEL ROOM!?/
            scr_undface(3, 6)
            global.msg[4] = scr_gettext("scr_papcall_3335") // * Heyyy!^1!&* Let's throw a room&  party!/
            global.msg[5] = scr_gettext("scr_papcall_3336") // \E9* We can order a pizza&  and stay up all night&  playing games!/
            scr_papface(6, 3)
            global.msg[7] = scr_gettext("scr_papcall_3338") // PARTY " + '"' + "GAMES" + '"' + "^1?&LIKE THE SIX-&LEGGED RACE?/
            scr_undface(8, 2)
            global.msg[9] = scr_gettext("scr_papcall_3340") // * Nah^1, like " + '"' + "pillow&  fight the skeleton!" + '"' + "/
            scr_papface(10, 5)
            global.msg[11] = scr_gettext("scr_papcall_3342") // H-HEY!!^1!&NO PILLOWS FROM&THE COUCH!/
            scr_undface(12, 9)
            global.msg[13] = scr_gettext("scr_papcall_3344") // * Aww^1, okay./
            scr_papface(14, 7)
            global.msg[15] = scr_gettext("scr_papcall_3346") // HEY!!^1!&NO ENTIRE COUCH!!/
            scr_undface(16, 2)
            global.msg[17] = scr_gettext("scr_papcall_3348") // * Too late!!!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 5)
                global.msg[2] = scr_gettext("scr_papcall_3353") // HEY^1, YOU DIDN'T&HIT ME WITH MY&ENTIRE COUCH./
                scr_undface(3, 9)
                global.msg[4] = scr_gettext("scr_papcall_3355") // * Nah^1, why would I&  do that?/
                global.msg[5] = scr_gettext("scr_papcall_3356") // \E6* I'm saving it for&  the party!!/%%
            }
        }
        break
    case room_fire_elevator_l1:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3364") // THE ELEVATOR&SAYS L1./
        global.msg[3] = scr_gettext("scr_papcall_3365") // \E3BUT WHAT DOES THE&L STAND FOR^1?&LINGUINE?/
        global.msg[4] = scr_gettext("scr_papcall_3366") // \E0LINGUINE^1.&THE FLAT PASTA./
        global.msg[5] = scr_gettext("scr_papcall_3367") // IT CAN ALSO BE&USED TO TIE UP&PRESENTS./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3372") // THE FLATNESS&MAKES A NICE&RIBBON./%%
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3378") // \E0THE ELEVATOR&SAYS L1./
            global.msg[3] = scr_gettext("scr_papcall_3379") // \E3BUT WHAT DOES THE&L STAND FOR?/
            scr_undface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_3381") // \E0* C'mon^1, Papyrus^1.&* Think about it./
            scr_papface(6, 3)
            global.msg[7] = scr_gettext("scr_papcall_3383") // \E3HMMM.../
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_3385") // \E6* It stands for&  L-evator^1, duh!!!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3390") // IS ELEVATOR&REALLY SPELLED&THAT WAY?/
                scr_undface(3, 9)
                global.msg[4] = scr_gettext("scr_papcall_3392") // * Probably?/%%
            }
        }
        break
    case room_fire_elevator_r1:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3401") // THE ELEVATOR&SAYS R1./
        global.msg[3] = scr_gettext("scr_papcall_3402") // \E3BUT WHAT DOES THE&R STAND FOR^1?&RAVIOLI?/
        global.msg[4] = scr_gettext("scr_papcall_3403") // \E0RAVIOLI..^1.&THE DUMPLING-TYPE&PASTA./
        global.msg[5] = scr_gettext("scr_papcall_3404") // THE TREASURE CHEST&OF THE CULINARY&WORLD./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3409") // YOU CAN PUT GEMS&OR GOLD INSIDE./%%
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3415") // \E0THE ELEVATOR&SAYS R1./
            global.msg[3] = scr_gettext("scr_papcall_3416") // \E3BUT WHAT DOES THE&R STAND FOR?/
            scr_undface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_3418") // \E0* C'mon^1, Papyrus^1.&* Think about it./
            scr_papface(6, 3)
            global.msg[7] = scr_gettext("scr_papcall_3420") // \E3HMMM.../
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_3422") // \E6* It stands for RED^1,&  'cause that's the&  color of the lights!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3427") // I GUESS THAT&MAKES SENSE!/%%
            }
        }
        if instance_exists(obj_gaster_follower_a)
            global.msg[1] = scr_gettext("scr_papcall_3434") // * (The phone won't turn on.)/%%
        break
    case room_fire_elevator_r2:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3441") // THE ELEVATOR&SAYS R2./
        global.msg[3] = scr_gettext("scr_papcall_3442") // \E3BUT WHAT DOES THE&R STAND FOR^1?&RIGATONI?/
        global.msg[4] = scr_gettext("scr_papcall_3443") // \E0THE TUBE-SHAPED&PASTA./
        global.msg[5] = scr_gettext("scr_papcall_3444") // IN A PINCH^1, IT&CAN BE USED AS&A STRAW./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3449") // IF YOU NEED TO&DRINK A CUP OF&SAUCE./%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3455") // \E3WAIT^1, UNDYNE^1.&IF THE R STANDS&FOR RED.../
            global.msg[3] = scr_gettext("scr_papcall_3456") // \E5WHAT COLOR DOES&THE L STAND FOR?/
            scr_undface(4, 1)
            global.msg[5] = scr_gettext("scr_papcall_3458") // * Uhhhh.../
            global.msg[6] = scr_gettext("scr_papcall_3459") // \E9* Light green./
            scr_papface(7, 0)
            global.msg[8] = scr_gettext("scr_papcall_3461") // OH^1! OF COURSE!/
            global.msg[9] = scr_gettext("scr_papcall_3462") // WAIT^1.&ISN'T THAT TWO&WORDS?/
            scr_sansface(10, 2)
            global.msg[11] = scr_gettext("scr_papcall_3464") // * light sea green./
            scr_papface(12, 1)
            global.msg[13] = scr_gettext("scr_papcall_3466") // THREE DOESN'T&FIX THE ISSUE!/%%
            if (global.flag[462] > 0)
            {
                scr_sansface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_3471") // * light sea foam&  green./
                scr_papface(3, 5)
                global.msg[4] = scr_gettext("scr_papcall_3473") // AREN'T YOU WORKING&IN THE VERY NEXT&ROOM!?/%%
            }
        }
        break
    case room_fire_elevator_l2:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3482") // THE ELEVATOR&SAYS L2./
        global.msg[3] = scr_gettext("scr_papcall_3483") // \E3BUT WHAT DOES THE&L STAND FOR^1?&LASAGNA?/
        global.msg[4] = scr_gettext("scr_papcall_3484") // \E3I HOPE NOT^1.&I DON'T MAKE&LASAGNA ANYMORE./
        global.msg[5] = scr_gettext("scr_papcall_3485") // \E1THAT GLUTTONOUS&DOG ALWAYS EATS&IT FIRST!/
        global.msg[6] = scr_gettext("scr_papcall_3486") // \E3FIRST MY BONES^1,&AND NOW THIS.../%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3491") // THEN IT RETREATS&INTO A SHALLOW&BLUE BOX./
            global.msg[3] = scr_gettext("scr_papcall_3492") // COVERS ITSELF&WITH A BLANKET^1,&AND SLEEPS.../%%
        }
        if (u == 1)
        {
            scr_undface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_3499") // \E2* OK^1, OK^1.&* I've got it./
            global.msg[3] = scr_gettext("scr_papcall_3500") // \E9* The L stands for&  the color " + '"' + "Lime." + '"' + "/
            scr_papface(4, 0)
            global.msg[5] = scr_gettext("scr_papcall_3502") // \E0REALLY!?/
            global.msg[6] = scr_gettext("scr_papcall_3503") // \E3I HATE LIMES./
            scr_undface(7, 1)
            global.msg[8] = scr_gettext("scr_papcall_3505") // \E1* What!^1? Limes rule!^1!&* I eat them whole&  all the time!!/
            scr_papface(9, 3)
            global.msg[10] = scr_gettext("scr_papcall_3507") // \E3WELL^1, ONE TIME I&WAS GIVING MYSELF&THE SPA TREATMENT./
            global.msg[11] = scr_gettext("scr_papcall_3508") // \E0I PUT THE LIME&SLICES IN MY&EYES^1, LIKE ON TV./
            global.msg[12] = scr_gettext("scr_papcall_3509") // \E1BUT IT STINGS!^1!&HOW DO THEY DO&IT!?/
            scr_undface(13, 6)
            global.msg[14] = scr_gettext("scr_papcall_3511") // \E6* Oh my god^1!&* Those aren't LIMES^1!&* Those are CUCUMBERS!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3516") // \E3I THOUGHT IT WAS&SUPPOSED TO BE&REJUVENATING./
                global.msg[3] = scr_gettext("scr_papcall_3517") // \E1BUT IT WASN'T&WORKING!/
                global.msg[4] = scr_gettext("scr_papcall_3518") // \E5SO I JUST STUCK&MORE LIMES INTO&MY EYES./
                scr_undface(5, 1)
                global.msg[6] = scr_gettext("scr_papcall_3520") // \E1* Gross!^1!&* Why did you even&  do that!?/
                scr_papface(7, 2)
                global.msg[8] = scr_gettext("scr_papcall_3522") // \E2I JUST WANT TO&HAVE HANDSOME^1,&BISHONEN EYES./
                global.msg[9] = scr_gettext("scr_papcall_3523") // LIKE METTATON..^1.&SIGH.../
                scr_undface(10, 2)
                global.msg[11] = scr_gettext("scr_papcall_3525") // * (He doesn't even&  HAVE eyes!!!)/%%
            }
        }
        if instance_exists(obj_gaster_follower_c)
            global.msg[1] = scr_gettext("scr_papcall_3533") // * (The phone won't turn on.)/%%
        break
    case room_fire_elevator_l3:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3540") // THE ELEVATOR&SAYS L3./
        global.msg[3] = scr_gettext("scr_papcall_3541") // \E3BUT WHAT DOES THE&L STAND FOR^1?&LUMACONI?/
        global.msg[4] = scr_gettext("scr_papcall_3542") // \E0THAT'S THE SNAIL-&SHAPED PASTA!/
        global.msg[5] = scr_gettext("scr_papcall_3543") // \E3SANS BOUGHT SOME&RECENTLY./
        global.msg[6] = scr_gettext("scr_papcall_3544") // \E2HE'LL PROBABLY&FILL THEM WITH&HOTDOGS AND SLIME./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3549") // HEY!^1!&MAYBE HE'LL SHARE&SOME WITH YOU!/%%
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3555") // \E0MAYBE WE NEED TO&THINK MORE&ABSTRACTLY./
            global.msg[3] = scr_gettext("scr_papcall_3556") // \E3MAYBE THE L&STANDS FOR.../
            global.msg[4] = scr_gettext("scr_papcall_3557") // \E2LOVE./
            scr_undface(5, 2)
            global.msg[6] = scr_gettext("scr_papcall_3559") // \E2* But isn't love&  supposed to be&  FIERY RED!?/
            global.msg[7] = scr_gettext("scr_papcall_3560") // \E9* Like a cartoony&  human-heart?/
            scr_papface(8, 3)
            global.msg[9] = scr_gettext("scr_papcall_3562") // \E3BUT UNDYNE^1, DON'T&YOU TURN PEOPLE'S&HEARTS GREEN?/
            scr_undface(10, 9)
            global.msg[11] = scr_gettext("scr_papcall_3564") // \E9* You make it sound&  like I give people&  nausea./
            scr_papface(12, 0)
            global.msg[13] = scr_gettext("scr_papcall_3566") // \E0WELL^1, IT WOULD BE&AN AFFECTIONATE&NAUSEA./
            scr_undface(14, 6)
            global.msg[15] = scr_gettext("scr_papcall_3568") // \E6* Okay^1, yeah^1!&That's me!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3573") // IT'S DECIDED!^1!&L STANDS FOR!!/
                global.msg[3] = scr_gettext("scr_papcall_3574") // \E3A HEART THAT&UNDYNE HAS MADE&NAUSEOUS?/%%
            }
        }
        if instance_exists(obj_gaster_follower_b)
            global.msg[1] = scr_gettext("scr_papcall_3582") // * (The phone won't turn on.)/%%
        break
    case room_fire_elevator_r3:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3589") // THE ELEVATOR&SAYS R3./
        global.msg[3] = scr_gettext("scr_papcall_3590") // \E3BUT WHAT DOES THE&R STAND FOR^1?&ROTINI?/
        global.msg[4] = scr_gettext("scr_papcall_3591") // THE SCREW-SHAPED&PASTA./
        global.msg[5] = scr_gettext("scr_papcall_3592") // I USED IT TO HOLD&MY SENTRY STATION&TOGETHER./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3597") // MY WHOLE STATION&IS MADE OUT OF&CARDBOARDHYDRATES!/%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3603") // \E3WAIT^1.&WHAT IF R AND L./
            global.msg[3] = scr_gettext("scr_papcall_3604") // \E0STAND FOR RIGHT&AND LEFT???/
            scr_undface(4, 9)
            global.msg[5] = scr_gettext("scr_papcall_3606") // \E9* No WAY!&* That makes NO sense./
            global.msg[6] = scr_gettext("scr_papcall_3607") // \E6* Cause if you face&  the opposite way^1,&  they'd be wrong!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3612") // BUT IF YOU FACE&THE OTHER WAY.../
                global.msg[3] = scr_gettext("scr_papcall_3613") // HOW CAN YOU KNOW&THEY ARE REALLY&STILL WRONG?/
                scr_undface(4, 2)
                global.msg[5] = scr_gettext("scr_papcall_3615") // * Let's not get&  philosophical&  over the alphabet./%%
            }
        }
        break
    case room_fire_walkandbranch:
        scr_papface(1, 9)
        global.msg[2] = scr_gettext("scr_papcall_3625") // \E9PAPYRUS^1?&WHO IS THAT?/
        global.msg[3] = scr_gettext("scr_papcall_3626") // THIS IS..^1.&COOLSKELETON95./
        global.msg[4] = scr_gettext("scr_papcall_3627") // SORRY^1. CAN'T TALK^1.&I'M BUSY BEING&POPULAR ON-LINE./
        global.msg[5] = scr_gettext("scr_papcall_3628") // \E0NYEH HEH HEH^1!&ONLY KIDDING^1!&YOU HAVE BEEN HAD!/
        global.msg[6] = scr_gettext("scr_papcall_3629") // IT WAS PAPYRUS&PLAYING A SIMPLE&GENTLEMAN'S RUSE!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 9)
            global.msg[2] = scr_gettext("scr_papcall_3634") // WINK!/
            global.msg[3] = scr_gettext("scr_papcall_3635") // YOU CAN SEE&ME WINKING^1,&RIGHT./%%
        }
        if (u == 1)
        {
            scr_undface(1, 9)
            global.msg[2] = scr_gettext("scr_papcall_3641") // \E9* Papyrus..^1.&* Why are you&  wearing those?/
            scr_papface(3, 9)
            global.msg[4] = scr_gettext("scr_papcall_3643") // \E9PAPYRUS?/
            global.msg[5] = scr_gettext("scr_papcall_3644") // EXCUSE ME^1?&I AM THE VERY&COOL ONLINE GUY,/
            global.msg[6] = scr_gettext("scr_papcall_3645") // COOLSKELETON95./
            scr_undface(7, 2)
            global.msg[8] = scr_gettext("scr_papcall_3647") // * What^1?&* No^1!&* You're Papyrus!/
            scr_papface(9, 9)
            global.msg[10] = scr_gettext("scr_papcall_3649") // (UNDYNE!!!^1)&(SHHH!!!)/
            global.msg[11] = scr_gettext("scr_papcall_3650") // (YOU'RE GOING TO&REVEAL MY SECRET&ONLINE PERSONA!)/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 6)
                global.msg[2] = scr_gettext("scr_papcall_3655") // * FINE then^1!&* I'm not Undyne!/
                global.msg[3] = scr_gettext("scr_papcall_3656") // \E2* The name's...&* StrongFish91!/
                scr_papface(4, 9)
                global.msg[5] = scr_gettext("scr_papcall_3658") // WHAT!^1?&REALLY!^1?&OH NO!!!/
                global.msg[6] = scr_gettext("scr_papcall_3659") // STRONGFISH!^1!&PLEASE BRING BACK&MY FRIEND UNDYNE!/
                scr_undface(7, 9)
                global.msg[8] = scr_gettext("scr_papcall_3661") // * Uh^1, OK./%%
            }
        }
        break
    case room_fire_apron:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3671") // AN APRON LYING&IN HOTLAND^1?&THAT MAKES SENSE./
        global.msg[3] = scr_gettext("scr_papcall_3672") // COOKING IS&DEFINITELY&FIRE-ELEMENTAL./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3677") // UNLESS YOU COOK&A POPSICLE./%%
        }
        if (u == 1)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3683") // AN APRON LYING&IN HOTLAND^1?&THAT MAKES SENSE./
            scr_undface(3, 3)
            global.msg[4] = scr_gettext("scr_papcall_3685") // \E3* Yeah^1, cooking is&  definitely fire-&  elemental!/
            scr_papface(5, 3)
            global.msg[6] = scr_gettext("scr_papcall_3687") // \E3UNLESS YOU COOK&A POPSICLE./
            scr_undface(7, 9)
            global.msg[8] = scr_gettext("scr_papcall_3689") // \E9* Would you really&  call it " + '"' + "cooking" + '"' + "&  a popsicle...?/
            scr_papface(9, 5)
            global.msg[10] = scr_gettext("scr_papcall_3691") // \E5THAT'S WHAT YOU&CALLED IT LAST&TIME WE^1, UH.../
            scr_undface(11, 6)
            global.msg[12] = scr_gettext("scr_papcall_3693") // * Oh MAN^1, I almost&  forgot about that^1!&* What a mess!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_3700") // * It took forever to&  hose everything off./%%
            }
        }
        break
    case room_fire_multitile:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3710") // \E0WOW^1! I SAW IT^1!&THE MULTICOLOR&TILE PUZZLE!/
        if (global.flag[278] == 1)
        {
            global.msg[3] = scr_gettext("scr_papcall_3713") // \E2YOU DID IT!^1!&MY DIRECTIONS&HELPED YOU!!/
            global.msg[4] = scr_gettext("scr_papcall_3714") // I'M A GOOD&EXPLAINER!/
            global.msg[5] = scr_gettext("scr_papcall_3715") // NYEH HEH HEH!/%%
        }
        else
        {
            global.msg[3] = scr_gettext("scr_papcall_3719") // \E3SEEMS LIKE YOU&WEREN'T ABLE TO&COMPLETE IT./
            global.msg[4] = scr_gettext("scr_papcall_3720") // \E0YOU'VE GOT TO&BE PREPARED NEXT&TIME!/
            global.msg[5] = scr_gettext("scr_papcall_3721") // I'LL HAVE TO&EXPLAIN IT ALL&AGAIN!/
            global.msg[6] = scr_gettext("scr_papcall_3722") // YOU SEE^1, RED&TILES ARE&IMPASSIBLE./
            global.msg[7] = scr_gettext("scr_papcall_3723") // PINK TILES&DON'T DO&ANYTHING./
            global.msg[8] = scr_gettext("scr_papcall_3724") // GREEN TILES&ARE.../%%
        }
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3730") // PLAID TILES&ARE.../%%
            if (global.flag[278] == 1)
                global.msg[2] = scr_gettext("scr_papcall_3731") // NYEH HEH HEH!/%%
        }
        break
    case room_fire_precore:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3738") // \E3HEADING INTO&THE CORE...^1?&HMMM./
        global.msg[3] = scr_gettext("scr_papcall_3739") // YOU MIGHT NOT&BE ABLE TO&CALL PAST THERE./
        global.msg[4] = scr_gettext("scr_papcall_3740") // \E1I KNOW^1!&IT SOUNDS AWFUL!/
        global.msg[5] = scr_gettext("scr_papcall_3741") // \E3HOW WILL YOU&GET BY WITHOUT&ME?/
        global.msg[6] = scr_gettext("scr_papcall_3742") // \E0WELL^1, I HAVE&CONFIDENCE YOU&WILL FIND A WAY!/
        global.msg[7] = scr_gettext("scr_papcall_3743") // I WILL TALK TO&YOU AGAIN^1, SO&DO NOT WORRY!/
        global.msg[8] = scr_gettext("scr_papcall_3744") // GOOD LUCK OUT&THERE!/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3749") // QUIT IT^1!&YOU DON'T HAVE&TO SAY GOODBYE!/%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3755") // \E3HEADING INTO&THE CORE...^1?&HMMM./
            scr_undface(3, 4)
            global.msg[4] = scr_gettext("scr_papcall_3757") // \E4* The CORE is a huge&  tower of electric&  energy./
            global.msg[5] = scr_gettext("scr_papcall_3758") // * So I don't think&  your phone will&  work through it.../
            scr_papface(6, 1)
            global.msg[7] = scr_gettext("scr_papcall_3760") // \E1OH NO!/
            global.msg[8] = scr_gettext("scr_papcall_3761") // \E3WHAT WILL YOU DO&WITHOUT US...?/
            scr_undface(9, 7)
            global.msg[10] = scr_gettext("scr_papcall_3763") // * You have something&  you have to do^1,&  right...?/
            global.msg[11] = scr_gettext("scr_papcall_3764") // * Well.../
            global.msg[12] = scr_gettext("scr_papcall_3765") // \E9* Even without words^1,&  we'll be with you&  in spirit^1, OK!?/
            scr_papface(13, 0)
            global.msg[14] = scr_gettext("scr_papcall_3767") // \E0YEAH^1! YOU CAN'T&GET RID OF US!/
            scr_undface(15, 9)
            global.msg[16] = scr_gettext("scr_papcall_3769") // \E9* We're counting on&  you^1, so don't mess&  it up!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_3775") // * We're not going to&  say goodbye to you&  just yet!/%%
            }
        }
        break
    case room_fire_pacing:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3785") // \E0A POSTER FOR&METTATON'S SHOW?/
        global.msg[3] = scr_gettext("scr_papcall_3786") // THAT'S NEATO^1.&I WANT A POSTER&FOR MY PUZZLES!/
        global.msg[4] = scr_gettext("scr_papcall_3787") // \E3AND MAYBE A FEW&OPENING BANDS./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3792") // THEY COULD PLAY&MY THEME SONG!/
            global.msg[3] = scr_gettext("scr_papcall_3793") // \E3I JUST NEED TO&GET A THEME SONG./%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3799") // \E0A POSTER FOR&METTATON'S SHOW?/
            global.msg[3] = scr_gettext("scr_papcall_3800") // THAT'S NEATO^1.&I WANT A POSTER&FOR MY PUZZLES!/
            scr_undface(4, 1)
            global.msg[5] = scr_gettext("scr_papcall_3802") // \E1* Oh^1! And I want a&  poster for all of&  my big fights!/
            scr_papface(6, 0)
            global.msg[7] = scr_gettext("scr_papcall_3804") // A REAL EVENT^1!&WE COULD HAVE A&LIVE BAND!/
            scr_undface(8, 6)
            global.msg[9] = scr_gettext("scr_papcall_3806") // * And a barbeque!/
            scr_papface(10, 0)
            global.msg[11] = scr_gettext("scr_papcall_3808") // AND FIREWORKS!/
            scr_undface(12, 6)
            global.msg[13] = scr_gettext("scr_papcall_3810") // * And a second&  barbeque!/
            scr_papface(14, 5)
            global.msg[15] = scr_gettext("scr_papcall_3812") // WON'T YOU JUST&EAT BBQ INSTEAD&OF FIGHTING?/
            scr_undface(16, 6)
            global.msg[17] = scr_gettext("scr_papcall_3814") // \E6* Let's do it!/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 2)
                global.msg[2] = scr_gettext("scr_papcall_3820") // \E2* We could use the&  spears as kabob&  skewers!/
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_3822") // AND BONES AS&KABONE SKEWERS!/
                scr_undface(5, 1)
                global.msg[6] = scr_gettext("scr_papcall_3824") // * What's a kabone?/
                scr_papface(7, 2)
                global.msg[8] = scr_gettext("scr_papcall_3826") // LIKE A KABOB BUT&WITH ONLY BONES./%%
            }
        }
        break
    case room_fire_savepoint2:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3836") // \E0DO SPIDERS HAVE&WEBBED FEET?/
        global.msg[3] = scr_gettext("scr_papcall_3837") // \E3WAIT^1.&SPIDERS DON'T HAVE&FEET./
        global.msg[4] = scr_gettext("scr_papcall_3838") // \E0DO SPIDERS HAVE&WEBBED FINGERS?/%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3844") // JUST CURIOUS./%%
        }
        if (u == 1)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3850") // \E0HEY^1, UNDYNE^1.&DO SPIDERS HAVE&WEBBED FEET?/
            scr_undface(3, 9)
            global.msg[4] = scr_gettext("scr_papcall_3852") // \E9* No^1, ducks have&  webbed feet./
            scr_papface(5, 0)
            global.msg[6] = scr_gettext("scr_papcall_3854") // DUCKS CAN SPIN&WEBS!?/
            scr_undface(7, 2)
            global.msg[8] = scr_gettext("scr_papcall_3856") // * Yeah^1, haven't you&  seen a duck wrap&  up a loaf of bread?/
            global.msg[9] = scr_gettext("scr_papcall_3857") // \E3* Then suck all of&  its guts out with&  its fangs?/
            scr_papface(10, 3)
            global.msg[11] = scr_gettext("scr_papcall_3859") // BREAD HAS GUTS?/
            scr_undface(12, 6)
            global.msg[13] = scr_gettext("scr_papcall_3861") // * Yeah^1. They just take&  'em all out before&  they sell it./
            scr_papface(14, 0)
            global.msg[15] = scr_gettext("scr_papcall_3863") // \E0WOW!^1!&YOU'RE REALLY&SMART^1, UNDYNE!/
            scr_undface(16, 1)
            global.msg[17] = scr_gettext("scr_papcall_3865") // * (I thought he knew&  I was joking...)/%%
            if (global.flag[462] > 0)
            {
                scr_undface(1, 9)
                global.msg[2] = scr_gettext("scr_papcall_3872") // \E9* Papyrus^1, wait^1, you&  know I'm joking^1,&  right...?/
                scr_papface(3, 0)
                global.msg[4] = scr_gettext("scr_papcall_3874") // OF COURSE!/
                global.msg[5] = scr_gettext("scr_papcall_3875") // \E2EVERYONE KNOWS&SPIDERS HAVE&WEBBED FEET./%%
            }
        }
        if (global.plot < 165)
            global.msg[1] = scr_gettext("scr_papcall_3880") // * (The signal is clogged with&  cobwebs...)/%%
        break
    case room_fire_spider:
        scr_papface(1, 0)
        global.msg[2] = scr_gettext("scr_papcall_3887") // I'VE HEARD THERE&ARE TWO GROUPS&OF SPIDERS./
        global.msg[3] = scr_gettext("scr_papcall_3888") // ONE IN HOTLAND^1,&AND ONE IN THE&RUINS./
        global.msg[4] = scr_gettext("scr_papcall_3889") // \E3SINCE THE SPIDERS&CAN'T CROSS THE&COLD OF SNOWDIN./
        global.msg[5] = scr_gettext("scr_papcall_3890") // THEY NEED SOME&KIND OF TRANSPORT./
        global.msg[6] = scr_gettext("scr_papcall_3891") // \E0LIKE A TANDEM&MOTORCYCLE WITH&EIGHT WHEELS./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3897") // OR A UNICYCLE&WITH EIGHT&WHEELS!/%%
        }
        if (u == 1)
        {
            scr_papface(1, 2)
            global.msg[2] = scr_gettext("scr_papcall_3903") // I WONDER IF ANY&OF MY ONLINE&FANS ARE SPIDERS./
            scr_undface(3, 9)
            global.msg[4] = scr_gettext("scr_papcall_3905") // * Do spiders even&  use the internet?/
            scr_sansface(5, 2)
            global.msg[6] = scr_gettext("scr_papcall_3907") // * are you kidding^1?&* spiders love to surf&  the web./
            scr_papface(7, 1)
            global.msg[8] = scr_gettext("scr_papcall_3909") // SANS!/
            global.msg[9] = scr_gettext("scr_papcall_3910") // \E0YOU'RE RIGHT&ABOUT SOMETHING./%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 0)
                global.msg[2] = scr_gettext("scr_papcall_3918") // \E3FANGS FOR VISITING&MY WEB-SITE./
                global.msg[3] = scr_gettext("scr_papcall_3919") // \E0THAT'S WHAT SPIDERS&LIKE TO POST./%%
            }
        }
        if (global.plot < 165)
            global.msg[1] = scr_gettext("scr_papcall_3924") // * (The signal is clogged with&  cobwebs...)/%%
        break
    case room_fire_prelab:
        scr_papface(1, 3)
        global.msg[2] = scr_gettext("scr_papcall_3931") // HMMM..^1.&A MYSTERIOUS&SCIENCE HOUSE./
        scr_sansface(3, 1)
        global.msg[4] = scr_gettext("scr_papcall_3933") // * the sign outside&  says " + '"' + "lab." + '"' + "/
        scr_papface(5, 3)
        global.msg[6] = scr_gettext("scr_papcall_3935") // LAB?/
        scr_sansface(7, 1)
        global.msg[8] = scr_gettext("scr_papcall_3937") // * like..^1. laboratory./
        scr_papface(9, 3)
        global.msg[10] = scr_gettext("scr_papcall_3939") // LABRADOR..^1. Y?/
        global.msg[11] = scr_gettext("scr_papcall_3940") // DOES THAT MEAN&THERE ARE DOGS&INSIDE?/
        scr_sansface(12, 1)
        global.msg[13] = scr_gettext("scr_papcall_3942") // * i mean./
        global.msg[14] = scr_gettext("scr_papcall_3943") // \E2* i wouldn't rule it&  out./%%
        if (global.flag[462] > 0)
        {
            scr_papface(1, 3)
            global.msg[2] = scr_gettext("scr_papcall_3948") // STRANGE DOG'S&HOUSE.../%%
        }
        if (u == 1)
        {
            scr_undface(1, 0)
            global.msg[2] = scr_gettext("scr_papcall_3956") // * That's Alphys's house./
            global.msg[3] = scr_gettext("scr_papcall_3957") // \E9* Hey^1, why don't we&  all go over and&  watch anime?/
            scr_papface(4, 3)
            global.msg[5] = scr_gettext("scr_papcall_3959") // ANIME?/
            global.msg[6] = scr_gettext("scr_papcall_3960") // ISN'T THAT A KIND&OF CARTOON FOR&SMALL CHILDREN?/
            scr_undface(7, 1)
            global.msg[8] = scr_gettext("scr_papcall_3962") // * Oh my GOD!!!/
            global.msg[9] = scr_gettext("scr_papcall_3963") // \E6* Anime isn't just for&  kids^1! It's deep^1!&* It's EMOTIONAL!!!/
            scr_papface(10, 0)
            global.msg[11] = scr_gettext("scr_papcall_3965") // IS (THE SOUND A&BABY MAKES) AN&EMOTION?/
            scr_undface(12, 6)
            global.msg[13] = scr_gettext("scr_papcall_3967") // * YEah CAUSE It'S HoW&  I'M FEElinG RIGHT&  NOW!!!/%%
            if (global.flag[462] > 0)
            {
                scr_papface(1, 3)
                global.msg[2] = scr_gettext("scr_papcall_3972") // WAIT.../
                global.msg[3] = scr_gettext("scr_papcall_3973") // \E5UNDYNE^1, DO YOU&LIKE ANIME?/
                scr_undface(4, 2)
                global.msg[5] = scr_gettext("scr_papcall_3975") // * .../
                scr_papface(6, 5)
                global.msg[7] = scr_gettext("scr_papcall_3977") // UH OH!!!/
                global.msg[8] = scr_gettext("scr_papcall_3978") // \E3I MEAN^1, I'VE&NEVER SEEN ANY./
                global.msg[9] = scr_gettext("scr_papcall_3979") // \E0MAYBE I ACTUALLY&DO LIKE ANIME!/
                scr_undface(10, 9)
                global.msg[11] = scr_gettext("scr_papcall_3981") // * You don't have to&  say that^1, Papyrus./
                scr_papface(12, 0)
                global.msg[13] = scr_gettext("scr_papcall_3983") // MAYBE I'M A BABY&WHO LOVES CARTOONS&FOR CHILDREN!/
                scr_undface(14, 2)
                global.msg[15] = scr_gettext("scr_papcall_3985") // * YOU DON'T HAVE TO&  SAY THAT^1, PAPYRUS!!/%%
            }
            if instance_exists(obj_royal_rabbitbounce)
            {
                scr_undface(1, 1)
                global.msg[2] = scr_gettext("scr_papcall_3993") // * What!^1?&* Royal Guards are&  blocking the way!?/
                global.msg[3] = scr_gettext("scr_papcall_3994") // \E2* Then I'll tell them&  to...!/
                global.msg[4] = scr_gettext("scr_papcall_3995") // \E4* Well^1, nothing^1, I&  guess./
                global.msg[5] = scr_gettext("scr_papcall_3996") // \E2* I already told them&  to seek out and&  destroy you!/
                global.msg[6] = scr_gettext("scr_papcall_3997") // \E1* And I can't just&  tell them I've&  changed my mind./
                global.msg[7] = scr_gettext("scr_papcall_3998") // \E2* You see^1, Alphys&  showed me these&  animations about.../
                global.msg[8] = scr_gettext("scr_papcall_3999") // \E1* Uhhh^1, humans?&* So I can learn&  their weaknesses?/
                global.msg[9] = scr_gettext("scr_papcall_4000") // \E2* And one of them&  is about this human&  that^1, uh.../
                global.msg[10] = scr_gettext("scr_papcall_4001") // \E6* Well^1, suffice to say^1,&  they can control&  people's minds!!!/
                global.msg[11] = scr_gettext("scr_papcall_4002") // \E3* Surprised^1?&* I know your kind's&  hidden power!/
                global.msg[12] = scr_gettext("scr_papcall_4003") // \E1* Anyway^1, I told my&  crew that if I ever&  defended a human.../
                global.msg[13] = scr_gettext("scr_papcall_4004") // \E2* I must be under&  some kind of mind&  control!/
                global.msg[14] = scr_gettext("scr_papcall_4005") // \E6* And to disregard&  EVERYTHING that I&  tell them!/
                global.msg[15] = scr_gettext("scr_papcall_4006") // \E7* So^1, sorry..^1.&* But my hands are&  tied./
                global.msg[16] = scr_gettext("scr_papcall_4007") // \E9* By the way^1, that&  animation is&  really good!/%%
                global.flag[401] = 1
                if (global.flag[462] > 0)
                {
                    scr_undface(1, 2)
                    global.msg[2] = scr_gettext("scr_papcall_4013") // \E6* I'm not going to&  tell them to let&  you by!/%%
                }
            }
        }
        if (global.flag[350] == 1)
            global.msg[1] = scr_gettext("scr_papcall_4019") // * (No response.)/%%
        break
    default:
        global.msg[0] = scr_gettext("scr_papcall_4026") // * Ring..^1. Ring.../
}

if (noresponse == 1)
{
    global.msg[0] = scr_gettext("scr_papcall_4033") // * Ring..^1. Ring.../
    global.msg[1] = scr_gettext("scr_papcall_4034") // * (There's no response...)/%%
}
if (tired == true)
{
    scr_papface(1, 0)
    global.msg[2] = scr_gettext("scr_papcall_4040") // I DON'T HAVE&ANYTHING ELSE TO&SAY./%%
}
if (dontplay == 0)
    audio_play_sound(snd_phone,80,false)
global.flag[462] += 1


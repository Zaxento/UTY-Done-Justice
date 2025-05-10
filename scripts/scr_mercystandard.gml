mercy = ((((global.monsterhp[myself] - global.at) - global.wstrength) + global.monsterdef[myself]) - mercymod)

if global.fightmode == 1 //Bullets with high ATK make Monsters easier to spare in BP Mode.
{
    mercy -= global.w2strength
}

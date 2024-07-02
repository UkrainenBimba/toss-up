$summon falling_block ~ ~-.5 ~ {BlockState:{Name:"$(id)"},HurtEntities:0b,Tags:["set.data"],Motion:[0.0,$(y),0.0],Passengers:[{id:"interaction",width:1,height:-1,response:1b,Tags:["toss_up.kick"]}]}
$particle dust_pillar{block_state:"$(id)"} ~ ~.5 ~ .25 0 .25 0.3 20 normal
scoreboard players operation @e[type=falling_block,tag=set.data,limit=1] toss_up.strength = *level2 toss_up.strength
tag @e[type=falling_block,tag=set.data,limit=1] remove set.data
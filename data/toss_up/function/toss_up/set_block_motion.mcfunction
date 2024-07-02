$summon falling_block ~ ~-1 ~ {Motion:$(vec),HurtEntities:0b,BlockState:$(state),Tags:["toss_up.kicked_block"],Passengers:[{id:"marker",data:{player:$(uuid),damage:$(damage)},Tags:["toss_up.block_data"]}]}
playsound minecraft:entity.wind_charge.wind_burst block @a ~ ~-1 ~ 0.475 1.5
$particle block{block_state:"$(id)"} ~ ~-0.5 ~ 0.25 0.25 0.25 1 6 normal

data remove storage toss_up:temp throw_block
execute on passengers run kill @s
kill @s
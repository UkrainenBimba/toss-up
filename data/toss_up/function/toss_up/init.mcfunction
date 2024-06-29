scoreboard players set *motion toss_up.strength 45
item replace entity 0-0-0-0-0 container.0 from entity @s weapon.mainhand
execute store result score *level toss_up.strength run data get entity 0-0-0-0-0 item.components."minecraft:enchantments".levels."toss_up:toss_up" 12
execute store result storage toss_up:temp falling_block.y double 0.01 run scoreboard players operation *motion toss_up.strength += *level toss_up.strength
$data modify storage toss_up:temp falling_block.id set value "$(id)"
function toss_up:toss_up/summon_falling_block with storage toss_up:temp falling_block
data remove storage toss_up:temp falling_block

$particle dust_pillar{block_state:"$(id)"} ~ ~.5 ~ .25 0 .25 0.3 20 normal
particle explosion ~ ~.5 ~
playsound minecraft:item.mace.smash_ground block @a ~ ~ ~ 1 1.5

scoreboard players set @s toss_up.cooldown 10
execute positioned ~-.6 ~-.5 ~-.6 if entity @s[dx=0,dz=0,dy=0.375] run function toss_up:toss_up/motion

tag @e[type=falling_block,tag=set.data,limit=1] remove set.data
fill ~ ~ ~ ~ ~ ~ air

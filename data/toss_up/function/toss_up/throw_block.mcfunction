execute on attacker run tag @s add attacker
execute summon marker rotated as @a[tag=attacker,distance=..256,limit=1] positioned 0. 0. 0. run function toss_up:toss_up/get_vector
execute on attacker run tag @s remove attacker

execute on vehicle run data modify storage toss_up:temp throw_block.state set from entity @s BlockState
data modify storage toss_up:temp throw_block.id set from storage toss_up:temp throw_block.state.Name

execute on vehicle run scoreboard players operation *damage toss_up.strength = @s toss_up.strength
scoreboard players add *damage toss_up.strength 1
execute store result storage toss_up:temp throw_block.damage int 3 run scoreboard players get *damage toss_up.strength

execute on attacker run item replace entity 0-0-0-0-0 container.0 from entity @s weapon.mainhand
execute on attacker run function gu:generate
data modify storage toss_up:temp throw_block.uuid set from storage gu:main out

execute on vehicle run function toss_up:toss_up/set_block_motion with storage toss_up:temp throw_block
execute as @e[type=interaction,tag=toss_up.kick] at @s run function toss_up:toss_up/interaction_tick
execute as @e[type=marker,tag=toss_up.block_data] at @s run function toss_up:toss_up/marker_tick

execute as @e[type=falling_block,tag=toss_up.kicked_block] on passengers at @s positioned ~-.5 ~-1 ~-.5 if entity @e[type=!#toss_up:entity,dx=0,dz=0,dy=0] run function toss_up:toss_up/damage_mobs with entity @s data

scoreboard players remove @a[scores={toss_up.cooldown=1..}] toss_up.cooldown 1
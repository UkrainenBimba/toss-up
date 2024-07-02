execute store result score *isVehicle toss_up.strength on vehicle if entity @s

execute unless score *isVehicle toss_up.strength matches 1 run kill @s
execute if score *isVehicle toss_up.strength matches 1 if data entity @s attack run function toss_up:toss_up/throw_block

scoreboard players reset *isVehicle toss_up.strength
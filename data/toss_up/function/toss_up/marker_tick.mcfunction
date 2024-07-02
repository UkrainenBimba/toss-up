execute store result score *isVehicle toss_up.strength on vehicle if entity @s
execute unless score *isVehicle toss_up.strength matches 1 run kill @s
scoreboard players reset *isVehicle toss_up.strength
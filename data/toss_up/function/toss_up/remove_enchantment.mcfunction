item replace entity 0-0-0-0-0 container.0 from entity @s weapon.mainhand
execute store result score *level toss_up.strength run data get entity 0-0-0-0-0 item.components."minecraft:enchantments".levels."toss_up:toss_up" -12
item modify entity @s weapon.mainhand toss_up:explode
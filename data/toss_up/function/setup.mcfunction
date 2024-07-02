function gu:load

scoreboard objectives add toss_up.strength dummy
scoreboard objectives add toss_up.cooldown dummy

summon item_display 0 -64 0 {UUID:[I;0,0,0,0]}
forceload add 0 0
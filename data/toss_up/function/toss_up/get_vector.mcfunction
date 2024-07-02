tp @s ^ ^ ^1.5

data modify storage toss_up:temp throw_block.vec set from entity @s Pos
execute store result storage toss_up:temp throw_block.vec[1] double 0.000001 run data get storage toss_up:temp throw_block.vec[1] 400000

kill @s
loot replace entity 0-0-0-0-0 container.0 mine ~ ~ ~ netherite_pickaxe[enchantments={levels:{"minecraft:silk_touch":1}}]
execute unless items entity 0-0-0-0-0 container.0 * run loot replace entity 0-0-0-0-0 container.0 mine ~ ~ ~ shears

execute if items entity 0-0-0-0-0 container.0 * run function toss_up:toss_up/init with entity 0-0-0-0-0 item
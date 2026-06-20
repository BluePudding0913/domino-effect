loot give @s mine ~ ~ ~ mainhand
fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
kill @e[type=item,sort=nearest,nbt={Age:0s},limit=1]
scoreboard players add @s peru.de.chain_count 1

function peru.domino_effect:damage_tool
$function peru.domino_effect:search {block_tag:"$(block_tag)",limit:$(limit)}

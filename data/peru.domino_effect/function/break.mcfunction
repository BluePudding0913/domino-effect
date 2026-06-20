# Stop when the chain reaches the limit passed by the caller.
$execute if score @s peru.de.chain_count matches $(limit).. run return 0

loot give @s mine ~ ~ ~ mainhand
fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
kill @e[type=item,tag=!peru.de.prime_item,sort=nearest,nbt={Age:0s},limit=1]

scoreboard players add @s peru.de.chain_count 1
function peru.domino_effect:damage_tool
$function peru.domino_effect:search {block_tag:"$(block_tag)",limit:$(limit)}

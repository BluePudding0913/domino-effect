loot spawn ~ ~ ~ mine ~ ~ ~ mainhand
setblock ~ ~ ~ air

scoreboard players add @s peru.de.chain_count 1

function peru.domino_effect:damage_tool
$function peru.domino_effect:search {block_tag:"$(block_tag)",limit:$(limit)}

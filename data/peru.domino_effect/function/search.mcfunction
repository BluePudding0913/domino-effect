# Stop when the chain reaches the limit passed by the caller.
$execute if score @s peru.de.chain_count matches $(limit).. run return 0

# Search the six adjacent blocks for the target block tag.
$execute if block ~1 ~ ~ $(block_tag) positioned ~1 ~ ~ run function peru.domino_effect:break {block_tag:"$(block_tag)",limit:$(limit)}
$execute if block ~-1 ~ ~ $(block_tag) positioned ~-1 ~ ~ run function peru.domino_effect:break {block_tag:"$(block_tag)",limit:$(limit)}
$execute if block ~ ~1 ~ $(block_tag) positioned ~ ~1 ~ run function peru.domino_effect:break {block_tag:"$(block_tag)",limit:$(limit)}
$execute if block ~ ~-1 ~ $(block_tag) positioned ~ ~-1 ~ run function peru.domino_effect:break {block_tag:"$(block_tag)",limit:$(limit)}
$execute if block ~ ~ ~1 $(block_tag) positioned ~ ~ ~1 run function peru.domino_effect:break {block_tag:"$(block_tag)",limit:$(limit)}
$execute if block ~ ~ ~-1 $(block_tag) positioned ~ ~ ~-1 run function peru.domino_effect:break {block_tag:"$(block_tag)",limit:$(limit)}

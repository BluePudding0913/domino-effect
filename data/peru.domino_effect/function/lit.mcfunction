#as @a at @s

tag @e[type=item,distance=..6,nbt={Age:0s},limit=1] add peru.de.prime_item
tag @e[type=experience_orb,nbt={Age:0s},distance=..6] add peru.de.orb

# プレイヤーの近くにある生成直後のアイテムの座標へ移動し、グリッドを合わせて探索開始
execute if predicate peru.domino_effect:pickaxe at @e[tag=peru.de.prime_item] align xyz run function peru.domino_effect:search {block_tag:"#peru.domino_effect:ores",limit:256}
execute unless predicate peru.domino_effect:pickaxe at @e[tag=peru.de.prime_item] align xyz run function peru.domino_effect:search {block_tag:"#minecraft:logs",limit:256}

data modify entity @e[tag=peru.de.prime_item,limit=1] PickupDelay set value 0s
tp @e[tag=peru.de.prime_item] @s
tp @e[tag=peru.de.orb] @s
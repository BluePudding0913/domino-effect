
#機能のON/OFF
execute as @a if score @s DOMINO_SWITCH matches 1.. run function peru.domino_effect:toggle

# プレイヤーの近くにある生成直後のアイテムの座標へ移動し、グリッドを合わせて探索開始
execute as @a if predicate peru.domino_effect:player_criteria if predicate peru.domino_effect:pickaxe at @s at @e[type=item,distance=..6,nbt={Age:0s},limit=1,sort=nearest] align xyz run function peru.domino_effect:search {block_tag:"#peru.domino_effect:ores",limit:64}
execute as @a if predicate peru.domino_effect:player_criteria unless predicate peru.domino_effect:pickaxe at @s at @e[type=item,distance=..6,nbt={Age:0s},limit=1,sort=nearest] align xyz run function peru.domino_effect:search {block_tag:"#minecraft:logs",limit:256}

function peru.domino_effect:reset_score


# 上限ストッパー（256個で強制終了）
execute if score @s peru.de.chain_count matches 256.. run return 0

# 6方向へ判定を広げる
execute if block ~1 ~ ~ #minecraft:logs positioned ~1 ~ ~ run function peru.domino_effect:break_b
execute if block ~-1 ~ ~ #minecraft:logs positioned ~-1 ~ ~ run function peru.domino_effect:break_b
execute if block ~ ~1 ~ #minecraft:logs positioned ~ ~1 ~ run function peru.domino_effect:break_b
execute if block ~ ~-1 ~ #minecraft:logs positioned ~ ~-1 ~ run function peru.domino_effect:break_b
execute if block ~ ~ ~1 #minecraft:logs positioned ~ ~ ~1 run function peru.domino_effect:break_b
execute if block ~ ~ ~-1 #minecraft:logs positioned ~ ~ ~-1 run function peru.domino_effect:break_b

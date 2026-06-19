
# 上限ストッパー（64個で強制終了）
execute if score @s peru.de.chain_count matches 64.. run return 0

# 6方向へ判定を広げる
execute if block ~1 ~ ~ #peru.domino_effect:ores positioned ~1 ~ ~ run function peru.domino_effect:break_a
execute if block ~-1 ~ ~ #peru.domino_effect:ores positioned ~-1 ~ ~ run function peru.domino_effect:break_a
execute if block ~ ~1 ~ #peru.domino_effect:ores positioned ~ ~1 ~ run function peru.domino_effect:break_a
execute if block ~ ~-1 ~ #peru.domino_effect:ores positioned ~ ~-1 ~ run function peru.domino_effect:break_a
execute if block ~ ~ ~1 #peru.domino_effect:ores positioned ~ ~ ~1 run function peru.domino_effect:break_a
execute if block ~ ~ ~-1 #peru.domino_effect:ores positioned ~ ~ ~-1 run function peru.domino_effect:break_a


# 変数（ストレージ）を初期化
data modify storage peru.de:tool damage set value 0
data modify storage peru.de:tool max_damage set value 0
data modify storage peru.de:tool unbreaking set value 0

# プレイヤーのツールから「現在のダメージ」「最大耐久値」「耐久力レベル」を取得
execute store result storage peru.de:tool damage int 1 run data get entity @s SelectedItem.components."minecraft:damage"
#max_damage は、componentにない。ツールの種類によって異なる耐久値（木59 石131 鉄250 金32 ダイヤ1561 ネザライト2031）をそれぞれ持っているアイテムを見てstorageに格納する
execute if data entity @s SelectedItem{id:"minecraft:wooden_axe"} run data modify storage peru.de:tool max_damage set value 59
execute if data entity @s SelectedItem{id:"minecraft:stone_axe"} run data modify storage peru.de:tool max_damage set value 131
execute if data entity @s SelectedItem{id:"minecraft:iron_axe"} run data modify storage peru.de:tool max_damage set value 250
execute if data entity @s SelectedItem{id:"minecraft:golden_axe"} run data modify storage peru.de:tool max_damage set value 32
execute if data entity @s SelectedItem{id:"minecraft:diamond_axe"} run data modify storage peru.de:tool max_damage set value 1561
execute if data entity @s SelectedItem{id:"minecraft:netherite_axe"} run data modify storage peru.de:tool max_damage set value 2031
execute if data entity @s SelectedItem{id:"minecraft:wooden_pickaxe"} run data modify storage peru.de:tool max_damage set value 59
execute if data entity @s SelectedItem{id:"minecraft:stone_pickaxe"} run data modify storage peru.de:tool max_damage set value 131
execute if data entity @s SelectedItem{id:"minecraft:iron_pickaxe"} run data modify storage peru.de:tool max_damage set value 250
execute if data entity @s SelectedItem{id:"minecraft:golden_pickaxe"} run data modify storage peru.de:tool max_damage set value 32
execute if data entity @s SelectedItem{id:"minecraft:diamond_pickaxe"} run data modify storage peru.de:tool max_damage set value 1561
execute if data entity @s SelectedItem{id:"minecraft:netherite_pickaxe"} run data modify storage peru.de:tool max_damage set value 2031
execute store result storage peru.de:tool unbreaking int 1 run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:unbreaking"

# 取得した値をマクロ関数へ渡して実行
function peru.domino_effect:apply_damage with storage peru.de:tool

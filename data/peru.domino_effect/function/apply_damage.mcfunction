# --- 耐久力の確率計算 ---
# 0 ～ (耐久力レベル) の範囲で乱数を生成（※エンチャント無しなら常に0になる）
$execute store result score #peru_1 peru.de.tmp run random value 0..$(unbreaking)

# 乱数が0以外（耐久力が発動して消費を免れた）ならここで処理を終了
execute unless score #peru_1 peru.de.tmp matches 0 run return 0

# --- ダメージ計算 ---
$scoreboard players set #peru_2 peru.de.tmp $(damage)
scoreboard players add #peru_2 peru.de.tmp 1

# --- 破壊判定 ---
# 現在ダメージ >= 最大ダメージ に達したかチェック
$scoreboard players set #peru_3 peru.de.tmp $(max_damage)
execute if score #peru_2 peru.de.tmp >= #peru_3 peru.de.tmp run item replace entity @s weapon.mainhand with air
execute if score #peru_2 peru.de.tmp >= #peru_3 peru.de.tmp run playsound minecraft:entity.item.break player @s ~ ~ ~ 1 1
execute if score #peru_2 peru.de.tmp >= #peru_3 peru.de.tmp run return 0

# --- アイテムの更新処理へ ---
# 破壊されなかった場合のみ、計算した新しいダメージ値をストレージに戻して更新マクロを呼ぶ
execute store result storage peru.de:tool new_damage int 1 run scoreboard players get #peru_2 peru.de.tmp
function peru.domino_effect:update_item with storage peru.de:tool
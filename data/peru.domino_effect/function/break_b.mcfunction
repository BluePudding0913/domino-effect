
# プレイヤーのメインハンドのツールを使ってアイテムをドロップ
loot spawn ~ ~ ~ mine ~ ~ ~ mainhand

# ブロックを消去（無限ループ防止のため必ず探索の前に実行）
setblock ~ ~ ~ air

# 破壊数を加算
scoreboard players add @s peru.de.chain_count 1

function peru.domino_effect:damage_tool

# 現在の座標（今壊したブロックの位置）を基準に、さらに探索関数を呼び出す（再帰）
function peru.domino_effect:search_b

#機能のON/OFF
execute as @a if score @s DOMINO matches 1.. run function peru.domino_effect:toggle


execute as @a if predicate peru.domino_effect:player_criteria at @s run function peru.domino_effect:lit

#※プレイヤーのスコアをリセットする関数)(tick関数の最後に実行される)
scoreboard players set @a DOMINO 0
scoreboard players enable @a DOMINO
scoreboard players reset @a peru.de.chain_count
scoreboard players reset @a peru.de.mine_diamond
scoreboard players reset @a peru.de.mine_iron
scoreboard players reset @a peru.de.mine_gold
scoreboard players reset @a peru.de.mine_nether_quartz
scoreboard players reset @a peru.de.mine_oak
scoreboard players reset @a peru.de.mine_spruce
scoreboard players reset @a peru.de.mine_birch
scoreboard players reset @a peru.de.mine_jungle
scoreboard players reset @a peru.de.mine_acacia
scoreboard players reset @a peru.de.mine_dark_oak
scoreboard players reset @a peru.de.mine_coal
scoreboard players reset @a peru.de.mine_lapis
scoreboard players reset @a peru.de.mine_emerald
scoreboard players reset @a peru.de.mine_redstone
scoreboard players reset @a peru.de.mine_copper
scoreboard players reset @a peru.de.mine_nether_gold
scoreboard players reset @a peru.de.mine_deepslate_coal
scoreboard players reset @a peru.de.mine_deepslate_iron
scoreboard players reset @a peru.de.mine_deepslate_copper
scoreboard players reset @a peru.de.mine_deepslate_gold
scoreboard players reset @a peru.de.mine_deepslate_redstone
scoreboard players reset @a peru.de.mine_deepslate_emerald
scoreboard players reset @a peru.de.mine_deepslate_lapis
scoreboard players reset @a peru.de.mine_deepslate_diamond

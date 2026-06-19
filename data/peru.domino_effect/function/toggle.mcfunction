#triggerされたら呼び出し

# 1. タグAを持っていない人に、一時的なタグ(temp)を付ける
tag @s[tag=!peru.de.enabled] add peru.de.temp

# 2. すでにタグAを持っている人から、タグAを外す
tag @s[tag=peru.de.enabled] remove peru.de.enabled

# 3. 一時的なタグ(peru.de.temp)を持っている人に、タグAを付ける
tag @s[tag=peru.de.temp] add peru.de.enabled
tag @s[tag=peru.de.temp] remove peru.de.temp


tellraw @s[tag=peru.de.enabled] "DominoEffect：§aON§f"
tellraw @s[tag=!peru.de.enabled] "DominoEffect：§cOFF§f"

# 4. スコアのリセットと、進捗の剥奪（再利用可能にするため）
scoreboard players enable @s DOMINO_SWITCH
scoreboard players set @s DOMINO_SWITCH 0
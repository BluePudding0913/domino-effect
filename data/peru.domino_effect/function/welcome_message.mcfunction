#プレイヤーがワールドに入った時に一度だけ実行される関数

#データパックが導入されている事を知らせるメッセージ
tellraw @s [{"text":"一括破壊データパック ", "color":"white"},{"text":"Domino Effect", "color":"green"}, {"text":" が導入されています。", "color":"white"}]
tag @s add peru.de.enabled

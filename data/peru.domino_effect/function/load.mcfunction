scoreboard objectives add peru.de.chain_count dummy
scoreboard objectives add peru.de.tmp dummy
scoreboard objectives add DOMINO_SWITCH trigger
scoreboard objectives add peru.de.mine_oak minecraft.mined:minecraft.oak_log
scoreboard objectives add peru.de.mine_spruce minecraft.mined:minecraft.spruce_log
scoreboard objectives add peru.de.mine_birch minecraft.mined:minecraft.birch_log
scoreboard objectives add peru.de.mine_jungle minecraft.mined:minecraft.jungle_log
scoreboard objectives add peru.de.mine_acacia minecraft.mined:minecraft.acacia_log
scoreboard objectives add peru.de.mine_dark_oak minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add peru.de.mine_coal minecraft.mined:minecraft.coal_ore
scoreboard objectives add peru.de.mine_iron minecraft.mined:minecraft.iron_ore
scoreboard objectives add peru.de.mine_diamond minecraft.mined:minecraft.diamond_ore
scoreboard objectives add peru.de.mine_gold minecraft.mined:minecraft.gold_ore
scoreboard objectives add peru.de.mine_lapis minecraft.mined:minecraft.lapis_ore
scoreboard objectives add peru.de.mine_emerald minecraft.mined:minecraft.emerald_ore
scoreboard objectives add peru.de.mine_redstone minecraft.mined:minecraft.redstone_ore
scoreboard objectives add peru.de.mine_copper minecraft.mined:minecraft.copper_ore
scoreboard objectives add peru.de.mine_nether_quartz minecraft.mined:minecraft.nether_quartz_ore
scoreboard objectives add peru.de.mine_nether_gold minecraft.mined:minecraft.nether_gold_ore
scoreboard objectives add peru.de.mine_deepslate_coal minecraft.mined:minecraft.deepslate_coal_ore
scoreboard objectives add peru.de.mine_deepslate_iron minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add peru.de.mine_deepslate_copper minecraft.mined:minecraft.deepslate_copper_ore
scoreboard objectives add peru.de.mine_deepslate_gold minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add peru.de.mine_deepslate_redstone minecraft.mined:minecraft.deepslate_redstone_ore
scoreboard objectives add peru.de.mine_deepslate_emerald minecraft.mined:minecraft.deepslate_emerald_ore
scoreboard objectives add peru.de.mine_deepslate_lapis minecraft.mined:minecraft.deepslate_lapis_ore
scoreboard objectives add peru.de.mine_deepslate_diamond minecraft.mined:minecraft.deepslate_diamond_ore
scoreboard objectives add peru.de.mine_deepslate_diamond minecraft.mined:minecraft.ancient_debris


function peru.domino_effect:reset_score
# ※対象にしたい原木や鉱石の数だけ作成します
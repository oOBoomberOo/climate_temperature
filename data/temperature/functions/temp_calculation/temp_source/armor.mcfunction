# 103b = head
# 102b = chest
# 101b = legs
# 100b = feet
# -106b = offhand


#Helmet
execute as @s if entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet"}]}] run scoreboard players set @s tmp.tempArmor4 2

#Chestplate
execute as @s if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate"}]}] run scoreboard players set @s tmp.tempArmor3 5

#Leggings
execute as @s if entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings"}]}] run scoreboard players set @s tmp.tempArmor2 3

#Boots
execute as @s if entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots"}]}] run scoreboard players set @s tmp.tempArmor1 2

execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor1
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor2
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor3
execute as @s store result score @s tmp.totalTemp run scoreboard players operation @s tmp.totalTemp += @s tmp.tempArmor4

scoreboard players set @s tmp.tempArmor1 0
scoreboard players set @s tmp.tempArmor2 0
scoreboard players set @s tmp.tempArmor3 0
scoreboard players set @s tmp.tempArmor4 0
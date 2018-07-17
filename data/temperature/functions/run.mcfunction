#1 The Scoreboard to increment/decrement the scores slowly
execute as @a run function temperature:player/player
execute as @a run function temperature:temp_calculation/main

#2 Clock on Offhand: TELL YOUR TEMPERATURE
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:clock"}]}] run title @s actionbar ["",{"text":"Your temperature is "},{"score":{"name":"@s","objective":"tmp.playerTemp"},"color":"dark_red"},{"text":".","color":"dark_red"}]


#Run the World TempTimer
#Note: putting '#' before fake player will not display on sidebar
scoreboard players add #tmp.bot_timer tmp.variable 1
execute if score #tmp.bot_timer tmp.variable matches 40.. run scoreboard players set #tmp.bot_timer tmp.variable 0


#Set the score of anyone who doesn't have it
execute as @a unless score @s tmp.playerTemp matches -110.. run scoreboard players set @s tmp.playerTemp 50

#Can't find any score involve playerTimer aka 'int tmp.playerTimer is never used'
execute as @a unless score @s tmp.playerTimer matches -1.. run scoreboard players set @s tmp.playerTimer 50
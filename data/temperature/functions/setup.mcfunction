tellraw @a {"text":"Successfully loaded: ","color":"yellow","extra":[{"text":"Climate and Temperature Pack V1.0","color":"blue","bold":false,"italic":false,"underlined":false},{"text":" by ","color":"yellow"},{"text":"SedarGames, Chuckchuk, TheSaltyPug, Boomber","color":"red","bold":false},{"text":".","color":"yellow"}]}

#1 make the scores
scoreboard objectives add tmp.playerTemp dummy
scoreboard objectives add tmp.totalTemp dummy
#scoreboard objectives add tmp.playerTimer dummy


#Temperature stuff
scoreboard objectives add tmp.tempBiome dummy
scoreboard objectives add tmp.spBiome dummy
scoreboard objectives add tmp.variable dummy
scoreboard objectives add tmp.tempArmor1 dummy
scoreboard objectives add tmp.tempArmor2 dummy
scoreboard objectives add tmp.tempArmor3 dummy
scoreboard objectives add tmp.tempArmor4 dummy


#2 Set the scores
scoreboard players set @a tmp.playerTemp 50

scoreboard players set #melting tmp.variable 3
scoreboard players set #hot tmp.variable 2
scoreboard players set #warm tmp.variable 1
scoreboard players set #normal tmp.variable 0
scoreboard players set #cool tmp.variable -1
scoreboard players set #cold tmp.variable -2
scoreboard players set #freezing tmp.variable -3

gamerule commandBlockOutput false
gamerule logAdminCommands false
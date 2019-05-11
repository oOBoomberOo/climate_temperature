scoreboard objectives add bb.variable dummy
scoreboard objectives add bb.calculation dummy
scoreboard objectives add bb.success dummy
scoreboard objectives add bb.config dummy

# Total Temperature
scoreboard objectives add cat.totalTemp dummy

# Target Temperature that totalTemp need to reach
scoreboard objectives add cat.targetTemp dummy

# Time Interval between each temperature calculation
scoreboard objectives add cat.timerTemp dummy

scoreboard objectives add cat.prevTemp dummy
scoreboard objectives add cat.thTimer dummy
scoreboard objectives add cat.thTempLvl dummy

scoreboard objectives add cat.query dummy

scoreboard objectives add cat.biomeTemp dummy
scoreboard objectives add cat.biomeID dummy
scoreboard objectives add cat.prevID dummy

scoreboard players set #-1 bb.variable -1
scoreboard players set #10 bb.variable 10
scoreboard players set #100 bb.variable 100
scoreboard players set #1000 bb.variable 1000
scoreboard players set #10000 bb.variable 10000
scoreboard players set #100000 bb.variable 100000

scoreboard players set #cat.timer bb.variable 0

function temperature:config
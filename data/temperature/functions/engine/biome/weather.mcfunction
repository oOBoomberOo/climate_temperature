# Check if snow can happen on current biome
execute if score #cat.biome.temp bb.variable <= #cat.biome.snowable bb.config run function temperature:engine/biome/weather/snowable
# Check if rain can happen on current biome
execute if score #cat.biome.temp bb.variable > #cat.biome.snowable bb.config if score #cat.biome.temp bb.variable <= #cat.biome.rainable bb.config run function temperature:engine/biome/weather/rainable
# Else this biome is dry
execute if score #cat.biome.temp bb.variable > #cat.biome.snowable bb.config if score #cat.biome.temp bb.variable > #cat.biome.rainable bb.config run function temperature:engine/biome/weather/dry

# Calculate weather temperature
execute if score cat.query.weather cat.weather matches 1.. run function temperature:engine/biome/weather/calculate
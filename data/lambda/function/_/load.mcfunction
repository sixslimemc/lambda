#> lambda:_/load
# @ LOAD

scoreboard objectives add _lambda dummy



# DEBUG
scoreboard players reset *init _lambda

execute unless score *init _lambda matches 1 run function lambda:_/init
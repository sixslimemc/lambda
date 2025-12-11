#> lambda:_/load
# @ LOAD

scoreboard objectives add _lambda dummy

data modify storage lambda:_ const.empty_command_fill set value "execute if score _ _lambda matches 0"

execute unless score *init _lambda matches 1 run function lambda:_/init
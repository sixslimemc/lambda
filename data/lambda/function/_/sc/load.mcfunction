#> lambda:_/sc/load
#--------------------
# ENTRYPOINT :: LOAD
#--------------------

scoreboard objectives add _lambda dummy

# consts
data remove storage lambda:_ const

data modify storage lambda:_ const.empty_command_fill set value "execute if score _ _ matches 0"
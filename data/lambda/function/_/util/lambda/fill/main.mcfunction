#> lambda:util > lambda/fill
#--------------------
# -> lambda: {
#- command? $command
#- pre_run? $command
#- ...
#}
#--------------------
# <- result: ^L
#--------------------
# fills <command> and <pre_run> with dummy commands.
#--------------------
# 1.
#--------------------

data modify storage lambda:_ u.fill.out.result set from storage lambda:_ u.fill.in.lambda
execute unless data storage lambda:_ u.fill.out.result.command run data modify storage lambda:_ u.fill.out.result.command set from storage lambda:_ const.empty_command_fill
execute unless data storage lambda:_ u.fill.out.result.pre_run run data modify storage lambda:_ u.fill.out.result.pre_run set from storage lambda:_ const.empty_command_fill

data remove storage lambda:_ u.fill.in

return 1
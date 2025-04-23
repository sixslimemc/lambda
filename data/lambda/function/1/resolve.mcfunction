#> lambda : 1/resolve
#--------------------
# -> lambda: Lambda<^T, ^R>
# -> direct: {in: $storage<^T>, out: $storage<^R>}
# => execute: bool = false
#--------------------
# -> result: Lamdar<^T, ^R>
#--------------------
# TODO
#--------------------
# ..:
#--------------------

data remove storage lambda:out resolve

data modify storage lambda:_ util.fill.in.lambda set from storage lambda:in resolve.lambda
function lambda:_/util/lambda/fill/main

data modify storage lambda:out resolve.result set from storage lambda:_ util.fill.out.result
data modify storage lambda:out resolve.result.from set from storage lambda:in resolve.direct.in
data modify storage lambda:out resolve.result.to set from storage lambda:in resolve.direct.out

scoreboard players set *x _lambda 1

execute if data storage lambda:in resolve{execute:true} store result score *x _lambda run function lambda:-/lambdar/1/execute with storage lambda:out resolve.result

data remove storage lambda:in resolve

return run scoreboard players get *x _lambda
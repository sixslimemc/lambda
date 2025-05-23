#> lambda : 2/resolve
# ^ Ia
# ^ Ib
# ^ R
#--------------------
# -> lambda: Lambda<^Ia, ^Ib, ^R>
# -> direct: {in: [$storage<^Ia>, $storage<^Ib>], out: $storage<^R>}
#--------------------
# -> result: Lamdar<^Ia, ^Ib, ^R>
#--------------------
# TODO
#--------------------
# 1.
#--------------------

data remove storage lambda:out resolve

data modify storage lambda:_ util.fill.in.lambda set from storage lambda:in resolve.lambda
function lambda:_/util/lambda/fill/main

data modify storage lambda:out resolve.result set from storage lambda:_ util.fill.out.result
data modify storage lambda:out resolve.result.from set from storage lambda:in resolve.direct.in
data modify storage lambda:out resolve.result.to set from storage lambda:in resolve.direct.out

data remove storage lambda:in resolve

return 1
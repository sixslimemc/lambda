#> lambda : 1/resolve
# ^ I
# ^ R
#--------------------
# -> lambda: Lambda<^I, ^R>
# -> direct: {in: $storage<^I>, out: $storage<^R>}
#--------------------
# -> result: Lamdar<^I, ^R>
#--------------------
# TODO
#--------------------
# 1.
#--------------------

data remove storage lambda:out resolve

data modify storage lambda:_ u.fill.in.lambda set from storage lambda:in resolve.lambda
function lambda:_/util/lambda/fill/main

data modify storage lambda:out resolve.result set from storage lambda:_ u.fill.out.result
data modify storage lambda:out resolve.result.from set from storage lambda:in resolve.direct.in
data modify storage lambda:out resolve.result.to set from storage lambda:in resolve.direct.out

data remove storage lambda:in resolve

return 1
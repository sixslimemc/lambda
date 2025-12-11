# IMPL > lambda : resolve
# main

data remove storage lambda:out resolve

data modify storage lambda:_ u.fill.in.lambda set from storage lambda:in resolve.lambda
function lambda:_/util/lambda/fill/main

data modify storage lambda:out resolve.result set from storage lambda:_ u.fill.out.result
data modify storage lambda:out resolve.result.to set from storage lambda:in resolve.direct.out

function lambda:_/impl/resolve/set_in

data remove storage lambda:out resolve.result.in

data remove storage lambda:in resolve

return 1
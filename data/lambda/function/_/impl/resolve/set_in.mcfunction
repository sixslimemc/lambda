# IMPL > lambda : resolve
# set_in
#--------------------
# ./main
#--------------------

execute store result score *x _lambda if data storage lambda:out resolve.result.in[]

execute if score *x _lambda matches ..0 run return 0
data modify storage lambda:out resolve.result.in_0 set from storage lambda:out resolve.result.in[0]
data modify storage lambda:out resolve.result.from_0 set from storage lambda:in resolve.direct.in[0]
execute if score *x _lambda matches ..1 run return 0
data modify storage lambda:out resolve.result.in_1 set from storage lambda:out resolve.result.in[1]
data modify storage lambda:out resolve.result.from_1 set from storage lambda:in resolve.direct.in[1]
execute if score *x _lambda matches ..2 run return 0
data modify storage lambda:out resolve.result.in_2 set from storage lambda:out resolve.result.in[2]
data modify storage lambda:out resolve.result.from_2 set from storage lambda:in resolve.direct.in[2]
execute if score *x _lambda matches ..3 run return 0
data modify storage lambda:out resolve.result.in_3 set from storage lambda:out resolve.result.in[3]
data modify storage lambda:out resolve.result.from_3 set from storage lambda:in resolve.direct.in[3]
execute if score *x _lambda matches ..4 run return 0
data modify storage lambda:out resolve.result.in_4 set from storage lambda:out resolve.result.in[4]
data modify storage lambda:out resolve.result.from_4 set from storage lambda:in resolve.direct.in[4]
execute if score *x _lambda matches ..5 run return 0
data modify storage lambda:out resolve.result.in_4 set from storage lambda:out resolve.result.in[5]
data modify storage lambda:out resolve.result.from_4 set from storage lambda:in resolve.direct.in[5]
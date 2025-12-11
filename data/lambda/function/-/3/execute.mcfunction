# lambda :-/ lambdar/3/execute
#--------------------
# $: Lambdar<any, any, any, any>
#--------------------
# executes the Lambdar this function was macro-supplied with.
#--------------------

scoreboard players set *x _lambda 0

$$(pre_run)
$data modify storage $(in_0) set from storage $(from_0)
$data modify storage $(in_1) set from storage $(from_1)
$data modify storage $(in_2) set from storage $(from_2)
$execute store result score *x _lambda run $(command)
$data modify storage $(to) set from storage $(out)

return run scoreboard players get *x _lambda
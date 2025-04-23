# lambda :-/ lambdar/1/execute
#--------------------
# $: Lambdar<any, any>
#--------------------
# executes the Lambdar this function was macro-supplied with.
#--------------------

scoreboard players set *x _lambda 0

$$(pre_run)
$data modify storage $(in) set from storage $(from)
$execute store result score *x _lambda run $(command)
$data modify storage $(to) set from storage $(out)

return run scoreboard players get *x _lambda
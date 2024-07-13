particle minecraft:dust{color:[0.953, 0.318, 0.537],scale:1} ~ ~ ~ 0 0 0 1 1

$say fill $(root) ^ ^$(height) ^$(radius) $(block)$(replace)

execute if score #rot fluxedit.dummy matches 1.. rotated ~1 ~ run function fluxedit:internal/cylinder/main with storage fluxedit:temp
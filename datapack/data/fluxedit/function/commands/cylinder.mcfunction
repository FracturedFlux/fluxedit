$data merge storage fluxedit:temp {solid:$(solid),radius:$(radius),height:$(height),block:$(block),replace:"$(replace)",root:""}

$execute if data storage fluxedit:temp {solid:0} run data merge storage fluxedit:temp {root:"^ ^ ^$(radius)"}
execute if data storage fluxedit:temp {solid:1} run data merge storage fluxedit:temp {root:"~ ~ ~"}

$execute unless data storage fluxedit:temp {replace:""} run data merge storage fluxedit:temp {replace:" replace $(replace)"}

scoreboard players set #rot fluxedit.dummy 360

execute align xyz positioned ~0.5 ~0.5 ~0.5 rotated 0 0 run function fluxedit:internal/cylinder/main with storage fluxedit:temp

scoreboard players reset #rot fluxedit.dummy

data remove storage fluxedit:temp {}
scoreboard objectives add jodek.config dummy
execute unless score &datapack_id_load_message jodek.config = &datapack_id_load_message jodek.config run scoreboard players set &datapack_id_load_message jodek.config 1
execute unless score &datapack_id_advancements jodek.config = &datapack_id_advancements jodek.config run scoreboard players set &datapack_id_advancements jodek.config 1

scoreboard objectives add datapack_id.config trigger

scoreboard objectives add datapack_id.image dummy

function datapack_id:config/image

function datapack_id:config/set_default
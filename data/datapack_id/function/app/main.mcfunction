scoreboard players enable @a datapack_id.config
execute as @a if score @s datapack_id.config matches 1.. run \
  function datapack_id:config/dialog_config with storage datapack_id:root data
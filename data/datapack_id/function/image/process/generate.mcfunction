#> datapack_id:image/generate
#
# This function generates the image data.

data modify storage datapack_id:image data.current.image_data set from storage datapack_id:image data.image_data
data modify storage datapack_id:image data.current.description set from storage datapack_id:image data.description
data modify storage datapack_id:image data.current.pixel_character set \
  from storage datapack_id:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data datapack_id.image 0
# Set width
execute store result score $width datapack_id.image run data get storage datapack_id:image data.width
# Set height
execute store result score $height datapack_id.image run data get storage datapack_id:image data.height
# Set length
scoreboard players operation $length datapack_id.image = $width datapack_id.image
scoreboard players operation $length datapack_id.image *= $height datapack_id.image
# Clear remaining entries in tellraw
data remove storage datapack_id:image data.tellraw

# Add spacing on top
function datapack_id:image/process/append/line_break
# Loop over image data
function datapack_id:image/process/loop_over_image_data
# Add spacing on bottom
function datapack_id:image/process/append/line_break

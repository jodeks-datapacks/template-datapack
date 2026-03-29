# Copy current pixel
data modify storage datapack_id:image data.current.pixel_color set \
  from storage datapack_id:image data.current.image_data[0]
data modify storage datapack_id:image data.current.description_text set \
  from storage datapack_id:image data.current.description[0]

scoreboard players add $index.image_data datapack_id.image 1

# Calculate column
scoreboard players operation $index.column datapack_id.image = $index.image_data datapack_id.image
scoreboard players operation $index.column datapack_id.image %= $width datapack_id.image

# Calculate row
scoreboard players operation $index.row datapack_id.image = $index.image_data datapack_id.image
scoreboard players operation $index.row datapack_id.image /= $width datapack_id.image

# Append start spacing
execute if score $index.column datapack_id.image matches 1 run \
  function datapack_id:image/process/append/blank

# Append colored pixel
execute unless data storage datapack_id:image data.current{pixel_color: ""} run \
  function datapack_id:image/process/append/pixel
# Append background pixel
execute if data storage datapack_id:image data.current{pixel_color: ""} run \
  function datapack_id:image/process/append/background

# Append description
execute if score $index.column datapack_id.image matches 0 run \
    function datapack_id:image/process/image_end/description

# Remove first element from the image_data array
data remove storage datapack_id:image data.current.image_data[0]
# Loop over rows
execute if score $index.row datapack_id.image < $height datapack_id.image run \
  function datapack_id:image/process/loop_over_image_data

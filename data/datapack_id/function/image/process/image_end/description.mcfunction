# Append blank
function datapack_id:image/process/append/blank

data modify storage datapack_id:image data.tellraw append \
  from storage datapack_id:image data.current.description_text

# Append blank
function datapack_id:image/process/append/blank

# Append line_break
execute unless score $index.image_data datapack_id.image = $length datapack_id.image \
  run function datapack_id:image/process/append/line_break

# Remove first element from the description
data remove storage datapack_id:image data.current.description[0]

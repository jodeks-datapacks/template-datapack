execute if score &datapack_id_load_message jodek.config matches 1 run tellraw @a [\
  {\
    "text": "[",\
    "color": "#aaaaaa"\
  },\
  {\
    "text": "datapack_name",\
    color: "#ffffff",\
    "hover_event": {\
      "action": "show_text",\
      "value": [\
        {\
          "nbt":"tellraw[]",\
          "storage": "datapack_id:image",\
          "interpret": true,\
          "separator": ""\
        }\
      ]\
    },\
    "click_event":\
    {\
    "action":"open_url",\
    "url":"https://modrinth.com/datapack/datapack_link/"\
    }\
  },\
  {\
    "text": "]",\
    "color": "#aaaaaa",\
    "hover_event": {\
      "action": "show_text",\
      "value": [\
        {\
          "nbt":"tellraw[]",\
          "storage": "datapack_id:image",\
          "interpret": true,\
          "separator": ""\
        }\
      ]\
    },\
    "click_event":\
    {\
    "action":"open_url",\
    "url":"https://modrinth.com/datapack/datapack_link/"\
    }\
  },\
  {\
    translate: "jodek.loaded", fallback: " loaded! ",\
    "color": "#ffffff",\
    "hover_event": {\
      "action": "show_text",\
      "value": [\
        {\
          "nbt":"tellraw[]",\
          "storage": "datapack_id:image",\
          "interpret": true,\
          "separator": ""\
        }\
      ]\
    },\
    "click_event":\
    {\
    "action":"open_url",\
    "url":"https://modrinth.com/datapack/datapack_link/"\
    }\
  },\
  {\
    translate: "jodek.hover_for_more_info", fallback: "hover for more info",\
    "color": "#929796",\
    "hover_event": {\
      "action": "show_text",\
      "value": [\
        {\
          "nbt":"tellraw[]",\
          "storage": "datapack_id:image",\
          "interpret": true,\
          "separator": ""\
        }\
      ]\
    },\
    "click_event":\
    {\
    "action":"open_url",\
    "url":"https://modrinth.com/datapack/datapack_link/"\
    }\
  }\
]
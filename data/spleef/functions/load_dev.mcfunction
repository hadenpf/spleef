# Show loaded message
tellraw @a [{ "bold":true, "color": "aqua", "text": "[Spleef] " }, { "bold": false, "color": "white", "text": "Loaded!" } ]

# Reset and start timer
function #spleef:dev_load
# Make data visible
scoreboard objectives setdisplay sidebar spleef_data

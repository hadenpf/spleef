scoreboard objectives add spleef_data dummy
scoreboard objectives add spleef_players dummy

# time setup
scoreboard players set FloorTime spleef_data 5
scoreboard players set TotalFloors spleef_data 1

# calculate timer time
scoreboard players operation Remaining spleef_data = FloorTime spleef_data
scoreboard players operation Remaining spleef_data *= TotalFloors spleef_data

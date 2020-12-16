scoreboard objectives add spleef_data dummy
scoreboard objectives add spleef_players dummy

# time setup
scoreboard players set FloorTime spleef_data 40
scoreboard players set TotalFloors spleef_data 5

# calculate timer time
scoreboard players operation TotalTime spleef_data = FloorTime spleef_data
scoreboard players operation TotalTime spleef_data *= TotalFloors spleef_data
scoreboard players operation Remaining spleef_data = TotalTime spleef_data


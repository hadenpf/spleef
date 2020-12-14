scoreboard players remove Remaining spleef_data 1

# 30 seconds countdown
execute if score Remaining spleef_data matches 4..30 run title @a actionbar [{"color": "aqua", "bold": true, "score": { "objective": "spleef_data", "name": "Remaining" }}, " seconds left"]

# 3 2 1 countdown
execute if score Remaining spleef_data matches 1..3 run playsound minecraft:block.note_block.bass player @a ^ ^ ^ 2 1.5 1
execute if score Remaining spleef_data matches 1..3 run title @a title ""
execute if score Remaining spleef_data matches 1..3 run title @a subtitle [{"color": "red", "score": { "objective": "spleef_data", "name": "Remaining" }}]

execute if score Remaining spleef_data matches ..3 run title @a actionbar ""
execute if score Remaining spleef_data matches 0 run title @a subtitle ""

# game end
execute if score Remaining spleef_data matches 0 run playsound minecraft:block.note_block.harp player @a ^ ^ ^ 5 2 1
execute if score Remaining spleef_data matches 0 run title @a title {"color": "green", "text": "Game Over!"}

scoreboard players operation RemainingFloors spleef_data = TotalTime spleef_data
scoreboard players operation RemainingFloors spleef_data %= TotalFloors spleef_data

execute unless score Remaining spleef_data matches ..0 run schedule function spleef:do_timer 1.1s



# execute innocent people 

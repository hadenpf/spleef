scoreboard players set ShouldFill spleef_data 0
execute as @e[type=armor_stand,name=ArenaGenerationCursor,limit=1,sort=nearest] at @s run tp @s ~ ~1 ~
execute at @e[type=armor_stand,name=ArenaGenerationCursor,limit=1,sort=nearest] if block ~1 ~ ~1 air run scoreboard players set ShouldFill spleef_data 1

execute if score ShouldFill spleef_data matches 1 run scoreboard players remove GeneratingFloors spleef_data 1
execute if score ShouldFill spleef_data matches 1 as @e[type=armor_stand,name=ArenaGenerationCursor,limit=1,sort=nearest] at @s run setblock ~ ~ ~ structure_block{ mode: "LOAD", rotation: "NONE", posX: 1, posY: 0, posZ: 1, sizeX: 25, sizeY: 6, sizeZ: 25, name: "spleef:spleef_floor_sb" }
execute if score ShouldFill spleef_data matches 1 if score GeneratingFloors spleef_data matches -1 as @e[type=armor_stand,name=ArenaGenerationCursor,limit=1,sort=nearest] at @s run setblock ~ ~ ~ structure_block{ mode: "LOAD", rotation: "NONE", posX: 1, posY: 0, posZ: 1, sizeX: 25, sizeY: 6, sizeZ: 25, name: "spleef:spleef_top_sb" }
execute if score ShouldFill spleef_data matches 1 as @e[type=armor_stand,name=ArenaGenerationCursor,limit=1,sort=nearest] at @s run setblock ~ ~1 ~ redstone_block
execute if score ShouldFill spleef_data matches 1 as @e[type=armor_stand,name=ArenaGenerationCursor,limit=1,sort=nearest] at @s run fill ~ ~ ~ ~ ~1 ~ air

execute if entity @e[type=armor_stand,name=ArenaGenerationCursor,limit=1,sort=nearest] run schedule function spleef:generate_arena_floor 1t replace
execute if score GeneratingFloors spleef_data matches ..-1 run kill @e[type=armor_stand,name=ArenaGenerationCursor,limit=1,sort=nearest]

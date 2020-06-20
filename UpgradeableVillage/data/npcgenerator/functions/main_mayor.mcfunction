scoreboard players enable @a MayorS
scoreboard players enable @a MayorC
scoreboard players enable @a MayorP
scoreboard players enable @a gold
execute at @e[tag=Mayor] as @e[tag=Mayor] run tellraw @p[distance=..5,limit=1,scores={MayorS=0..1,MayorP=1}] {"text":"Welcome to our village. \nWith your help we can grow this village into something grand! \nI know a great architect, but to get him to move here and help us build we need to pay him. \nCan you please donate 10 gold ingots? ","color":"white","extra":[{"text":"Not right now.","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger MayorC set 1"},"hoverEvent":{"action":"show_text","value":"Click on the colored text to choose."}},{"text":" or ","color":"white"},{"text":"Sure, here you go.","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger MayorC set 6"},"hoverEvent":{"action":"show_text","value":"Click to give him 10 gold ingots."}}]}
execute at @e[tag=Mayor] as @e[tag=Mayor] run tellraw @p[distance=..5,limit=1,scores={MayorS=2,MayorP=1}] {"text":"Sorry, it doesn't look like you have enough gold. ","color":"white","extra":[{"text":"Oh, sorry.","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger MayorC set 2"}}]}
execute at @e[tag=Mayor] as @e[tag=Mayor] run tellraw @p[distance=..5,limit=1,scores={MayorS=3,MayorP=1}] {"text":"Alright then, maybe some other time. ","color":"white","extra":[{"text":"Goodbye.","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger MayorC set 3"},"hoverEvent":{"action":"show_text","value":"Choose to start conversation over, or just leave."}}]}
execute at @e[tag=Mayor] as @e[tag=Mayor] run tellraw @p[distance=..5,limit=1,scores={MayorS=4,MayorP=1}] {"text":"Excellent, I shall set you up at the inn while we await our new resident! Are you sure you want me to take this gold? ","color":"white","extra":[{"text":"Yes, please take the gold and I will stay at the inn.","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger MayorC set 5"},"hoverEvent":{"action":"show_text","value":"Click to give the gold and wait."}}]}
execute at @p[scores={MayorC=1,MayorS=0..1}] if entity @e[distance=..5,limit=1,tag=Mayor] run function npcgenerator:cmdgroup1_mayor
execute at @p[scores={MayorC=2,MayorS=2}] if entity @e[distance=..5,limit=1,tag=Mayor] run function npcgenerator:cmdgroup2_mayor
execute at @p[scores={MayorC=3,MayorS=3}] if entity @e[distance=..5,limit=1,tag=Mayor] run function npcgenerator:cmdgroup3_mayor
execute at @p[scores={MayorC=4,MayorS=0..1}] if entity @e[distance=..5,limit=1,tag=Mayor] run function npcgenerator:cmdgroup4_mayor
execute at @p[scores={MayorC=5,MayorS=4}] if entity @e[distance=..5,limit=1,tag=Mayor] run function npcgenerator:cmdgroup5_mayor
execute at @p[scores={MayorC=6,MayorS=0..1}] if entity @e[distance=..5,limit=1,tag=Mayor] run function npcgenerator:cmdgroup6_mayor
execute at @e[tag=Mayor] as @e[tag=Mayor] run scoreboard players set @p[distance=6..,limit=1] MayorS 0
execute at @e[tag=Mayor] as @e[tag=Mayor] run scoreboard players set @p[distance=6..,limit=1] MayorC 0
execute at @e[tag=Mayor] as @e[tag=Mayor] run scoreboard players set @p[distance=6..,limit=1] MayorP 0
execute at @e[tag=Mayor] as @e[tag=Mayor] run scoreboard players add @p[distance=..5,limit=1] MayorP 1

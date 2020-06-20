scoreboard players set @p[scores={MayorC=6}] MayorP 0
scoreboard players set @p[scores={MayorC=6}] MayorC 0
execute as @a store result score @s gold run clear @s minecraft:gold_ingot 0
execute if entity @p[limit=1,distance=0..10,scores={gold=10..}] run scoreboard players set @p MayorS 4
execute if entity @p[limit=1,distance=0..10,scores={gold=0..9}] run scoreboard players set @p MayorS 2
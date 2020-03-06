#Demons are a type of mob that spawn exclusively around fortresses
#They fly at the player, force them into the air, and all around hurt really bad
#Additionally, there are two types: Demons and Voodoo Demons
#Voodoo demons drop a voodoo doll, needed to spawn a Devil

#Detecting that this skeleton is indeed spawning in a nether fortress
execute at @s store result score @s eb.temp run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 barrier replace nether_bricks
execute at @s run fill ~3 ~3 ~3 ~-3 ~-3 ~-3 nether_bricks replace barrier

#Replaces the skeleton with a demon if they are in a nether fortress
#AND that RNGesus says so
execute if score @s eb.blockDetect > Master eb.ten if score Master eb.specialSpawn = Master eb.ten run tag @s add eb.SpawnDemon
execute at @s[tag=SpawnDemon] run summon skeleton ~ ~ ~ {CustomName:"\"Demon\""}
execute at @s[tag=SpawnDemon] run tp @s ~ ~-256 ~
effect give @s[tag=SpawnDemon] instant_health 1 2

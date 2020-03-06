#Satyrs are a new type of mob found in the Nether
#They are found exclusively around veins of Quartz
#Look like bipedal goats, pretty much

#Detecting quartz around the spawn point
execute at @s store result score @s eb.temp run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 barrier replace nether_quartz_ore
execute at @s run fill ~8 ~8 ~8 ~-8 ~-8 ~-8 nether_quartz_ore replace barrier

#Actually replacing the pigman if any quartz is found
execute at @s if score @s eb.temp > Master zero run summon zombie ~ ~ ~ {Silent:1b,CustomName:"\"Satyr\"",ArmorItems:[{id:"minecraft:leather_boots",Count:1b},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b},{id:"minecraft:player_head",Count:1b}],ActiveEffects:[{Id:"minecraft:invisibility",Duration:1000000,Amplifier:0b,HideParticles:1b}],Attributes:[{Name:"generic.attackDamage",Base:10.0f},{Name:"generic.maxHealth",Base:25.0f},{Name:"generic.movementSpeed",Base:0.3f},{Name:"zombie.spawnReinforcements",Base:0.0f}]}
execute at @s if score @s eb.temp > Master zero run tp @s ~ ~-256 ~
execute at @s if score @s eb.temp > Master zero run effect give @s instant_health 1 2

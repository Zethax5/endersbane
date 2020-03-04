particle dust 0.0 0.0 0.0 1.0 ~ ~ ~ 0.1 0.1 0.1 0.1 10
playsound entity.wither.shoot master @a ~ ~ ~ 0.5 1.5
setblock ~ ~-1 ~ dispenser[facing=up]
summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Small:1b,CustomName:"\"ChaosStabilizerMarker\""}
summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,CustomName:"\"ChaosStabilizerBlock\"",ArmorItems:[{},{},{},{id:"minecraft:quartz_block"}]}
kill @e[type=item,tag=eb.cS1]
kill @e[type=item,tag=eb.cS2]

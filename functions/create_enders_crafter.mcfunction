particle dust 0.8 0.1 0.8 1.0 ~ ~ ~ 0.1 0.1 0.1 0.25 10
particle dragons_breath ~ ~ ~ 0.1 0.1 0.1 0.25 4
playsound entity.enderman.teleport master @a ~ ~ ~ 0.5 0.5
setblock ~ ~-1 ~ dispenser[facing=up]
summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,Small:1b,CustomName:"\"EnderCrafterMarker\""}
summon armor_stand ~ ~-1 ~ {Marker:1b,Invisible:1b,CustomName:"\"EnderCrafterBlock\""}
kill @e[type=item,tag=eb.enderCrafter1]
kill @e[type=item,tag=eb.enderCrafter2]

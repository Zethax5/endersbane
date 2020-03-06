function endersbane:crafting/get_min_count
execute at @p run summon item ~ ~ ~ {Item:{id:"minecraft:clock",Count:1b,tag:{eb.item_id:"eb:demonic_ingot",CustomModelData:502009,display:{Name:"\"Demonic Steel Ingot\"",Lore:["It radiates with demonic energy..."]}}},CustomName:"\"CraftedItem\""}
execute store result entity @e[type=item,name=CraftedItem,sort=nearest,limit=1] Item.Count byte 1 run scoreboard players get @s eb.minCount
execute at @p run particle flash ~ ~ ~ 0 0 0 1 1
execute at @p run playsound entity.zombie_villager.converted player @a ~ ~ ~ 1 0.5
function endersbane:crafting/reduce_count
function endersbane:crafting/reduce_count

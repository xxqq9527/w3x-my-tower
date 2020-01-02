-- courier
local couriersSkills = {}
local couriersSkillsPhoenix = {}
local couriersSkillsIce = {}

local couriers_abi = 0

--火凤凰闪烁
local obj = slk.ability.AEbl:new("couriers_sk_blink_phoenix")
local Name = "展翅"
local Tip = "展翅("..hColor.greenLight("Q")..")"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "Q"
obj.Ubertip = "可以闪烁到地图的任何地方"
obj.Buttonpos1 = 0
obj.Buttonpos2 = 0
obj.hero = 0
obj.levels = 1
obj.DataA1 = 99999
obj.DataB1 = 0
obj.Cool1 = 8
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_ability_FireResistanceTotem_01.blp"
obj.SpecialArt = "war3mapImported\\eff_different_liftoff.mdl"
obj.Areaeffectart = "war3mapImported\\eff_fire_tail.mdl"
table.insert(couriersSkillsPhoenix,obj:get_id())
--火凤凰-火焰吐息
local obj = slk.ability.ANcl:new("couriers_sk_extra_phoenix")
local Name = "火焰吐息"
local Tip = "火焰吐息("..hColor.greenLight("W")..")"
obj.Order = "webon"
obj.DataF1 = "webon"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "W"
obj.Ubertip = "兵塔在45秒内附加火攻击并增强2.5%的火攻击伤害"
obj.Buttonpos1 = 1
obj.Buttonpos2 = 0
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 75
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_ability_Fire_Dragon.blp"
obj.CasterArt = "war3mapImported\\eff_fire_tail.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
--冰剑闪烁
local obj = slk.ability.AEbl:new("couriers_sk_blink_icemon")
local Name = "冰洞"
local Tip = "冰洞("..hColor.greenLight("Q")..")"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "Q"
obj.Ubertip = "可以闪烁到地图的任何地方"
obj.Buttonpos1 = 0
obj.Buttonpos2 = 0
obj.hero = 0
obj.levels = 1
obj.DataA1 = 99999
obj.DataB1 = 0
obj.Cool1 = 3
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_ability_Atmospheric_shock.blp"
obj.SpecialArt = "war3mapImported\\eff_different_liftoff.mdl"
obj.Areaeffectart = "war3mapImported\\eff_light_eddy.mdl"
table.insert(couriersSkillsIce,obj:get_id())
--冰剑-霜寒脚步
local obj = slk.ability.ANcl:new("couriers_sk_extra_icemon")
local Name = "霜寒脚步"
local Tip = "霜寒脚步("..hColor.greenLight("W")..")"
obj.Order = "webon"
obj.DataF1 = "webon"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "W"
obj.Ubertip = "兵塔在45秒内附加冰攻击并增强3.5%的冰攻击伤害|n且攻击时，50%几率令目标2.2秒内减少45点移动"
obj.Buttonpos1 = 1
obj.Buttonpos2 = 0
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 75
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_ability_DeathKnight_PathOfFrost.blp"
obj.CasterArt = "war3mapImported\\eff_frost_burst.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkillsIce,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
--其他例牌技能
--吞兵塔石
local obj = slk.ability.ANcl:new("couriers_sk_eat")
local Name = "塔石吞噬"
local Tip = "塔石吞噬("..hColor.greenLight("A")..") - "..hColor.sky("免费")
obj.Order = "absorb"
obj.DataF1 = "absorb"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "A"
obj.Ubertip = "吞噬掉信使身上的所有兵塔石，每个提升当前兵塔1级"
obj.Buttonpos1 = 0
obj.Buttonpos2 = 1
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 0
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_item_Qiraj_JewelGlyphed.blp"
obj.CasterArt = "Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkills,temp.ABILITY_ID)
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
table.insert(couriersSkillsIce,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
--技能书·蓝
local obj = slk.ability.ANcl:new("couriers_sk_book_blue")
local Name = "呼唤技能书·蓝"
local Tip = "呼唤技能书·蓝("..hColor.greenLight("S")..") - "..hColor.yellow("500黄金")
obj.Order = "acidbomb"
obj.DataF1 = "acidbomb"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "S"
obj.Ubertip = "可随机获得一本蓝色的技能书"
obj.Buttonpos1 = 1
obj.Buttonpos2 = 1
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 0
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_item_Relics_LibramofGrace.blp"
obj.CasterArt = "Abilities\\Spells\\Items\\AIma\\AImaTarget.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkills,temp.ABILITY_ID)
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
table.insert(couriersSkillsIce,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
--技能书·黄
local obj = slk.ability.ANcl:new("couriers_sk_book_yellow")
local Name = "呼唤技能书·黄"
local Tip = "呼唤技能书·黄("..hColor.greenLight("D")..") - "..hColor.yellow("750黄金")
obj.Order = "acolyteharvest"
obj.DataF1 = "acolyteharvest"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "D"
obj.Ubertip = "可随机获得一本黄色的技能书"
obj.Buttonpos1 = 2
obj.Buttonpos2 = 1
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 0
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_item_Relics_LibramofHope.blp"
obj.CasterArt = "Abilities\\Spells\\Items\\AIsm\\AIsmTarget.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkills,temp.ABILITY_ID)
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
table.insert(couriersSkillsIce,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
--技能书·紫
local obj = slk.ability.ANcl:new("couriers_sk_book_purple")
local Name = "呼唤技能书·紫"
local Tip = "呼唤技能书·紫("..hColor.greenLight("F")..") - "..hColor.yellow("1000黄金")
obj.Order = "antimagicshell"
obj.DataF1 = "antimagicshell"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "F"
obj.Ubertip = "可随机获得一本紫色的技能书"
obj.Buttonpos1 = 3
obj.Buttonpos2 = 1
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 0
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_item_Relics_LibramofTruth.blp"
obj.CasterArt = "Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkills,temp.ABILITY_ID)
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
table.insert(couriersSkillsIce,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
--召唤新兵塔
local obj = slk.ability.ANcl:new("couriers_sk_new_tower")
local Name = "召唤新兵塔"
local Tip = "召唤新兵塔("..hColor.greenLight("Z")..") - "..hColor.yellow("400黄金")
obj.Order = "ambush"
obj.DataF1 = "ambush"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "Z"
obj.Ubertip = "可随机获得一个兵塔召唤石"
obj.Buttonpos1 = 0
obj.Buttonpos2 = 2
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 0
obj.Cost1 = 0
obj.Art = "ReplaceableTextures\\CommandButtons\\BTNStone.blp"
obj.CasterArt = "Abilities\\Spells\\Items\\AIim\\AIimTarget.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkills,temp.ABILITY_ID)
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
table.insert(couriersSkillsIce,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
--洗天赋
local obj = slk.ability.ANcl:new("couriers_sk_switch_gift")
local Name = "洗天赋"
local Tip = "洗天赋("..hColor.greenLight("X")..") - "..hColor.yellow("250黄金")
obj.Order = "ancestralspirit"
obj.DataF1 = "ancestralspirit"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "X"
obj.Ubertip = "可随机洗出Lv0~9级的天赋|n注意：有可能比当前还差的天赋"
obj.Buttonpos1 = 1
obj.Buttonpos2 = 2
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 0
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_ability_Elder_Seal.blp"
obj.CasterArt = "Abilities\\Spells\\Items\\AIam\\AIamTarget.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkills,temp.ABILITY_ID)
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
table.insert(couriersSkillsIce,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
--木换金
local obj = slk.ability.ANcl:new("couriers_sk_l2g")
local Name = "木换金"
local Tip = "木换金("..hColor.greenLight("C")..") - "..hColor.green("10木头")
obj.Order = "ancestralspirittarget"
obj.DataF1 = "ancestralspirittarget"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "C"
obj.Ubertip = "以10木头换取300金币"
obj.Buttonpos1 = 2
obj.Buttonpos2 = 2
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 0
obj.Cost1 = 0
obj.Art = "ReplaceableTextures\\CommandButtons\\BTNChestOfGold.blp"
obj.CasterArt = "Abilities\\Spells\\Items\\ResourceItems\\ResourceEffectTarget.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkills,temp.ABILITY_ID)
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
table.insert(couriersSkillsIce,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?
--装备合并升华
local obj = slk.ability.ANcl:new("couriers_sk_item_mix")
local Name = "装备升华"
local Tip = "装备升华("..hColor.greenLight("V")..") - "..hColor.yellow("500黄金")
obj.Order = "animatedead"
obj.DataF1 = "animatedead"
obj.Name = Name
obj.Tip = Tip
obj.Hotkey = "V"
obj.Ubertip = "将信使身上所有的物品评分，随机升华为一个新的物品|n物品必须大于2件以上才可升华"..hColor.yellow("(包括同种类)")
obj.Buttonpos1 = 3
obj.Buttonpos2 = 2
obj.hero = 0
obj.levels = 1
obj.DataA1 = 0
obj.DataB1 = 0
obj.DataC1 = 1
obj.DataD1 = 0.01
obj.Cool1 = 0
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_item_Jewelry_Necklace_27.blp"
obj.CasterArt = "war3mapImported\\eff_thunder_power_generation2.mdl"
obj.EffectArt = ""
obj.TargetArt = ""
local temp = {
    Name = Name,
    ABILITY_ID = obj:get_id(),
}
table.insert(couriersSkills,temp.ABILITY_ID)
table.insert(couriersSkillsPhoenix,temp.ABILITY_ID)
table.insert(couriersSkillsIce,temp.ABILITY_ID)
couriers_abi = couriers_abi + 1
?>
call SaveStr(hash_myslk, StringHash("couriers_ab"), <?=couriers_abi?>, "<?=hSys.addslashes(json.stringify(temp))?>")
<?

?>
call SaveInteger(hash_myslk, StringHash("couriers_ab"), -1, <?=couriers_abi?>)
<?
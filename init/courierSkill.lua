-- courier
local couriersSkills = {}
local couriersSkillsPhoenix = {}
local couriersSkillsIce = {}
--火凤凰闪烁
local obj = slk.ability.AEbl:new("couriers_sk_blink_phoenix")
local Name = "闪烁"
local Tip = "闪烁("..hColor.greenLight("Q")..")"
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
obj.Cool1 = 5
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_ability_FireResistanceTotem_01.blp"
obj.SpecialArt = "war3mapImported\\eff_different_liftoff.mdl"
obj.Areaeffectart = "war3mapImported\\eff_fire_tail.mdx"
table.insert(couriersSkillsPhoenix,obj:get_id())
--冰剑闪烁
local obj = slk.ability.AEbl:new("couriers_sk_blink_icemon")
local Name = "闪烁"
local Tip = "闪烁("..hColor.greenLight("Q")..")"
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
obj.Cool1 = 1
obj.Cost1 = 0
obj.Art = "war3mapImported\\icon_ability_Shock.blp"
obj.SpecialArt = "war3mapImported\\eff_different_liftoff.mdl"
obj.Areaeffectart = "war3mapImported\\eff_light_eddy.mdl"
table.insert(couriersSkillsIce,obj:get_id())
--其他例牌技能
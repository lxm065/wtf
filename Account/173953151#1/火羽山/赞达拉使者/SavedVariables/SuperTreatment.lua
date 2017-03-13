
SuperTreatmentDBF = {
	["AddOnMemory"] = {
		["max"] = 60,
		["inf"] = false,
		["on"] = false,
		["Leftfighting"] = false,
	},
	["index"] = 1,
	["checked"] = false,
	["Macro"] = {
		{
			["type"] = "script",
			["name"] = "骑乘状态",
			["id"] = "11388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--CTM 4.3.2 毁灭术士输出脚本 2012/2/26 by ATM\n--骑行状态，不施法\nif IsMounted(\"player\")==1  or BeePlayerBuffTime(\"喝水\")>1 or BeePlayerBuffTime(\"进食\")>1 or BeePlayerBuffTime(\"急救\")>1 then return;end",
			["Texture"] = "Interface\\Icons\\Ability_Mount_Gryphon_01",
		}, -- [1]
		{
			["type"] = "script",
			["name"] = "优先技能",
			["id"] = "21388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--插入技能\nif BeeCastSpellFast() then return;end",
			["Texture"] = "Interface\\Icons\\Ability_Mount_GyrocoptorElite",
		}, -- [2]
		{
			["type"] = "script",
			["name"] = "优先保命",
			["id"] = "31388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动优先保命部分\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeeIsRun(\"死亡缠绕\",\"target\") and BeeRange(\"target\")<40 then BeeRun(\"死亡缠绕\",\"target\");return;end\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeePower()>0 and BeeIsRun(\"灵魂燃烧\") and BeeIsRun(\"治疗石\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"治疗石\") then BeeRun(\"治疗石\");return;end\n--人类自利\nif BeeUnitRace(\"player\")==\"人类\" and BeeStringFind(\"惊魂尖叫,深度冻结,致盲,制裁之锤,死亡缠绕,变形术,精神控制,诱惑,冰冻陷阱,妖术,冰霜新星,沉睡\",BeeUnitBuffList()) and BeeIsRun(\"自利\") then BeeRun(\"自利\");return;end\n",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
		}, -- [3]
		{
			["type"] = "script",
			["name"] = "自动补BUFF",
			["id"] = "41388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动补BUFF\nif not BeeStringFind(\"邪甲术\",BeeUnitBuffList(\"player\")) then BeeRun(\"邪甲术\");BeeUnitCastSpellDelay(\"邪甲术\",1);return;end\nif BeeUnitHealth(\"pet\")>1 and not UnitIsDeadOrGhost(\"pet\") and BeePlayerBuffTime(\"灵魂链接\")==-1 and BeeIsRun(\"灵魂链接\") then BeeRun(\"灵魂链接\");BeeUnitCastSpellDelay(\"灵魂链接\");return;end",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_FelArmour",
		}, -- [4]
		{
			["type"] = "script",
			["name"] = "自动协助T",
			["id"] = "51388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动协助焦点T\nif BeeUnitAffectingCombat() and (UnitName(\"target\")==nil or UnitIsDead(\"target\"))  and not UnitIsDead(\"focustarget\") and BeeUnitCanAttack(\"focustarget\") then BeeRun(\"/target [target=focustarget]\");end\n\n--免开羊，免打断自己的法术\nlocal MKY=\"忏悔,变形术,妖术,诱惑,冰冻陷阱\";\nif BeeStringFind(MKY,BeeUnitBuffList(\"target\")) or BeeUnitCastSpellName(\"player\")==\"烈焰风暴\" or BeeUnitCastSpellName(\"player\")==\"吸取灵魂\" then return;end",
			["Texture"] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSanctuary",
		}, -- [5]
		{
			["type"] = "script",
			["name"] = "自动召BB",
			["id"] = "61388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--战斗中瞬招小鬼\nif BeeUnitAffectingCombat() and  BeePower()>0 and (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitAffectingCombat() and  (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"召唤小鬼\") then BeeRun(\"召唤小鬼\");return;end",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonFelHunter",
		}, -- [6]
		{
			["type"] = "script",
			["name"] = "宝宝技能",
			["id"] = "71388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "local spelljd, _, _, _, _, _, _, ddjd = UnitCastingInfo(\"focustarget\")\nlocal spellzj, _, _, _, _, _, _, ddzj = UnitCastingInfo(\"target\")\n--小鬼技能,灼烧驱魔,移除一个魔法\ngrouptype=\"\";if GetNumGroupMembers()>0 then grouptype=\"raid\" else grouptype=\"party\";end\nlocal n,qusan = BeeGroupCountScript('BeeRange(unit)<=40 and BeeIsRun(\"烧灼驱魔\",unit)',\"BeeUnitBuffInfo(unit,2,'Magic',0)>0 and not UnitIsDeadOrGhost(unit)\",grouptype) \nif UnitName(\"pet\")==\"塔泰\" and n>0 and BeeIsRun(\"烧灼驱魔\",qusan) then BeeRun(\"烧灼驱魔\",qusan);return;end\n--地狱猎犬技能.吞噬魔法(当前目标和焦点目标),打断施法\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and BeeUnitBuffInfo(\"target\",2,\"Magic\",1)>=1 and BeeIsRun(\"吞噬魔法\",\"target\") then BeeRun(\"吞噬魔法\",\"target\") return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and BeeUnitBuffInfo(\"focustarget\",2,\"Magic\",1)>=1 and BeeIsRun(\"吞噬魔法\",\"focustarget\") then BeeRun(\"吞噬魔法\",\"focustarget\") return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddzj == 0 and BeeIsRun(\"法术封锁\",\"target\") then BeeRun(\"法术封锁\",\"target\");return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddjd == 0 and BeeIsRun(\"法术封锁\",\"focustarget\") then BeeRun(\"法术封锁\",\"focustarget\");return;end\n--恶魔守卫技能，自动打断技能\nif UnitName(\"pet\")==\"尼尔利克\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddzj == 0 and BeeIsRun(\"巨斧投掷\") then BeeRun(\"巨斧投掷\",\"target\");return;end \nif UnitName(\"pet\")==\"尼尔利克\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddjd == 0 and BeeIsRun(\"巨斧投掷\",\"focustarget\") then BeeRun(\"巨斧投掷\",\"focustarget\");return;end\n--胖子 卡尔弗格\n--女人 扎利亚娜\n",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonSuccubus",
		}, -- [7]
		{
			["type"] = "script",
			["name"] = "自动开饰品",
			["id"] = "81388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动开饰品\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',10))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',10)))==0 then BeeRun(\"/use 10\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',13))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',13)))==0 then BeeRun(\"/use 13\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  return end",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_Teleport",
		}, -- [8]
		{
			["type"] = "script",
			["name"] = "生命分流",
			["id"] = "91388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--生命分流\nif BeeUnitAffectingCombat() and BeeUnitMana(\"player\",\"%\",0)<40 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_BurningSpirit",
		}, -- [9]
		{
			["type"] = "script",
			["name"] = "毁灭单体输出",
			["id"] = "101388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--特殊情况处理\n--暮光审判\nif (BeeUnitCastSpellTime(\"target\")<1.5 and BeeUnitCastSpellName(\"target\")==\"暮光审判\") or (BeeUnitBuff(\"黯淡之光\",\"player\",2,0)<1.5 and BeeStringFind(\"黯淡之光\" ,BeeUnitBuffList(\"player\")))then BeeRun(\"/click ExtraActionButton1\");end\n--套装数量判断\nT13=select(2,string.gsub(GetInventoryItemLink('player',1)..GetInventoryItemLink('player',3)..GetInventoryItemLink('player',5)..GetInventoryItemLink('player',7)..GetInventoryItemLink('player',10),\"无面裹布\",\"无面裹布\"))\n--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n--移动时候输出(移動輸出時,優先級是燃燒>暗影灼燒>強力小鬼下的靈魂火>分流>魔化烈焰. )\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n    if BeeIsRun(\"暗影灼烧\",\"target\") then BeeRun(\"暗影灼烧\");return;end\n    if BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--灵魂火(强化灵魂之火)\nif BeePlayerBuffTime(\"强化灵魂之火\")<4 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");BeeUnitCastSpellDelay(\"灵魂之火\",3);return;end\n--灵魂燃烧(4t13)\nif BeeUnitAffectingCombat() and T13>=4 and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\n--恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\");return;end\n--献祭\nif BeeTargetDeBuffTime(\"献祭\")<3 and BeeIsRun(\"献祭\",\"target\") then BeeRun(\"献祭\",\"target\");BeeUnitCastSpellDelay(\"献祭\",0.9);return;end\n--燃烧\nif BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n--末日灾祸(目标活过15秒)\nif BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\nif BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n--腐蚀术\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n--暗影灼烧(目标20%HP以下)\nif BeeUnitHealth(\"target\",\"%\",0)<=20 and  BeeIsRun(\"暗影灼烧\",\"target\")  then BeeRun(\"暗影灼烧\");return;end\n--暗影烈焰(近战范围)\nif BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<9 then BeeRun(\"暗影烈焰\");return;end\n--瞬发灵魂火\nif BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n--混乱箭(不在急速效果下)\nif BeeIsRun(\"混乱之箭\",\"target\") then BeeRun(\"混乱之箭\"); return;end\n--烧尽\nif BeeIsRun(\"烧尽\",\"target\") then BeeRun(\"烧尽\");return;end\n",
			["Texture"] = "Interface\\Icons\\Spell_Fire_FireBolt",
		}, -- [10]
		{
			["type"] = "script",
			["name"] = "毁灭AOE输出",
			["id"] = "111388143796-4279.643",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n\n--移动时候输出(移動輸出時,優先級是燃燒>暗影灼燒>強力小鬼下的靈魂火>分流>魔化烈焰. )\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n    if BeeIsRun(\"暗影灼烧\",\"target\") then BeeRun(\"暗影灼烧\");return;end\n    if BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--毁灭输出\n--[1]强化灵魂之火(保持这个BUFF最重要)\nif (BeePlayerBuffTime(\"强化灵魂之火\")<3 or BeePlayerBuffTime(\"小鬼增效\")>1) and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");BeeUnitCastSpellDelay(\"灵魂之火\",3);return;end\n--[2]腐蚀术\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");return;end\n--[3]末日灾厄\nif BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\nif BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n--[4]暗影烈焰\nif BeeUnitAffectingCombat() and BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<9 then BeeRun(\"暗影烈焰\");return;end\n--[5]恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\");return;end\n--AOE输出\nif BeeIsRun(\"腐蚀之种\",\"target\") and BeeTargetDeBuffTime(\"腐蚀之种\")<0 then BeeRun(\"腐蚀之种\",\"target\");return;end\n--[6]献祭\nif BeeTargetDeBuffTime(\"献祭\")<2 and BeeIsRun(\"献祭\",\"target\") then BeeRun(\"献祭\");BeeUnitCastSpellDelay(\"献祭\",0.9);return;end\n--[7]燃烧\nif BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n--[8]混乱之箭\nif BeeIsRun(\"混乱之箭\",\"target\") then BeeRun(\"混乱之箭\"); return;end\n--[9]烧尽(仅作为所有技能都CD时的填充技能)\nif BeeIsRun(\"烧尽\",\"target\") then BeeRun(\"烧尽\");return;end\n\n\n",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_RainOfFire",
		}, -- [11]
	},
	["Spells"] = {
		["NoStopCastingSpells"] = {
		},
		["List"] = {
			{
				["ExcludedGroup"] = {
				},
				["spell"] = {
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["CastingSpell"] = {
						},
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["DelayValue"] = 0,
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "616613-308777",
						["checked"] = false,
						["id"] = "11388143796-4279.643",
						["spellId"] = 0,
					}, -- [1]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["CastingSpell"] = {
						},
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["DelayValue"] = 0,
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "362276-598629",
						["checked"] = true,
						["id"] = "21388143796-4279.643",
						["spellId"] = 0,
					}, -- [2]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["CastingSpell"] = {
						},
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["DelayValue"] = 0,
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "166878-995377",
						["checked"] = false,
						["id"] = "31388143796-4279.643",
						["spellId"] = 0,
					}, -- [3]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["id"] = "41388143796-4279.643",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "460806-269744",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [4]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["CastingSpell"] = {
						},
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["DelayValue"] = 0,
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "820691-575493",
						["checked"] = false,
						["id"] = "51388143796-4279.643",
						["spellId"] = 0,
					}, -- [5]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["id"] = "61388143796-4279.643",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "558321-297296",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [6]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["id"] = "71388143796-4279.643",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "490479-788489",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [7]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["id"] = "81388143796-4279.643",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "523145-219438",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [8]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["id"] = "91388143796-4279.643",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "278908-160364",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [9]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["id"] = "101388143796-4279.643",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "513429-589156",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [10]
					{
						["TargetSubgroup"] = -1,
						["DelayChecked"] = false,
						["CastingSpell"] = {
						},
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["Target"] = "无目标",
						["Type"] = "script",
						["subgroup"] = -3,
						["raidn"] = -3,
						["DelayValue"] = 0,
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "524613-176451",
						["checked"] = true,
						["id"] = "111388143796-4279.643",
						["spellId"] = 0,
					}, -- [11]
				},
				["checked"] = true,
				["ApiDbf"] = {
				},
				["name"] = "毁灭术士基础包",
				["Mark"] = "377447-796786",
				["Remarks"] = "",
				["ExcludeTarget"] = {
				},
				["Key"] = {
					["KeySelect"] = "auto",
				},
			}, -- [1]
		},
	},
	["Remark"] = "",
	["Unit"] = {
		["ExcludeTarget"] = {
		},
		["RaidListClass"] = {
			["牧师"] = {
				["Count"] = 1,
				["englishClass"] = "PRIEST",
			},
			["术士"] = {
				["Count"] = 1,
				["englishClass"] = "WARLOCK",
			},
			["德鲁伊"] = {
				["Count"] = 1,
				["englishClass"] = "DRUID",
			},
		},
		["IsInfList"] = {
		},
		["TeamNumber"] = 0,
		["CustomizeIndex"] = 0,
		["MTList"] = {
			["TypeChecked"] = 1,
			["Custom"] = {
				"MT1", -- [1]
				"MT2", -- [2]
				"MT3", -- [3]
				"MT4", -- [4]
				"MT5", -- [5]
				"MT6", -- [6]
				"MT7", -- [7]
				"MT8", -- [8]
			},
			["Default"] = {
			},
		},
		["TeamCount"] = {
			[0] = 3,
		},
		["RaidList"] = {
			["boss1"] = {
				["name"] = "Boss1",
				["raidn"] = -21,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "boss1",
			},
			["maintank2"] = {
				["cuid"] = 12,
				["name"] = "MT2",
				["raidn"] = -11,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank2",
			},
			["maintank6"] = {
				["cuid"] = 16,
				["name"] = "MT6",
				["raidn"] = -15,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank6",
			},
			["赞达拉使者"] = {
				["subgroup"] = 0,
				["name"] = "赞达拉使者",
				["raidn"] = 1,
				["englishClass"] = "WARLOCK",
				["class"] = "术士",
				["unitid"] = "player",
				["unit"] = "赞达拉使者",
			},
			["nogoal"] = {
				["cuid"] = 2,
				["name"] = "无目标",
				["raidn"] = -9,
				["subgroup"] = -1,
				["englishClass"] = "",
				["class"] = "",
				["unit"] = "nogoal",
			},
			["maintank5"] = {
				["cuid"] = 15,
				["name"] = "MT5",
				["raidn"] = -14,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank5",
			},
			["妈蛋"] = {
				["subgroup"] = 0,
				["name"] = "妈蛋",
				["raidn"] = 2,
				["englishClass"] = "PRIEST",
				["class"] = "牧师",
				["unitid"] = "party2",
				["unit"] = "妈蛋",
			},
			["focus"] = {
				["name"] = "焦点目标",
				["raidn"] = -5,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "focus",
			},
			["target"] = {
				["name"] = "当前目标",
				["raidn"] = -7,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "target",
			},
			["maintank7"] = {
				["cuid"] = 17,
				["name"] = "MT7",
				["raidn"] = -16,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank7",
			},
			["boss2"] = {
				["name"] = "Boss2",
				["raidn"] = -22,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "boss1",
			},
			["悠悠龟-血牙魔王"] = {
				["subgroup"] = 0,
				["name"] = "悠悠龟-血牙魔王",
				["raidn"] = 1,
				["englishClass"] = "DRUID",
				["class"] = "德鲁伊",
				["unitid"] = "party1",
				["unit"] = "悠悠龟-血牙魔王",
			},
			["maintank1"] = {
				["cuid"] = 11,
				["name"] = "MT1",
				["raidn"] = -10,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank1",
			},
			["maintank4"] = {
				["cuid"] = 14,
				["name"] = "MT4",
				["raidn"] = -13,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank4",
			},
			["FireHasBeenSet"] = {
				["cuid"] = 1,
				["name"] = "被集火目标",
				["raidn"] = -3,
				["subgroup"] = -1,
				["englishClass"] = "",
				["class"] = "",
				["unit"] = "FireHasBeenSet",
			},
			["maintank8"] = {
				["cuid"] = 18,
				["name"] = "MT8",
				["raidn"] = -17,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank8",
			},
			["focustarget"] = {
				["name"] = "焦点目标的目标",
				["raidn"] = -4,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "focustarget",
			},
			["targettarget"] = {
				["name"] = "当前目标的目标",
				["raidn"] = -6,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "targettarget",
			},
			["pet"] = {
				["name"] = "宠物",
				["raidn"] = -19,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "pet",
			},
			["mouseovertarget"] = {
				["name"] = "鼠标目标的目标",
				["raidn"] = -1,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "mouseovertarget",
			},
			["player"] = {
				["name"] = "自己",
				["raidn"] = -8,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "player",
			},
			["mouseover"] = {
				["name"] = "鼠标目标",
				["raidn"] = -2,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "mouseover",
			},
			["boss3"] = {
				["name"] = "Boss3",
				["raidn"] = -23,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "boss1",
			},
			["boss4"] = {
				["name"] = "Boss4",
				["raidn"] = -24,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "boss1",
			},
			["pettarget"] = {
				["name"] = "宠物的目标",
				["raidn"] = -18,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "pettarget",
			},
			["vehicle"] = {
				["name"] = "你控制的车辆",
				["raidn"] = -20,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "vehicle",
			},
			["maintank3"] = {
				["cuid"] = 13,
				["name"] = "MT3",
				["raidn"] = -12,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank3",
			},
		},
		["CustomMT"] = {
			["checked"] = false,
			["list"] = {
			},
		},
		["ExcludedGroup"] = {
		},
		["IsInfListIndex"] = {
		},
		["IsInfListSet"] = {
		},
	},
	["Locale"] = "zhCN",
	["Config"] = {
	},
	["name"] = "毁灭术士基础包",
	["Version"] = 502010,
	["Mark"] = "722491-918133",
	["CollectionInf"] = {
		["Buff_Spell"] = {
		},
	},
	["updata"] = {
	},
	["Import"] = true,
}
CollectionInf = {
	["Buff_Spell"] = {
		["Totems"] = {
		},
		["Spell"] = {
		},
		["level"] = 0,
		["Buff"] = {
		},
	},
}
SuperTreatmentAllDBF = {
	["Programs"] = {
		{
			["AddOnMemory"] = {
				["max"] = 60,
				["inf"] = false,
				["on"] = false,
				["Leftfighting"] = false,
			},
			["index"] = 1,
			["Import"] = true,
			["Macro"] = {
			},
			["Spells"] = {
				["List"] = {
				},
				["NoStopCastingSpells"] = {
				},
			},
			["Remark"] = "",
			["Unit"] = {
				["ExcludedGroup"] = {
				},
				["RaidListClass"] = {
					["术士"] = {
						["Count"] = 1,
						["englishClass"] = "WARLOCK",
					},
				},
				["IsInfList"] = {
				},
				["TeamNumber"] = 0,
				["CustomizeIndex"] = 0,
				["MTList"] = {
					["TypeChecked"] = 1,
					["Custom"] = {
						"MT1", -- [1]
						"MT2", -- [2]
						"MT3", -- [3]
						"MT4", -- [4]
						"MT5", -- [5]
						"MT6", -- [6]
						"MT7", -- [7]
						"MT8", -- [8]
					},
					["Default"] = {
					},
				},
				["TeamCount"] = {
					[0] = 1,
				},
				["RaidList"] = {
					["boss1"] = {
						["name"] = "Boss1",
						["raidn"] = -21,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["maintank1"] = {
						["unit"] = "maintank1",
						["name"] = "MT1",
						["raidn"] = -10,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 11,
					},
					["maintank6"] = {
						["unit"] = "maintank6",
						["name"] = "MT6",
						["raidn"] = -15,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 16,
					},
					["赞达拉使者"] = {
						["subgroup"] = 0,
						["name"] = "赞达拉使者",
						["raidn"] = 1,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "player",
						["unit"] = "赞达拉使者",
					},
					["nogoal"] = {
						["unit"] = "nogoal",
						["name"] = "无目标",
						["raidn"] = -9,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 2,
					},
					["maintank5"] = {
						["unit"] = "maintank5",
						["name"] = "MT5",
						["raidn"] = -14,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 15,
					},
					["focus"] = {
						["name"] = "焦点目标",
						["raidn"] = -5,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focus",
					},
					["maintank8"] = {
						["unit"] = "maintank8",
						["name"] = "MT8",
						["raidn"] = -17,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 18,
					},
					["maintank7"] = {
						["unit"] = "maintank7",
						["name"] = "MT7",
						["raidn"] = -16,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 17,
					},
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["vehicle"] = {
						["name"] = "你控制的车辆",
						["raidn"] = -20,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "vehicle",
					},
					["FireHasBeenSet"] = {
						["unit"] = "FireHasBeenSet",
						["name"] = "被集火目标",
						["raidn"] = -3,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 1,
					},
					["pet"] = {
						["name"] = "宠物",
						["raidn"] = -19,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pet",
					},
					["targettarget"] = {
						["name"] = "当前目标的目标",
						["raidn"] = -6,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "targettarget",
					},
					["focustarget"] = {
						["name"] = "焦点目标的目标",
						["raidn"] = -4,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focustarget",
					},
					["pettarget"] = {
						["name"] = "宠物的目标",
						["raidn"] = -18,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pettarget",
					},
					["maintank2"] = {
						["unit"] = "maintank2",
						["name"] = "MT2",
						["raidn"] = -11,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 12,
					},
					["boss4"] = {
						["name"] = "Boss4",
						["raidn"] = -24,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["player"] = {
						["name"] = "自己",
						["raidn"] = -8,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "player",
					},
					["maintank4"] = {
						["unit"] = "maintank4",
						["name"] = "MT4",
						["raidn"] = -13,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 14,
					},
					["boss3"] = {
						["name"] = "Boss3",
						["raidn"] = -23,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["mouseovertarget"] = {
						["name"] = "鼠标目标的目标",
						["raidn"] = -1,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseovertarget",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
					},
					["target"] = {
						["name"] = "当前目标",
						["raidn"] = -7,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "target",
					},
					["maintank3"] = {
						["unit"] = "maintank3",
						["name"] = "MT3",
						["raidn"] = -12,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 13,
					},
				},
				["CustomMT"] = {
					["checked"] = false,
					["list"] = {
					},
				},
				["ExcludeTarget"] = {
				},
				["IsInfListIndex"] = {
				},
				["IsInfListSet"] = {
				},
			},
			["Locale"] = "zhCN",
			["Config"] = {
				["IndexTbl"] = 0,
			},
			["name"] = "[无名]",
			["updata"] = {
			},
			["Mark"] = "242376-264501",
			["CollectionInf"] = {
				["Buff_Spell"] = {
					["checked"] = false,
				},
			},
			["Version"] = 502010,
			["checked"] = false,
		}, -- [1]
		{
			["AddOnMemory"] = {
				["max"] = 60,
				["inf"] = false,
				["on"] = false,
				["Leftfighting"] = false,
			},
			["index"] = 1,
			["Unit"] = {
				["ExcludeTarget"] = {
				},
				["RaidListClass"] = {
					["猎人"] = {
						["Count"] = 1,
						["englishClass"] = "HUNTER",
					},
					["潜行者"] = {
						["Count"] = 3,
						["englishClass"] = "ROGUE",
					},
					["术士"] = {
						["Count"] = 2,
						["englishClass"] = "WARLOCK",
					},
					["德鲁伊"] = {
						["Count"] = 1,
						["englishClass"] = "DRUID",
					},
					["萨满祭司"] = {
						["Count"] = 2,
						["englishClass"] = "SHAMAN",
					},
					["战士"] = {
						["Count"] = 4,
						["englishClass"] = "WARRIOR",
					},
					["法师"] = {
						["Count"] = 5,
						["englishClass"] = "MAGE",
					},
					["死亡骑士"] = {
						["Count"] = 1,
						["englishClass"] = "DEATHKNIGHT",
					},
					["牧师"] = {
						["Count"] = 4,
						["englishClass"] = "PRIEST",
					},
				},
				["IsInfList"] = {
				},
				["TeamNumber"] = 3,
				["CustomizeIndex"] = 0,
				["IsInfListSet"] = {
				},
				["TeamCount"] = {
					4, -- [1]
					5, -- [2]
					5, -- [3]
					4, -- [4]
					5, -- [5]
				},
				["IsInfListIndex"] = {
				},
				["CustomMT"] = {
					["checked"] = false,
					["list"] = {
					},
				},
				["ExcludedGroup"] = {
				},
				["RaidList"] = {
					["boss1"] = {
						["name"] = "Boss1",
						["raidn"] = -21,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["maintank2"] = {
						["unit"] = "maintank2",
						["name"] = "MT2",
						["raidn"] = -11,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 12,
					},
					["悠扬小歆-兰娜瑟尔"] = {
						["subgroup"] = 4,
						["name"] = "悠扬小歆-兰娜瑟尔",
						["raidn"] = 16,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid16",
						["unit"] = "悠扬小歆-兰娜瑟尔",
					},
					["秃秃兄-加基森"] = {
						["subgroup"] = 2,
						["name"] = "秃秃兄-加基森",
						["raidn"] = 7,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid7",
						["unit"] = "秃秃兄-加基森",
					},
					["丶白龙丶-加基森"] = {
						["subgroup"] = 1,
						["name"] = "丶白龙丶-加基森",
						["raidn"] = 3,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid3",
						["unit"] = "丶白龙丶-加基森",
					},
					["Cactus-冰川之拳"] = {
						["subgroup"] = 1,
						["name"] = "Cactus-冰川之拳",
						["raidn"] = 5,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid5",
						["unit"] = "Cactus-冰川之拳",
					},
					["范范那里去-洛丹伦"] = {
						["subgroup"] = 2,
						["name"] = "范范那里去-洛丹伦",
						["raidn"] = 9,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid9",
						["unit"] = "范范那里去-洛丹伦",
					},
					["玖尾妖猫-末日祷告祭坛"] = {
						["subgroup"] = 4,
						["name"] = "玖尾妖猫-末日祷告祭坛",
						["raidn"] = 18,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid18",
						["unit"] = "玖尾妖猫-末日祷告祭坛",
					},
					["maintank7"] = {
						["unit"] = "maintank7",
						["name"] = "MT7",
						["raidn"] = -16,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 17,
					},
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["Verturemoto-洛萨"] = {
						["subgroup"] = 1,
						["role"] = "MAINTANK",
						["name"] = "Verturemoto-洛萨",
						["raidn"] = 2,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid2",
						["unit"] = "Verturemoto-洛萨",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
					},
					["boss4"] = {
						["name"] = "Boss4",
						["raidn"] = -24,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["player"] = {
						["name"] = "自己",
						["raidn"] = -8,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "player",
					},
					["拉轰滴熟食-拉文凯斯"] = {
						["subgroup"] = 3,
						["name"] = "拉轰滴熟食-拉文凯斯",
						["raidn"] = 13,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid13",
						["unit"] = "拉轰滴熟食-拉文凯斯",
					},
					["maintank3"] = {
						["unit"] = "maintank3",
						["name"] = "MT3",
						["raidn"] = -12,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 13,
					},
					["月夜陌路-破碎岭"] = {
						["subgroup"] = 2,
						["name"] = "月夜陌路-破碎岭",
						["raidn"] = 6,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid6",
						["unit"] = "月夜陌路-破碎岭",
					},
					["target"] = {
						["name"] = "当前目标",
						["raidn"] = -7,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "target",
					},
					["拉娜娅丶-凤凰之神"] = {
						["subgroup"] = 5,
						["name"] = "拉娜娅丶-凤凰之神",
						["raidn"] = 23,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid23",
						["unit"] = "拉娜娅丶-凤凰之神",
					},
					["maintank6"] = {
						["unit"] = "maintank6",
						["name"] = "MT6",
						["raidn"] = -15,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 16,
					},
					["牛叉哄哄-能源舰"] = {
						["subgroup"] = 2,
						["name"] = "牛叉哄哄-能源舰",
						["raidn"] = 10,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid10",
						["unit"] = "牛叉哄哄-能源舰",
					},
					["赞达拉使者"] = {
						["subgroup"] = 3,
						["name"] = "赞达拉使者",
						["raidn"] = 14,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid14",
						["unit"] = "赞达拉使者",
					},
					["八爪鱼二-地狱之石"] = {
						["subgroup"] = 2,
						["name"] = "八爪鱼二-地狱之石",
						["raidn"] = 8,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid8",
						["unit"] = "八爪鱼二-地狱之石",
					},
					["maintank5"] = {
						["unit"] = "maintank5",
						["name"] = "MT5",
						["raidn"] = -14,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 15,
					},
					["Nevermorees-亡语者"] = {
						["subgroup"] = 5,
						["name"] = "Nevermorees-亡语者",
						["raidn"] = 20,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid20",
						["unit"] = "Nevermorees-亡语者",
					},
					["君狂-无尽之海"] = {
						["subgroup"] = 5,
						["name"] = "君狂-无尽之海",
						["raidn"] = 1,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid1",
						["unit"] = "君狂-无尽之海",
					},
					["focus"] = {
						["name"] = "焦点目标",
						["raidn"] = -5,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focus",
					},
					["maintank8"] = {
						["unit"] = "maintank8",
						["name"] = "MT8",
						["raidn"] = -17,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 18,
					},
					["vehicle"] = {
						["name"] = "你控制的车辆",
						["raidn"] = -20,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "vehicle",
					},
					["maintank4"] = {
						["unit"] = "maintank4",
						["name"] = "MT4",
						["raidn"] = -13,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 14,
					},
					["Dlolol-死亡之翼"] = {
						["subgroup"] = 4,
						["name"] = "Dlolol-死亡之翼",
						["raidn"] = 17,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid17",
						["unit"] = "Dlolol-死亡之翼",
					},
					["杰出的公公-诺莫瑞根"] = {
						["subgroup"] = 3,
						["name"] = "杰出的公公-诺莫瑞根",
						["raidn"] = 11,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid11",
						["unit"] = "杰出的公公-诺莫瑞根",
					},
					["pet"] = {
						["name"] = "宠物",
						["raidn"] = -19,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pet",
					},
					["FireHasBeenSet"] = {
						["unit"] = "FireHasBeenSet",
						["name"] = "被集火目标",
						["raidn"] = -3,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 1,
					},
					["maintank1"] = {
						["unit"] = "maintank1",
						["name"] = "MT1",
						["raidn"] = -10,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 11,
					},
					["大大习-影之哀伤"] = {
						["subgroup"] = 5,
						["name"] = "大大习-影之哀伤",
						["raidn"] = 22,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid22",
						["unit"] = "大大习-影之哀伤",
					},
					["focustarget"] = {
						["name"] = "焦点目标的目标",
						["raidn"] = -4,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focustarget",
					},
					["pettarget"] = {
						["name"] = "宠物的目标",
						["raidn"] = -18,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pettarget",
					},
					["targettarget"] = {
						["name"] = "当前目标的目标",
						["raidn"] = -6,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "targettarget",
					},
					["mouseovertarget"] = {
						["name"] = "鼠标目标的目标",
						["raidn"] = -1,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseovertarget",
					},
					["Astronomer-密林游侠"] = {
						["subgroup"] = 4,
						["name"] = "Astronomer-密林游侠",
						["raidn"] = 19,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid19",
						["unit"] = "Astronomer-密林游侠",
					},
					["情緒拉扯-克尔苏加德"] = {
						["subgroup"] = 1,
						["name"] = "情緒拉扯-克尔苏加德",
						["raidn"] = 4,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid4",
						["unit"] = "情緒拉扯-克尔苏加德",
					},
					["boss3"] = {
						["name"] = "Boss3",
						["raidn"] = -23,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["韧洁-天空之墙"] = {
						["subgroup"] = 3,
						["name"] = "韧洁-天空之墙",
						["raidn"] = 15,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid15",
						["unit"] = "韧洁-天空之墙",
					},
					["nogoal"] = {
						["unit"] = "nogoal",
						["name"] = "无目标",
						["raidn"] = -9,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 2,
					},
					["Maknae-贫瘠之地"] = {
						["subgroup"] = 5,
						["name"] = "Maknae-贫瘠之地",
						["raidn"] = 21,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid21",
						["unit"] = "Maknae-贫瘠之地",
					},
					["奥的传承-萨菲隆"] = {
						["subgroup"] = 3,
						["name"] = "奥的传承-萨菲隆",
						["raidn"] = 12,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid12",
						["unit"] = "奥的传承-萨菲隆",
					},
				},
				["MTList"] = {
					["TypeChecked"] = 1,
					["Custom"] = {
						"MT1", -- [1]
						"MT2", -- [2]
						"MT3", -- [3]
						"MT4", -- [4]
						"MT5", -- [5]
						"MT6", -- [6]
						"MT7", -- [7]
						"MT8", -- [8]
					},
					["Default"] = {
						"Verturemoto-洛萨", -- [1]
						"情緒拉扯-克尔苏加德", -- [2]
					},
				},
			},
			["Macro"] = {
				{
					["type"] = "script",
					["name"] = "骑乘状态",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11388143796-4279.643",
					["Macro"] = "--CTM 4.3.2 毁灭术士输出脚本 2012/2/26 by ATM\n--骑行状态，不施法\nif IsMounted(\"player\")==1  or BeePlayerBuffTime(\"喝水\")>1 or BeePlayerBuffTime(\"进食\")>1 or BeePlayerBuffTime(\"急救\")>1 then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Mount_Gryphon_01",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "优先技能",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "21388143796-4279.643",
					["Macro"] = "--插入技能\nif BeeCastSpellFast() then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Mount_GyrocoptorElite",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "优先保命",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "31388143796-4279.643",
					["Macro"] = "--自动优先保命部分\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeeIsRun(\"死亡缠绕\",\"target\") and BeeRange(\"target\")<40 then BeeRun(\"死亡缠绕\",\"target\");return;end\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeePower()>0 and BeeIsRun(\"灵魂燃烧\") and BeeIsRun(\"治疗石\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"治疗石\") then BeeRun(\"治疗石\");return;end\n--人类自利\nif BeeUnitRace(\"player\")==\"人类\" and BeeStringFind(\"惊魂尖叫,深度冻结,致盲,制裁之锤,死亡缠绕,变形术,精神控制,诱惑,冰冻陷阱,妖术,冰霜新星,沉睡\",BeeUnitBuffList()) and BeeIsRun(\"自利\") then BeeRun(\"自利\");return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "自动补BUFF",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "41388143796-4279.643",
					["Macro"] = "--自动补BUFF\nif not BeeStringFind(\"邪甲术\",BeeUnitBuffList(\"player\")) then BeeRun(\"邪甲术\");BeeUnitCastSpellDelay(\"邪甲术\",1);return;end\nif BeeUnitHealth(\"pet\")>1 and not UnitIsDeadOrGhost(\"pet\") and BeePlayerBuffTime(\"灵魂链接\")==-1 and BeeIsRun(\"灵魂链接\") then BeeRun(\"灵魂链接\");BeeUnitCastSpellDelay(\"灵魂链接\");return;end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_FelArmour",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "自动协助T",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "51388143796-4279.643",
					["Macro"] = "--自动协助焦点T\nif BeeUnitAffectingCombat() and (UnitName(\"target\")==nil or UnitIsDead(\"target\"))  and not UnitIsDead(\"focustarget\") and BeeUnitCanAttack(\"focustarget\") then BeeRun(\"/target [target=focustarget]\");end\n\n--免开羊，免打断自己的法术\nlocal MKY=\"忏悔,变形术,妖术,诱惑,冰冻陷阱\";\nif BeeStringFind(MKY,BeeUnitBuffList(\"target\")) or BeeUnitCastSpellName(\"player\")==\"烈焰风暴\" or BeeUnitCastSpellName(\"player\")==\"吸取灵魂\" then return;end",
					["Texture"] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSanctuary",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = "自动召BB",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "61388143796-4279.643",
					["Macro"] = "--战斗中瞬招小鬼\nif BeeUnitAffectingCombat() and  BeePower()>0 and (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitAffectingCombat() and  (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"召唤小鬼\") then BeeRun(\"召唤小鬼\");return;end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonFelHunter",
				}, -- [6]
				{
					["type"] = "script",
					["name"] = "宝宝技能",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "71388143796-4279.643",
					["Macro"] = "local spelljd, _, _, _, _, _, _, ddjd = UnitCastingInfo(\"focustarget\")\nlocal spellzj, _, _, _, _, _, _, ddzj = UnitCastingInfo(\"target\")\n--小鬼技能,灼烧驱魔,移除一个魔法\ngrouptype=\"\";if GetNumGroupMembers()>0 then grouptype=\"raid\" else grouptype=\"party\";end\nlocal n,qusan = BeeGroupCountScript('BeeRange(unit)<=40 and BeeIsRun(\"烧灼驱魔\",unit)',\"BeeUnitBuffInfo(unit,2,'Magic',0)>0 and not UnitIsDeadOrGhost(unit)\",grouptype) \nif UnitName(\"pet\")==\"塔泰\" and n>0 and BeeIsRun(\"烧灼驱魔\",qusan) then BeeRun(\"烧灼驱魔\",qusan);return;end\n--地狱猎犬技能.吞噬魔法(当前目标和焦点目标),打断施法\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and BeeUnitBuffInfo(\"target\",2,\"Magic\",1)>=1 and BeeIsRun(\"吞噬魔法\",\"target\") then BeeRun(\"吞噬魔法\",\"target\") return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and BeeUnitBuffInfo(\"focustarget\",2,\"Magic\",1)>=1 and BeeIsRun(\"吞噬魔法\",\"focustarget\") then BeeRun(\"吞噬魔法\",\"focustarget\") return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddzj == 0 and BeeIsRun(\"法术封锁\",\"target\") then BeeRun(\"法术封锁\",\"target\");return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddjd == 0 and BeeIsRun(\"法术封锁\",\"focustarget\") then BeeRun(\"法术封锁\",\"focustarget\");return;end\n--恶魔守卫技能，自动打断技能\nif UnitName(\"pet\")==\"尼尔利克\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddzj == 0 and BeeIsRun(\"巨斧投掷\") then BeeRun(\"巨斧投掷\",\"target\");return;end \nif UnitName(\"pet\")==\"尼尔利克\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddjd == 0 and BeeIsRun(\"巨斧投掷\",\"focustarget\") then BeeRun(\"巨斧投掷\",\"focustarget\");return;end\n--胖子 卡尔弗格\n--女人 扎利亚娜\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonSuccubus",
				}, -- [7]
				{
					["type"] = "script",
					["name"] = "自动开饰品",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "81388143796-4279.643",
					["Macro"] = "--自动开饰品\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',10))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',10)))==0 then BeeRun(\"/use 10\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',13))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',13)))==0 then BeeRun(\"/use 13\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  return end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_Teleport",
				}, -- [8]
				{
					["type"] = "script",
					["name"] = "生命分流",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "91388143796-4279.643",
					["Macro"] = "--生命分流\nif BeeUnitAffectingCombat() and BeeUnitMana(\"player\",\"%\",0)<40 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_BurningSpirit",
				}, -- [9]
				{
					["type"] = "script",
					["name"] = "毁灭单体输出",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "101388143796-4279.643",
					["Macro"] = "--特殊情况处理\n--暮光审判\nif (BeeUnitCastSpellTime(\"target\")<1.5 and BeeUnitCastSpellName(\"target\")==\"暮光审判\") or (BeeUnitBuff(\"黯淡之光\",\"player\",2,0)<1.5 and BeeStringFind(\"黯淡之光\" ,BeeUnitBuffList(\"player\")))then BeeRun(\"/click ExtraActionButton1\");end\n--套装数量判断\nT13=select(2,string.gsub(GetInventoryItemLink('player',1)..GetInventoryItemLink('player',3)..GetInventoryItemLink('player',5)..GetInventoryItemLink('player',7)..GetInventoryItemLink('player',10),\"无面裹布\",\"无面裹布\"))\n--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n--移动时候输出(移動輸出時,優先級是燃燒>暗影灼燒>強力小鬼下的靈魂火>分流>魔化烈焰. )\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n    if BeeIsRun(\"暗影灼烧\",\"target\") then BeeRun(\"暗影灼烧\");return;end\n    if BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--灵魂火(强化灵魂之火)\nif BeePlayerBuffTime(\"强化灵魂之火\")<4 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");BeeUnitCastSpellDelay(\"灵魂之火\",3);return;end\n--灵魂燃烧(4t13)\nif BeeUnitAffectingCombat() and T13>=4 and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\n--恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\");return;end\n--献祭\nif BeeTargetDeBuffTime(\"献祭\")<3 and BeeIsRun(\"献祭\",\"target\") then BeeRun(\"献祭\",\"target\");BeeUnitCastSpellDelay(\"献祭\",0.9);return;end\n--燃烧\nif BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n--末日灾祸(目标活过15秒)\nif BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\nif BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n--腐蚀术\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n--暗影灼烧(目标20%HP以下)\nif BeeUnitHealth(\"target\",\"%\",0)<=20 and  BeeIsRun(\"暗影灼烧\",\"target\")  then BeeRun(\"暗影灼烧\");return;end\n--暗影烈焰(近战范围)\nif BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<9 then BeeRun(\"暗影烈焰\");return;end\n--瞬发灵魂火\nif BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n--混乱箭(不在急速效果下)\nif BeeIsRun(\"混乱之箭\",\"target\") then BeeRun(\"混乱之箭\"); return;end\n--烧尽\nif BeeIsRun(\"烧尽\",\"target\") then BeeRun(\"烧尽\");return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Fire_FireBolt",
				}, -- [10]
				{
					["type"] = "script",
					["name"] = "毁灭AOE输出",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "111388143796-4279.643",
					["Macro"] = "--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n\n--移动时候输出(移動輸出時,優先級是燃燒>暗影灼燒>強力小鬼下的靈魂火>分流>魔化烈焰. )\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n    if BeeIsRun(\"暗影灼烧\",\"target\") then BeeRun(\"暗影灼烧\");return;end\n    if BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--毁灭输出\n--[1]强化灵魂之火(保持这个BUFF最重要)\nif (BeePlayerBuffTime(\"强化灵魂之火\")<3 or BeePlayerBuffTime(\"小鬼增效\")>1) and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");BeeUnitCastSpellDelay(\"灵魂之火\",3);return;end\n--[2]腐蚀术\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");return;end\n--[3]末日灾厄\nif BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\nif BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n--[4]暗影烈焰\nif BeeUnitAffectingCombat() and BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<9 then BeeRun(\"暗影烈焰\");return;end\n--[5]恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\");return;end\n--AOE输出\nif BeeIsRun(\"腐蚀之种\",\"target\") and BeeTargetDeBuffTime(\"腐蚀之种\")<0 then BeeRun(\"腐蚀之种\",\"target\");return;end\n--[6]献祭\nif BeeTargetDeBuffTime(\"献祭\")<2 and BeeIsRun(\"献祭\",\"target\") then BeeRun(\"献祭\");BeeUnitCastSpellDelay(\"献祭\",0.9);return;end\n--[7]燃烧\nif BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n--[8]混乱之箭\nif BeeIsRun(\"混乱之箭\",\"target\") then BeeRun(\"混乱之箭\"); return;end\n--[9]烧尽(仅作为所有技能都CD时的填充技能)\nif BeeIsRun(\"烧尽\",\"target\") then BeeRun(\"烧尽\");return;end\n\n\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_RainOfFire",
				}, -- [11]
			},
			["Spells"] = {
				["List"] = {
					{
						["ExcludeTarget"] = {
						},
						["spell"] = {
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["CastingSpell"] = {
								},
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "616613-308777",
								["DelayChecked"] = false,
								["id"] = "11388143796-4279.643",
								["checked"] = false,
							}, -- [1]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["CastingSpell"] = {
								},
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "362276-598629",
								["DelayChecked"] = false,
								["id"] = "21388143796-4279.643",
								["checked"] = true,
							}, -- [2]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["CastingSpell"] = {
								},
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "166878-995377",
								["DelayChecked"] = false,
								["id"] = "31388143796-4279.643",
								["checked"] = false,
							}, -- [3]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "41388143796-4279.643",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "460806-269744",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [4]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["CastingSpell"] = {
								},
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "820691-575493",
								["DelayChecked"] = false,
								["id"] = "51388143796-4279.643",
								["checked"] = false,
							}, -- [5]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "61388143796-4279.643",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "558321-297296",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [6]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "71388143796-4279.643",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "490479-788489",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [7]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "81388143796-4279.643",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "523145-219438",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [8]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "91388143796-4279.643",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "278908-160364",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [9]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "101388143796-4279.643",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "513429-589156",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [10]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["CastingSpell"] = {
								},
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "524613-176451",
								["DelayChecked"] = false,
								["id"] = "111388143796-4279.643",
								["checked"] = true,
							}, -- [11]
						},
						["checked"] = true,
						["ApiDbf"] = {
						},
						["name"] = "毁灭术士基础包",
						["Mark"] = "377447-796786",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["ExcludedGroup"] = {
						},
						["Remarks"] = "",
					}, -- [1]
				},
				["NoStopCastingSpells"] = {
				},
			},
			["Remark"] = "",
			["Import"] = true,
			["Locale"] = "zhCN",
			["Config"] = {
			},
			["name"] = "毁灭术士基础包",
			["updata"] = {
			},
			["Mark"] = "722491-918133",
			["CollectionInf"] = {
				["Buff_Spell"] = {
				},
			},
			["Version"] = 502010,
			["checked"] = false,
		}, -- [2]
		{
			["AddOnMemory"] = {
				["max"] = 60,
				["inf"] = false,
				["on"] = false,
				["Leftfighting"] = false,
			},
			["index"] = 1,
			["Import"] = true,
			["Macro"] = {
				{
					["type"] = "script",
					["name"] = "骑乘状态",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11407662186-34822.688",
					["Macro"] = "--CTM 4.3 痛苦术士输出脚本 2011/12/25 by ATM\n--骑行状态，不施法\nif IsMounted(\"player\")==1  or BeePlayerBuffTime(\"喝水\")>1 or BeePlayerBuffTime(\"进食\")>1 or BeePlayerBuffTime(\"急救\")>1 then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Mount_Gryphon_01",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "优先技能",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "21407662186-34822.688",
					["Macro"] = "--插入技能\nif BeeCastSpellFast() then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Mount_GyrocoptorElite",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "优先保命",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "31407662186-34822.688",
					["Macro"] = "--自动优先保命部分\nif BeeUnitHealth(\"player\",\"%\")<40 and BeeIsRun(\"死亡缠绕\",\"target\") and BeeRange(\"target\")<40 then BeeRun(\"死亡缠绕\",\"target\");return;end\nif BeeUnitHealth(\"player\",\"%\")<40 and BeePower()>0 and BeeIsRun(\"灵魂燃烧\") and BeeIsRun(\"治疗石\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitHealth(\"player\",\"%\")<40 and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"治疗石\") then BeeRun(\"治疗石\");return;end\n--人类自利\nif BeeUnitRace(\"player\")==\"人类\" and BeeStringFind(\"惊魂尖叫,深度冻结,致盲,制裁之锤,死亡缠绕,变形术,精神控制,诱惑,冰冻陷阱,妖术,冰霜新星,沉睡\",BeeUnitBuffList()) and BeeIsRun(\"自利\") then BeeRun(\"自利\");return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "自动补BUFF",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "41407662186-34822.688",
					["Macro"] = "--自动补BUFF\nif not BeeStringFind(\"邪甲术\",BeeUnitBuffList(\"player\")) then BeeRun(\"邪甲术\");BeeUnitCastSpellDelay(\"邪甲术\",1);return;end\nif BeeUnitHealth(\"pet\")>1 and not UnitIsDeadOrGhost(\"pet\") and BeePlayerBuffTime(\"灵魂链接\")==-1 and BeeIsRun(\"灵魂链接\") then BeeRun(\"灵魂链接\");BeeUnitCastSpellDelay(\"灵魂链接\");return;end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_FelArmour",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "自动协助T",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "51407662186-34822.688",
					["Macro"] = "--自动协助焦点T\nif BeeUnitAffectingCombat()and (UnitName(\"target\")==nil or UnitIsDead(\"target\"))  and not UnitIsDead(\"focustarget\") and BeeUnitCanAttack(\"focustarget\") then BeeRun(\"/target [target=focustarget]\");end\n\n--免开羊，免打断自己的法术\nlocal MKY=\"忏悔,变形术,妖术,诱惑,冰冻陷阱\";\nif BeeStringFind(MKY,BeeUnitBuffList(\"target\")) or BeeUnitCastSpellName(\"player\")==\"烈焰风暴\" or BeeUnitCastSpellName(\"player\")==\"吸取灵魂\" then return;end",
					["Texture"] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSanctuary",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = "自动召BB",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "61407662186-34822.688",
					["Macro"] = "--战斗中瞬招恶魔守卫\nif BeeUnitAffectingCombat() and  BeePower()>0 and (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitAffectingCombat() and  (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"召唤地狱猎犬\") then BeeRun(\"召唤地狱猎犬\");return;end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonFelHunter",
				}, -- [6]
				{
					["type"] = "script",
					["name"] = "宝宝技能",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "71407662186-34822.688",
					["Macro"] = "local daduan=\"寒冰箭雨,星尘,腐臭蜂群,邪能烈焰,绝对服从,奥术波动,饥饿暗影,精神鞭笞,暗影钻削,暮光冲击波,甜美的摇篮曲,寒冰手,穿刺,冰霜之箭,时间漩涡\";\n--小鬼技能,灼烧驱魔,移除一个魔法\ngrouptype=\"\";if GetNumGroupMembers()>0 then grouptype=\"raid\" else grouptype=\"party\";end\nlocal n,qusan = BeeGroupCountScript('BeeRange(unit)<=40 and BeeIsRun(\"烧灼驱魔\",unit)',\"BeeUnitBuffInfo(unit,2,'Magic',0)>0 and not UnitIsDeadOrGhost(unit)\",grouptype) \nif BeeUnitAffectingCombat() and UnitName(\"pet\")==\"塔泰\" and n>0 and BeeIsRun(\"烧灼驱魔\",qusan) then BeeRun(\"烧灼驱魔\",qusan);return;end\n--地狱猎犬技能.吞噬魔法(当前目标和焦点目标),打断施法\nif BeeUnitAffectingCombat() and UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and BeeUnitBuffInfo(\"target\",2,\"Magic\",1)>=1 and BeeIsRun(\"吞噬魔法\",\"target\") then BeeRun(\"吞噬魔法\",\"target\") return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and  BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\")) and BeeIsRun(\"法术封锁\",\"target\")  then BeeRun(\"法术封锁\",\"target\");return;end\n--恶魔守卫技能，自动打断技能\nif UnitName(\"pet\")==\"尼尔利克\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and  BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\")) and BeeIsRun(\"巨斧投掷\",\"target\")  then BeeRun(\"巨斧投掷\",\"target\");return;end\n\n--胖子 卡尔弗格\n--女人 扎利亚娜\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonSuccubus",
				}, -- [7]
				{
					["type"] = "script",
					["name"] = "自动开饰品",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "81407662186-34822.688",
					["Macro"] = "--自动开饰品\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',10))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',10)))==0 then BeeRun(\"/use 10\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',13))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',13)))==0 then BeeRun(\"/use 13\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  return end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_Teleport",
				}, -- [8]
				{
					["type"] = "script",
					["name"] = "生命分流",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "91407662186-34822.688",
					["Macro"] = "--生命分流\nif BeeUnitAffectingCombat() and BeeUnitMana(\"player\",\"%\",0)<40 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_BurningSpirit",
				}, -- [9]
				{
					["type"] = "script",
					["name"] = "痛苦单体输出",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "101407662186-34822.688",
					["Macro"] = "--特殊情况处理\n--暮光审判\nif (BeeUnitCastSpellTime(\"target\")<1.5 and BeeUnitCastSpellName(\"target\")==\"暮光审判\") or (BeeUnitBuff(\"黯淡之光\",\"player\",2,0)<1.5 and BeeStringFind(\"黯淡之光\" ,BeeUnitBuffList(\"player\")))then BeeRun(\"/click ExtraActionButton1\");end\n--套装数量判断\nT13=select(2,string.gsub(GetInventoryItemLink('player',1)..GetInventoryItemLink('player',3)..GetInventoryItemLink('player',5)..GetInventoryItemLink('player',7)..GetInventoryItemLink('player',10),\"无面裹布\",\"无面裹布\"))\n--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n\n--移动时候输出(瞬发dot>夜幕时的暗箭>生命分流>魔化烈焰)\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeePlayerBuffTime(\"夜幕\")>1 and BeeIsRun(\"暗影箭\",\"target\") then BeeRun(\"暗影箭\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--灵魂燃烧 4T13\nif BeeUnitAffectingCombat() and T13>=4 and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\n--恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and  BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\"); return;end\n--腐蚀\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n--痛苦无常\nif BeeTargetDeBuffTime(\"痛苦无常\") <2 and  BeeIsRun(\"痛苦无常\",\"target\") then BeeRun(\"痛苦无常\");BeeUnitCastSpellDelay(\"痛苦无常\",1);return;end\n--末日灾祸\nif BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9)return;end\n--鬼影缠身\nif BeeIsRun(\"鬼影缠身\",\"target\") then BeeRun(\"鬼影缠身\");return;end\n--吸取灵魂 25%以下\nif BeeUnitHealth(\"target\",\"%\",0)<=25 and BeeIsRun(\"吸取灵魂\",\"target\") and not BeeUnitCastSpellName(\"player\") then BeeRun(\"吸取灵魂\");return;end\n--暗影烈焰 近战位\nif BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<8  then BeeRun(\"暗影烈焰\");return;end\n--暗影箭\nif BeeIsRun(\"暗影箭\",\"target\") then BeeRun(\"暗影箭\");return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_Requiem",
				}, -- [10]
				{
					["type"] = "script",
					["name"] = "痛苦AOE输出",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "111407662186-34822.688",
					["Macro"] = "--特殊情况处理\n--暮光审判\nif (BeeUnitCastSpellTime(\"target\")<1.5 and BeeUnitCastSpellName(\"target\")==\"暮光审判\") or (BeeUnitBuff(\"黯淡之光\",\"player\",2,0)<1.5 and BeeStringFind(\"黯淡之光\" ,BeeUnitBuffList(\"player\")))then BeeRun(\"/click ExtraActionButton1\");end\n--套装数量判断\nT13=select(2,string.gsub(GetInventoryItemLink('player',1)..GetInventoryItemLink('player',3)..GetInventoryItemLink('player',5)..GetInventoryItemLink('player',7)..GetInventoryItemLink('player',10),\"无面裹布\",\"无面裹布\"))\n--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n\n--移动时候输出(瞬发dot>夜幕时的暗箭>生命分流>魔化烈焰)\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeePlayerBuffTime(\"夜幕\")>1 and BeeIsRun(\"暗影箭\",\"target\") then BeeRun(\"暗影箭\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--痛苦术士输出脚本\n--灵魂燃烧 4T13\nif BeeUnitAffectingCombat() and T13>=4 and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\n--恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and  BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\"); return;end\n--[4]AOE输出\nif BeeIsRun(\"腐蚀之种\",\"target\") and BeeTargetDeBuffTime(\"腐蚀之种\")<0 then BeeRun(\"腐蚀之种\",\"target\");return;end\n--[4]腐蚀术\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");return;end\n--[5]痛苦无常\nif BeeTargetDeBuffTime(\"痛苦无常\") <2 and  BeeIsRun(\"痛苦无常\",\"target\") then BeeRun(\"痛苦无常\");BeeUnitCastSpellDelay(\"痛苦无常\",1);return;end\n--[3]末日灾厄\nif BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\");return;end\n--[7]暗影烈焰\nif BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<8  then BeeRun(\"暗影烈焰\");return;end\n--[6]吸取灵魂(目标血量25%以下)\nif BeeUnitHealth(\"target\",\"%\",0)<=25 then \n    if BeeIsRun(\"吸取灵魂\",\"target\") and not BeeUnitCastSpellName(\"player\") then BeeRun(\"吸取灵魂\");return;end\nelse\n    if BeeIsRun(\"暗影箭\",\"target\") then BeeRun(\"暗影箭\");return;end\nend\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_SeedOfDestruction",
				}, -- [11]
			},
			["Spells"] = {
				["List"] = {
					{
						["ExcludeTarget"] = {
						},
						["spell"] = {
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["CastingSpell"] = {
								},
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "103329-838729",
								["DelayChecked"] = false,
								["id"] = "11407662186-34822.688",
								["checked"] = false,
							}, -- [1]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "21407662186-34822.688",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "588780-745487",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [2]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "31407662186-34822.688",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "729102-367280",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [3]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["CastingSpell"] = {
								},
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "739480-836288",
								["DelayChecked"] = false,
								["id"] = "41407662186-34822.688",
								["checked"] = true,
							}, -- [4]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "51407662186-34822.688",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "546381-389727",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [5]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "61407662186-34822.688",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "346313-894752",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [6]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "71407662186-34822.688",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "457763-528013",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [7]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "81407662186-34822.688",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "431328-464301",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [8]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "91407662186-34822.688",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "437152-408057",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [9]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "101407662186-34822.688",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "483956-231654",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [10]
							{
								["TargetSubgroup"] = -1,
								["spellId"] = 0,
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["Key"] = {
									["KeySelect"] = "auto",
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["id"] = "111407662186-34822.688",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "954720-902121",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [11]
						},
						["checked"] = true,
						["ApiDbf"] = {
						},
						["name"] = "痛苦术士基础包",
						["Mark"] = "631175-276690",
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["ExcludedGroup"] = {
						},
						["Remarks"] = "",
					}, -- [1]
				},
				["NoStopCastingSpells"] = {
				},
			},
			["Remark"] = "",
			["Unit"] = {
				["ExcludeTarget"] = {
				},
				["RaidListClass"] = {
					["武僧"] = {
						["Count"] = 1,
						["englishClass"] = "MONK",
					},
					["圣骑士"] = {
						["Count"] = 2,
						["englishClass"] = "PALADIN",
					},
					["潜行者"] = {
						["Count"] = 2,
						["englishClass"] = "ROGUE",
					},
					["术士"] = {
						["Count"] = 4,
						["englishClass"] = "WARLOCK",
					},
					["德鲁伊"] = {
						["Count"] = 1,
						["englishClass"] = "DRUID",
					},
					["萨满祭司"] = {
						["Count"] = 5,
						["englishClass"] = "SHAMAN",
					},
					["死亡骑士"] = {
						["Count"] = 2,
						["englishClass"] = "DEATHKNIGHT",
					},
					["战士"] = {
						["Count"] = 3,
						["englishClass"] = "WARRIOR",
					},
					["法师"] = {
						["Count"] = 1,
						["englishClass"] = "MAGE",
					},
					["猎人"] = {
						["Count"] = 4,
						["englishClass"] = "HUNTER",
					},
					["牧师"] = {
						["Count"] = 2,
						["englishClass"] = "PRIEST",
					},
				},
				["IsInfList"] = {
				},
				["TeamNumber"] = 4,
				["CustomizeIndex"] = 0,
				["IsInfListSet"] = {
				},
				["TeamCount"] = {
					5, -- [1]
					5, -- [2]
					5, -- [3]
					5, -- [4]
					5, -- [5]
					2, -- [6]
				},
				["IsInfListIndex"] = {
				},
				["CustomMT"] = {
					["checked"] = false,
					["list"] = {
					},
				},
				["ExcludedGroup"] = {
				},
				["RaidList"] = {
					["我爱雅妮-燃烧之刃"] = {
						["subgroup"] = 6,
						["name"] = "我爱雅妮-燃烧之刃",
						["raidn"] = 26,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid26",
						["unit"] = "我爱雅妮-燃烧之刃",
					},
					["maintank2"] = {
						["unit"] = "maintank2",
						["name"] = "MT2",
						["raidn"] = -11,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 12,
					},
					["尕贼娃子"] = {
						["subgroup"] = 1,
						["name"] = "尕贼娃子",
						["raidn"] = 4,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid4",
						["unit"] = "尕贼娃子",
					},
					["朕射你無罪的"] = {
						["subgroup"] = 3,
						["name"] = "朕射你無罪的",
						["raidn"] = 13,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid13",
						["unit"] = "朕射你無罪的",
					},
					["萨之牛"] = {
						["subgroup"] = 5,
						["name"] = "萨之牛",
						["raidn"] = 23,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid23",
						["unit"] = "萨之牛",
					},
					["十三张"] = {
						["subgroup"] = 3,
						["name"] = "十三张",
						["raidn"] = 1,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid1",
						["unit"] = "十三张",
					},
					["maintank7"] = {
						["unit"] = "maintank7",
						["name"] = "MT7",
						["raidn"] = -16,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 17,
					},
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["乔治克撸尼-末日祷告祭坛"] = {
						["subgroup"] = 4,
						["name"] = "乔治克撸尼-末日祷告祭坛",
						["raidn"] = 16,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid16",
						["unit"] = "乔治克撸尼-末日祷告祭坛",
					},
					["铁兵麒麟"] = {
						["subgroup"] = 4,
						["name"] = "铁兵麒麟",
						["raidn"] = 20,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid20",
						["unit"] = "铁兵麒麟",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
					},
					["boss4"] = {
						["name"] = "Boss4",
						["raidn"] = -24,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["player"] = {
						["name"] = "自己",
						["raidn"] = -8,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "player",
					},
					["pet"] = {
						["name"] = "宠物",
						["raidn"] = -19,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pet",
					},
					["黄刃"] = {
						["subgroup"] = 2,
						["name"] = "黄刃",
						["raidn"] = 7,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid7",
						["unit"] = "黄刃",
					},
					["桑树颠"] = {
						["subgroup"] = 4,
						["name"] = "桑树颠",
						["raidn"] = 19,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid19",
						["unit"] = "桑树颠",
					},
					["boss1"] = {
						["name"] = "Boss1",
						["raidn"] = -21,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["target"] = {
						["name"] = "当前目标",
						["raidn"] = -7,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "target",
					},
					["maintank3"] = {
						["unit"] = "maintank3",
						["name"] = "MT3",
						["raidn"] = -12,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 13,
					},
					["无关風月"] = {
						["subgroup"] = 2,
						["name"] = "无关風月",
						["raidn"] = 10,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid10",
						["unit"] = "无关風月",
					},
					["我不奶你"] = {
						["subgroup"] = 3,
						["name"] = "我不奶你",
						["raidn"] = 14,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid14",
						["unit"] = "我不奶你",
					},
					["老牛宝宝"] = {
						["subgroup"] = 2,
						["name"] = "老牛宝宝",
						["raidn"] = 11,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid11",
						["unit"] = "老牛宝宝",
					},
					["targettarget"] = {
						["name"] = "当前目标的目标",
						["raidn"] = -6,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "targettarget",
					},
					["maintank6"] = {
						["unit"] = "maintank6",
						["name"] = "MT6",
						["raidn"] = -15,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 16,
					},
					["迪雅儿"] = {
						["subgroup"] = 4,
						["name"] = "迪雅儿",
						["raidn"] = 18,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid18",
						["unit"] = "迪雅儿",
					},
					["诗晴-纳沙塔尔"] = {
						["subgroup"] = 5,
						["name"] = "诗晴-纳沙塔尔",
						["raidn"] = 24,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid24",
						["unit"] = "诗晴-纳沙塔尔",
					},
					["nogoal"] = {
						["unit"] = "nogoal",
						["name"] = "无目标",
						["raidn"] = -9,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 2,
					},
					["maintank5"] = {
						["unit"] = "maintank5",
						["name"] = "MT5",
						["raidn"] = -14,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 15,
					},
					["pettarget"] = {
						["name"] = "宠物的目标",
						["raidn"] = -18,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pettarget",
					},
					["加尔鲁什"] = {
						["subgroup"] = 1,
						["name"] = "加尔鲁什",
						["raidn"] = 2,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid2",
						["unit"] = "加尔鲁什",
					},
					["focus"] = {
						["name"] = "焦点目标",
						["raidn"] = -5,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focus",
					},
					["maintank8"] = {
						["unit"] = "maintank8",
						["name"] = "MT8",
						["raidn"] = -17,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 18,
					},
					["vehicle"] = {
						["name"] = "你控制的车辆",
						["raidn"] = -20,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "vehicle",
					},
					["maintank4"] = {
						["unit"] = "maintank4",
						["name"] = "MT4",
						["raidn"] = -13,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 14,
					},
					["focustarget"] = {
						["name"] = "焦点目标的目标",
						["raidn"] = -4,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focustarget",
					},
					["爱心八戒"] = {
						["subgroup"] = 2,
						["name"] = "爱心八戒",
						["raidn"] = 8,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid8",
						["unit"] = "爱心八戒",
					},
					["老牛啃青草"] = {
						["subgroup"] = 6,
						["name"] = "老牛啃青草",
						["raidn"] = 27,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid27",
						["unit"] = "老牛啃青草",
					},
					["FireHasBeenSet"] = {
						["unit"] = "FireHasBeenSet",
						["name"] = "被集火目标",
						["raidn"] = -3,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 1,
					},
					["赞达拉使者"] = {
						["subgroup"] = 4,
						["name"] = "赞达拉使者",
						["raidn"] = 17,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid17",
						["unit"] = "赞达拉使者",
					},
					["狂暴战丨怒怒"] = {
						["subgroup"] = 3,
						["name"] = "狂暴战丨怒怒",
						["raidn"] = 15,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid15",
						["unit"] = "狂暴战丨怒怒",
					},
					["风拉族神"] = {
						["subgroup"] = 5,
						["name"] = "风拉族神",
						["raidn"] = 25,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid25",
						["unit"] = "风拉族神",
					},
					["炎耀天-纳沙塔尔"] = {
						["subgroup"] = 1,
						["name"] = "炎耀天-纳沙塔尔",
						["raidn"] = 3,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid3",
						["unit"] = "炎耀天-纳沙塔尔",
					},
					["维也納的悲傷"] = {
						["subgroup"] = 2,
						["name"] = "维也納的悲傷",
						["raidn"] = 9,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid9",
						["unit"] = "维也納的悲傷",
					},
					["mouseovertarget"] = {
						["name"] = "鼠标目标的目标",
						["raidn"] = -1,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseovertarget",
					},
					["哈德门烟头-末日祷告祭坛"] = {
						["subgroup"] = 5,
						["name"] = "哈德门烟头-末日祷告祭坛",
						["raidn"] = 22,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid22",
						["unit"] = "哈德门烟头-末日祷告祭坛",
					},
					["咯咯哆"] = {
						["subgroup"] = 1,
						["name"] = "咯咯哆",
						["raidn"] = 5,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid5",
						["unit"] = "咯咯哆",
					},
					["boss3"] = {
						["name"] = "Boss3",
						["raidn"] = -23,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["maintank1"] = {
						["unit"] = "maintank1",
						["name"] = "MT1",
						["raidn"] = -10,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 11,
					},
					["芽米球状闪电"] = {
						["subgroup"] = 1,
						["name"] = "芽米球状闪电",
						["raidn"] = 6,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid6",
						["unit"] = "芽米球状闪电",
					},
					["雪灬舞"] = {
						["subgroup"] = 5,
						["name"] = "雪灬舞",
						["raidn"] = 21,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid21",
						["unit"] = "雪灬舞",
					},
					["巴黎丿欧莱雅"] = {
						["subgroup"] = 3,
						["name"] = "巴黎丿欧莱雅",
						["raidn"] = 12,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid12",
						["unit"] = "巴黎丿欧莱雅",
					},
				},
				["MTList"] = {
					["TypeChecked"] = 1,
					["Custom"] = {
						"MT1", -- [1]
						"MT2", -- [2]
						"MT3", -- [3]
						"MT4", -- [4]
						"MT5", -- [5]
						"MT6", -- [6]
						"MT7", -- [7]
						"MT8", -- [8]
					},
					["Default"] = {
						"炎耀天-纳沙塔尔", -- [1]
						"芽米球状闪电", -- [2]
						"维也納的悲傷", -- [3]
					},
				},
			},
			["Locale"] = "zhCN",
			["Config"] = {
			},
			["name"] = "痛苦术士基础包",
			["updata"] = {
			},
			["Mark"] = "957723-487315",
			["CollectionInf"] = {
				["Buff_Spell"] = {
				},
			},
			["Version"] = 502010,
			["checked"] = false,
		}, -- [3]
	},
	["MenusWinDows"] = true,
	["HelpNavigation"] = true,
	["SetSounds"] = {
	},
}

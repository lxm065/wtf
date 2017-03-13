
SuperTreatmentDBF = {
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
			["id"] = "11413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--CTM 4.3.2 毁灭术士输出脚本 2012/2/26 by ATM\n--骑行状态，不施法\nif IsMounted(\"player\")==1  or BeePlayerBuffTime(\"喝水\")>1 or BeePlayerBuffTime(\"进食\")>1 or BeePlayerBuffTime(\"急救\")>1 then return;end",
			["Texture"] = "Interface\\Icons\\Ability_Mount_Gryphon_01",
		}, -- [1]
		{
			["type"] = "script",
			["name"] = "优先技能",
			["id"] = "21413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--插入技能\nif BeeCastSpellFast() then return;end",
			["Texture"] = "Interface\\Icons\\Ability_Mount_GyrocoptorElite",
		}, -- [2]
		{
			["type"] = "script",
			["name"] = "优先保命",
			["id"] = "31413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动优先保命部分\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeeIsRun(\"死亡缠绕\",\"target\") and BeeRange(\"target\")<40 then BeeRun(\"死亡缠绕\",\"target\");return;end\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeePower()>0 and BeeIsRun(\"灵魂燃烧\") and BeeIsRun(\"治疗石\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"治疗石\") then BeeRun(\"治疗石\");return;end\n--人类自利\nif BeeUnitRace(\"player\")==\"人类\" and BeeStringFind(\"惊魂尖叫,深度冻结,致盲,制裁之锤,死亡缠绕,变形术,精神控制,诱惑,冰冻陷阱,妖术,冰霜新星,沉睡\",BeeUnitBuffList()) and BeeIsRun(\"自利\") then BeeRun(\"自利\");return;end\n",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
		}, -- [3]
		{
			["type"] = "script",
			["name"] = "自动补BUFF",
			["id"] = "41413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动补BUFF\nif not BeeStringFind(\"邪甲术\",BeeUnitBuffList(\"player\")) then BeeRun(\"邪甲术\");BeeUnitCastSpellDelay(\"邪甲术\",1);return;end\nif BeeUnitHealth(\"pet\")>1 and not UnitIsDeadOrGhost(\"pet\") and BeePlayerBuffTime(\"灵魂链接\")==-1 and BeeIsRun(\"灵魂链接\") then BeeRun(\"灵魂链接\");BeeUnitCastSpellDelay(\"灵魂链接\");return;end",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_FelArmour",
		}, -- [4]
		{
			["type"] = "script",
			["name"] = "自动协助T",
			["id"] = "51413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动协助焦点T\nif BeeUnitAffectingCombat() and (UnitName(\"target\")==nil or UnitIsDead(\"target\"))  and not UnitIsDead(\"focustarget\") and BeeUnitCanAttack(\"focustarget\") then BeeRun(\"/target [target=focustarget]\");end\n\n--免开羊，免打断自己的法术\nlocal MKY=\"忏悔,变形术,妖术,诱惑,冰冻陷阱\";\nif BeeStringFind(MKY,BeeUnitBuffList(\"target\")) or BeeUnitCastSpellName(\"player\")==\"烈焰风暴\" or BeeUnitCastSpellName(\"player\")==\"吸取灵魂\" then return;end",
			["Texture"] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSanctuary",
		}, -- [5]
		{
			["type"] = "script",
			["name"] = "自动召BB",
			["id"] = "61413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--战斗中瞬招小鬼\nif BeeUnitAffectingCombat() and  BeePower()>0 and (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitAffectingCombat() and  (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"召唤小鬼\") then BeeRun(\"召唤小鬼\");return;end",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonFelHunter",
		}, -- [6]
		{
			["type"] = "script",
			["name"] = "宝宝技能",
			["id"] = "71413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "local spelljd, _, _, _, _, _, _, ddjd = UnitCastingInfo(\"focustarget\")\nlocal spellzj, _, _, _, _, _, _, ddzj = UnitCastingInfo(\"target\")\n--小鬼技能,灼烧驱魔,移除一个魔法\ngrouptype=\"\";if GetNumGroupMembers()>0 then grouptype=\"raid\" else grouptype=\"party\";end\nlocal n,qusan = BeeGroupCountScript('BeeRange(unit)<=40 and BeeIsRun(\"烧灼驱魔\",unit)',\"BeeUnitBuffInfo(unit,2,'Magic',0)>0 and not UnitIsDeadOrGhost(unit)\",grouptype) \nif UnitName(\"pet\")==\"塔泰\" and n>0 and BeeIsRun(\"烧灼驱魔\",qusan) then BeeRun(\"烧灼驱魔\",qusan);return;end\n--地狱猎犬技能.吞噬魔法(当前目标和焦点目标),打断施法\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and BeeUnitBuffInfo(\"target\",2,\"Magic\",1)>=1 and BeeIsRun(\"吞噬魔法\",\"target\") then BeeRun(\"吞噬魔法\",\"target\") return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and BeeUnitBuffInfo(\"focustarget\",2,\"Magic\",1)>=1 and BeeIsRun(\"吞噬魔法\",\"focustarget\") then BeeRun(\"吞噬魔法\",\"focustarget\") return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddzj == 0 and BeeIsRun(\"法术封锁\",\"target\") then BeeRun(\"法术封锁\",\"target\");return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddjd == 0 and BeeIsRun(\"法术封锁\",\"focustarget\") then BeeRun(\"法术封锁\",\"focustarget\");return;end\n--恶魔守卫技能，自动打断技能\nif UnitName(\"pet\")==\"尼尔利克\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddzj == 0 and BeeIsRun(\"巨斧投掷\") then BeeRun(\"巨斧投掷\",\"target\");return;end \nif UnitName(\"pet\")==\"尼尔利克\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddjd == 0 and BeeIsRun(\"巨斧投掷\",\"focustarget\") then BeeRun(\"巨斧投掷\",\"focustarget\");return;end\n--胖子 卡尔弗格\n--女人 扎利亚娜\n",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonSuccubus",
		}, -- [7]
		{
			["type"] = "script",
			["name"] = "自动开饰品",
			["id"] = "81413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动开饰品\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',10))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',10)))==0 then BeeRun(\"/use 10\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',13))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',13)))==0 then BeeRun(\"/use 13\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  return end",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_Teleport",
		}, -- [8]
		{
			["type"] = "script",
			["name"] = "生命分流",
			["id"] = "91413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--生命分流\nif BeeUnitAffectingCombat() and BeeUnitMana(\"player\",\"%\",0)<40 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_BurningSpirit",
		}, -- [9]
		{
			["type"] = "script",
			["name"] = "毁灭单体输出",
			["id"] = "101413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--特殊情况处理\n--暮光审判\nif (BeeUnitCastSpellTime(\"target\")<1.5 and BeeUnitCastSpellName(\"target\")==\"暮光审判\") or (BeeUnitBuff(\"黯淡之光\",\"player\",2,0)<1.5 and BeeStringFind(\"黯淡之光\" ,BeeUnitBuffList(\"player\")))then BeeRun(\"/click ExtraActionButton1\");end\n--套装数量判断\nT13=select(2,string.gsub(GetInventoryItemLink('player',1)..GetInventoryItemLink('player',3)..GetInventoryItemLink('player',5)..GetInventoryItemLink('player',7)..GetInventoryItemLink('player',10),\"无面裹布\",\"无面裹布\"))\n--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n--移动时候输出(移動輸出時,優先級是燃燒>暗影灼燒>強力小鬼下的靈魂火>分流>魔化烈焰. )\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n    if BeeIsRun(\"暗影灼烧\",\"target\") then BeeRun(\"暗影灼烧\");return;end\n    if BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--灵魂火(强化灵魂之火)\nif BeePlayerBuffTime(\"强化灵魂之火\")<4 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");BeeUnitCastSpellDelay(\"灵魂之火\",3);return;end\n--灵魂燃烧(4t13)\nif BeeUnitAffectingCombat() and T13>=4 and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\n--恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\");return;end\n--献祭\nif BeeTargetDeBuffTime(\"献祭\")<3 and BeeIsRun(\"献祭\",\"target\") then BeeRun(\"献祭\",\"target\");BeeUnitCastSpellDelay(\"献祭\",0.9);return;end\n--燃烧\nif BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n--末日灾祸(目标活过15秒)\nif BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\nif BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n--腐蚀术\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n--暗影灼烧(目标20%HP以下)\nif BeeUnitHealth(\"target\",\"%\",0)<=20 and  BeeIsRun(\"暗影灼烧\",\"target\")  then BeeRun(\"暗影灼烧\");return;end\n--暗影烈焰(近战范围)\nif BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<9 then BeeRun(\"暗影烈焰\");return;end\n--瞬发灵魂火\nif BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n--混乱箭(不在急速效果下)\nif BeeIsRun(\"混乱之箭\",\"target\") then BeeRun(\"混乱之箭\"); return;end\n--烧尽\nif BeeIsRun(\"烧尽\",\"target\") then BeeRun(\"烧尽\");return;end\n",
			["Texture"] = "Interface\\Icons\\Spell_Fire_FireBolt",
		}, -- [10]
		{
			["type"] = "script",
			["name"] = "毁灭AOE输出",
			["id"] = "111413100689-5967.981",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n\n--移动时候输出(移動輸出時,優先級是燃燒>暗影灼燒>強力小鬼下的靈魂火>分流>魔化烈焰. )\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n    if BeeIsRun(\"暗影灼烧\",\"target\") then BeeRun(\"暗影灼烧\");return;end\n    if BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--毁灭输出\n--[1]强化灵魂之火(保持这个BUFF最重要)\nif (BeePlayerBuffTime(\"强化灵魂之火\")<3 or BeePlayerBuffTime(\"小鬼增效\")>1) and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");BeeUnitCastSpellDelay(\"灵魂之火\",3);return;end\n--[2]腐蚀术\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");return;end\n--[3]末日灾厄\nif BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\nif BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n--[4]暗影烈焰\nif BeeUnitAffectingCombat() and BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<9 then BeeRun(\"暗影烈焰\");return;end\n--[5]恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\");return;end\n--AOE输出\nif BeeIsRun(\"腐蚀之种\",\"target\") and BeeTargetDeBuffTime(\"腐蚀之种\")<0 then BeeRun(\"腐蚀之种\",\"target\");return;end\n--[6]献祭\nif BeeTargetDeBuffTime(\"献祭\")<2 and BeeIsRun(\"献祭\",\"target\") then BeeRun(\"献祭\");BeeUnitCastSpellDelay(\"献祭\",0.9);return;end\n--[7]燃烧\nif BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n--[8]混乱之箭\nif BeeIsRun(\"混乱之箭\",\"target\") then BeeRun(\"混乱之箭\"); return;end\n--[9]烧尽(仅作为所有技能都CD时的填充技能)\nif BeeIsRun(\"烧尽\",\"target\") then BeeRun(\"烧尽\");return;end\n\n\n",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_RainOfFire",
		}, -- [11]
	},
	["Spells"] = {
		["List"] = {
			{
				["ExcludedGroup"] = {
				},
				["spell"] = {
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "11413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [1]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "21413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [2]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "31413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [3]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "41413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [4]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "51413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [5]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "61413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [6]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "71413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [7]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "81413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [8]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "91413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [9]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "101413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [10]
					{
						["TargetSubgroup"] = -1,
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "111413100689-5967.981",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["PropertiesSetChecked"] = 4,
						["subgroup"] = -3,
						["name"] = "",
						["checked"] = true,
						["Target"] = "无目标",
						["DelayValue"] = 0,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["DelayChecked"] = false,
					}, -- [11]
				},
				["checked"] = true,
				["ApiDbf"] = {
				},
				["name"] = "毁灭术士基础包",
				["Remarks"] = "",
				["Key"] = {
					["KeySelect"] = "auto",
				},
				["ExcludeTarget"] = {
				},
				["Mark"] = "772842-305375",
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
			["术士"] = {
				["Count"] = 1,
				["englishClass"] = "WARLOCK",
			},
			["法师"] = {
				["Count"] = 1,
				["englishClass"] = "MAGE",
			},
		},
		["IsInfList"] = {
		},
		["TeamNumber"] = 0,
		["CustomizeIndex"] = 0,
		["IsInfListSet"] = {
		},
		["TeamCount"] = {
			[0] = 2,
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
			["maintank1"] = {
				["cuid"] = 11,
				["name"] = "MT1",
				["raidn"] = -10,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank1",
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
			["最初的悠悠-安东尼达斯"] = {
				["subgroup"] = 0,
				["name"] = "最初的悠悠-安东尼达斯",
				["raidn"] = 1,
				["englishClass"] = "MAGE",
				["class"] = "法师",
				["unitid"] = "party1",
				["unit"] = "最初的悠悠-安东尼达斯",
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
				["cuid"] = 15,
				["name"] = "MT5",
				["raidn"] = -14,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank5",
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
			["mouseovertarget"] = {
				["name"] = "鼠标目标的目标",
				["raidn"] = -1,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "mouseovertarget",
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
				["cuid"] = 18,
				["name"] = "MT8",
				["raidn"] = -17,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank8",
			},
			["vehicle"] = {
				["name"] = "你控制的车辆",
				["raidn"] = -20,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "vehicle",
			},
			["boss2"] = {
				["name"] = "Boss2",
				["raidn"] = -22,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "boss1",
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
				["class"] = "",
				["englishClass"] = "",
				["subgroup"] = -1,
				["cuid"] = 1,
			},
			["悠悠龟"] = {
				["subgroup"] = 0,
				["name"] = "悠悠龟",
				["raidn"] = 1,
				["englishClass"] = "WARLOCK",
				["class"] = "术士",
				["unitid"] = "player",
				["unit"] = "悠悠龟",
			},
			["pettarget"] = {
				["name"] = "宠物的目标",
				["raidn"] = -18,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "pettarget",
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
			["boss3"] = {
				["name"] = "Boss3",
				["raidn"] = -23,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "boss1",
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
				["cuid"] = 13,
				["name"] = "MT3",
				["raidn"] = -12,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank3",
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
			},
		},
	},
	["Locale"] = "zhCN",
	["Config"] = {
	},
	["name"] = "毁灭术士基础包",
	["updata"] = {
	},
	["Mark"] = "733185-174340",
	["CollectionInf"] = {
		["Buff_Spell"] = {
		},
	},
	["Version"] = 502010,
	["checked"] = false,
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
			["checked"] = false,
			["Macro"] = {
			},
			["Spells"] = {
				["NoStopCastingSpells"] = {
				},
				["List"] = {
				},
			},
			["Remark"] = "",
			["Unit"] = {
				["ExcludedGroup"] = {
				},
				["RaidListClass"] = {
					["猎人"] = {
						["Count"] = 1,
						["englishClass"] = "HUNTER",
					},
					["战士"] = {
						["Count"] = 1,
						["englishClass"] = "WARRIOR",
					},
					["圣骑士"] = {
						["Count"] = 1,
						["englishClass"] = "PALADIN",
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
				["IsInfListSet"] = {
				},
				["TeamCount"] = {
					[0] = 5,
				},
				["IsInfListIndex"] = {
				},
				["CustomMT"] = {
					["checked"] = false,
					["list"] = {
					},
				},
				["ExcludeTarget"] = {
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
					["诺克汗-影之哀伤"] = {
						["name"] = "诺克汗-影之哀伤",
						["subgroup"] = 0,
						["raidn"] = 3,
						["englishClass"] = "HUNTER",
						["class"] = "猎人",
						["unitid"] = "party3",
						["unit"] = "诺克汗-影之哀伤",
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
					["vehicle"] = {
						["name"] = "你控制的车辆",
						["raidn"] = -20,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "vehicle",
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
					["清新绿箭-冰风岗"] = {
						["name"] = "清新绿箭-冰风岗",
						["subgroup"] = 0,
						["raidn"] = 4,
						["englishClass"] = "PALADIN",
						["class"] = "圣骑士",
						["unitid"] = "party4",
						["unit"] = "清新绿箭-冰风岗",
					},
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["天痕灬斩月-符文图腾"] = {
						["name"] = "天痕灬斩月-符文图腾",
						["subgroup"] = 0,
						["raidn"] = 1,
						["englishClass"] = "DRUID",
						["class"] = "德鲁伊",
						["unitid"] = "party1",
						["unit"] = "天痕灬斩月-符文图腾",
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
					["最爱我老婆-冰霜之刃"] = {
						["name"] = "最爱我老婆-冰霜之刃",
						["subgroup"] = 0,
						["raidn"] = 2,
						["englishClass"] = "WARRIOR",
						["class"] = "战士",
						["unitid"] = "party2",
						["unit"] = "最爱我老婆-冰霜之刃",
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
					["悠悠龟"] = {
						["name"] = "悠悠龟",
						["subgroup"] = 0,
						["raidn"] = 1,
						["englishClass"] = "WARLOCK",
						["class"] = "术士",
						["unitid"] = "player",
						["unit"] = "悠悠龟",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
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
					["boss4"] = {
						["name"] = "Boss4",
						["raidn"] = -24,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["boss3"] = {
						["name"] = "Boss3",
						["raidn"] = -23,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["targettarget"] = {
						["name"] = "当前目标的目标",
						["raidn"] = -6,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "targettarget",
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
					["maintank8"] = {
						["cuid"] = 18,
						["name"] = "MT8",
						["raidn"] = -17,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "maintank8",
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
						"最爱我老婆-冰霜之刃", -- [1]
					},
				},
			},
			["Locale"] = "zhCN",
			["Config"] = {
				["IndexTbl"] = 0,
			},
			["name"] = "[无名]",
			["Version"] = 502010,
			["Mark"] = "278293-687542",
			["CollectionInf"] = {
				["Buff_Spell"] = {
					["checked"] = false,
				},
			},
			["updata"] = {
			},
			["Import"] = true,
		}, -- [1]
		{
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
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11413100689-5967.981",
					["Macro"] = "--CTM 4.3.2 毁灭术士输出脚本 2012/2/26 by ATM\n--骑行状态，不施法\nif IsMounted(\"player\")==1  or BeePlayerBuffTime(\"喝水\")>1 or BeePlayerBuffTime(\"进食\")>1 or BeePlayerBuffTime(\"急救\")>1 then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Mount_Gryphon_01",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "优先技能",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "21413100689-5967.981",
					["Macro"] = "--插入技能\nif BeeCastSpellFast() then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Mount_GyrocoptorElite",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "优先保命",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "31413100689-5967.981",
					["Macro"] = "--自动优先保命部分\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeeIsRun(\"死亡缠绕\",\"target\") and BeeRange(\"target\")<40 then BeeRun(\"死亡缠绕\",\"target\");return;end\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeePower()>0 and BeeIsRun(\"灵魂燃烧\") and BeeIsRun(\"治疗石\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"player\",\"%\")<40 and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"治疗石\") then BeeRun(\"治疗石\");return;end\n--人类自利\nif BeeUnitRace(\"player\")==\"人类\" and BeeStringFind(\"惊魂尖叫,深度冻结,致盲,制裁之锤,死亡缠绕,变形术,精神控制,诱惑,冰冻陷阱,妖术,冰霜新星,沉睡\",BeeUnitBuffList()) and BeeIsRun(\"自利\") then BeeRun(\"自利\");return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_DeathCoil",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "自动补BUFF",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "41413100689-5967.981",
					["Macro"] = "--自动补BUFF\nif not BeeStringFind(\"邪甲术\",BeeUnitBuffList(\"player\")) then BeeRun(\"邪甲术\");BeeUnitCastSpellDelay(\"邪甲术\",1);return;end\nif BeeUnitHealth(\"pet\")>1 and not UnitIsDeadOrGhost(\"pet\") and BeePlayerBuffTime(\"灵魂链接\")==-1 and BeeIsRun(\"灵魂链接\") then BeeRun(\"灵魂链接\");BeeUnitCastSpellDelay(\"灵魂链接\");return;end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_FelArmour",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "自动协助T",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "51413100689-5967.981",
					["Macro"] = "--自动协助焦点T\nif BeeUnitAffectingCombat() and (UnitName(\"target\")==nil or UnitIsDead(\"target\"))  and not UnitIsDead(\"focustarget\") and BeeUnitCanAttack(\"focustarget\") then BeeRun(\"/target [target=focustarget]\");end\n\n--免开羊，免打断自己的法术\nlocal MKY=\"忏悔,变形术,妖术,诱惑,冰冻陷阱\";\nif BeeStringFind(MKY,BeeUnitBuffList(\"target\")) or BeeUnitCastSpellName(\"player\")==\"烈焰风暴\" or BeeUnitCastSpellName(\"player\")==\"吸取灵魂\" then return;end",
					["Texture"] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofSanctuary",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = "自动召BB",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "61413100689-5967.981",
					["Macro"] = "--战斗中瞬招小鬼\nif BeeUnitAffectingCombat() and  BeePower()>0 and (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\nif BeeUnitAffectingCombat() and  (BeeUnitHealth(\"pet\")<=0 or UnitIsDeadOrGhost(\"pet\")) and BeePlayerBuffTime(\"灵魂燃烧\")>1 and BeeIsRun(\"召唤小鬼\") then BeeRun(\"召唤小鬼\");return;end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonFelHunter",
				}, -- [6]
				{
					["type"] = "script",
					["name"] = "宝宝技能",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "71413100689-5967.981",
					["Macro"] = "local spelljd, _, _, _, _, _, _, ddjd = UnitCastingInfo(\"focustarget\")\nlocal spellzj, _, _, _, _, _, _, ddzj = UnitCastingInfo(\"target\")\n--小鬼技能,灼烧驱魔,移除一个魔法\ngrouptype=\"\";if GetNumGroupMembers()>0 then grouptype=\"raid\" else grouptype=\"party\";end\nlocal n,qusan = BeeGroupCountScript('BeeRange(unit)<=40 and BeeIsRun(\"烧灼驱魔\",unit)',\"BeeUnitBuffInfo(unit,2,'Magic',0)>0 and not UnitIsDeadOrGhost(unit)\",grouptype) \nif UnitName(\"pet\")==\"塔泰\" and n>0 and BeeIsRun(\"烧灼驱魔\",qusan) then BeeRun(\"烧灼驱魔\",qusan);return;end\n--地狱猎犬技能.吞噬魔法(当前目标和焦点目标),打断施法\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and BeeUnitBuffInfo(\"target\",2,\"Magic\",1)>=1 and BeeIsRun(\"吞噬魔法\",\"target\") then BeeRun(\"吞噬魔法\",\"target\") return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and BeeUnitBuffInfo(\"focustarget\",2,\"Magic\",1)>=1 and BeeIsRun(\"吞噬魔法\",\"focustarget\") then BeeRun(\"吞噬魔法\",\"focustarget\") return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddzj == 0 and BeeIsRun(\"法术封锁\",\"target\") then BeeRun(\"法术封锁\",\"target\");return;end\nif UnitName(\"pet\")==\"基萨迪姆\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddjd == 0 and BeeIsRun(\"法术封锁\",\"focustarget\") then BeeRun(\"法术封锁\",\"focustarget\");return;end\n--恶魔守卫技能，自动打断技能\nif UnitName(\"pet\")==\"尼尔利克\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddzj == 0 and BeeIsRun(\"巨斧投掷\") then BeeRun(\"巨斧投掷\",\"target\");return;end \nif UnitName(\"pet\")==\"尼尔利克\" and (BeeUnitHealth(\"pet\")>1 or not UnitIsDeadOrGhost(\"pet\")) and ddjd == 0 and BeeIsRun(\"巨斧投掷\",\"focustarget\") then BeeRun(\"巨斧投掷\",\"focustarget\");return;end\n--胖子 卡尔弗格\n--女人 扎利亚娜\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_SummonSuccubus",
				}, -- [7]
				{
					["type"] = "script",
					["name"] = "自动开饰品",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "81413100689-5967.981",
					["Macro"] = "--自动开饰品\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',10))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',10)))==0 then BeeRun(\"/use 10\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',13))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',13)))==0 then BeeRun(\"/use 13\") return end\nif BeeUnitAffectingCombat() and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  return end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_Teleport",
				}, -- [8]
				{
					["type"] = "script",
					["name"] = "生命分流",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "91413100689-5967.981",
					["Macro"] = "--生命分流\nif BeeUnitAffectingCombat() and BeeUnitMana(\"player\",\"%\",0)<40 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_BurningSpirit",
				}, -- [9]
				{
					["type"] = "script",
					["name"] = "毁灭单体输出",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "101413100689-5967.981",
					["Macro"] = "--特殊情况处理\n--暮光审判\nif (BeeUnitCastSpellTime(\"target\")<1.5 and BeeUnitCastSpellName(\"target\")==\"暮光审判\") or (BeeUnitBuff(\"黯淡之光\",\"player\",2,0)<1.5 and BeeStringFind(\"黯淡之光\" ,BeeUnitBuffList(\"player\")))then BeeRun(\"/click ExtraActionButton1\");end\n--套装数量判断\nT13=select(2,string.gsub(GetInventoryItemLink('player',1)..GetInventoryItemLink('player',3)..GetInventoryItemLink('player',5)..GetInventoryItemLink('player',7)..GetInventoryItemLink('player',10),\"无面裹布\",\"无面裹布\"))\n--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n--移动时候输出(移動輸出時,優先級是燃燒>暗影灼燒>強力小鬼下的靈魂火>分流>魔化烈焰. )\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n    if BeeIsRun(\"暗影灼烧\",\"target\") then BeeRun(\"暗影灼烧\");return;end\n    if BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--灵魂火(强化灵魂之火)\nif BeePlayerBuffTime(\"强化灵魂之火\")<4 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");BeeUnitCastSpellDelay(\"灵魂之火\",3);return;end\n--灵魂燃烧(4t13)\nif BeeUnitAffectingCombat() and T13>=4 and BeeIsRun(\"灵魂燃烧\") then BeeRun(\"灵魂燃烧\");return;end\n--恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\");return;end\n--献祭\nif BeeTargetDeBuffTime(\"献祭\")<3 and BeeIsRun(\"献祭\",\"target\") then BeeRun(\"献祭\",\"target\");BeeUnitCastSpellDelay(\"献祭\",0.9);return;end\n--燃烧\nif BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n--末日灾祸(目标活过15秒)\nif BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\nif BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n--腐蚀术\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n--暗影灼烧(目标20%HP以下)\nif BeeUnitHealth(\"target\",\"%\",0)<=20 and  BeeIsRun(\"暗影灼烧\",\"target\")  then BeeRun(\"暗影灼烧\");return;end\n--暗影烈焰(近战范围)\nif BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<9 then BeeRun(\"暗影烈焰\");return;end\n--瞬发灵魂火\nif BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n--混乱箭(不在急速效果下)\nif BeeIsRun(\"混乱之箭\",\"target\") then BeeRun(\"混乱之箭\"); return;end\n--烧尽\nif BeeIsRun(\"烧尽\",\"target\") then BeeRun(\"烧尽\");return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Fire_FireBolt",
				}, -- [10]
				{
					["type"] = "script",
					["name"] = "毁灭AOE输出",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "111413100689-5967.981",
					["Macro"] = "--上诅咒\nif BeeUnitBuff(\"元素诅咒\",\"target\",2,2)<1 and BeeIsRun(\"元素诅咒\",\"target\") then BeeRun(\"元素诅咒\",\"target\");BeeUnitCastSpellDelay(\"元素诅咒\",0.9);return;end\n\n--移动时候输出(移動輸出時,優先級是燃燒>暗影灼燒>強力小鬼下的靈魂火>分流>魔化烈焰. )\nif GetUnitSpeed(\"player\")>0 then\n    if BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n    if BeeUnitHealth(\"target\")>150000 and BeeTargetDeBuffTime(\"腐蚀术\")<1 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\",\"target\");BeeUnitCastSpellDelay(\"腐蚀术\",0.9);return;end\n    if BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n    if BeeIsRun(\"暗影灼烧\",\"target\") then BeeRun(\"暗影灼烧\");return;end\n    if BeePlayerBuffTime(\"小鬼增效\")>1 and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");return;end\n    if BeeUnitMana(\"player\",\"%\",0)<50 and BeeUnitHealth(\"player\",\"%\")>70 and BeeIsRun(\"生命分流\",\"player\") then BeeRun(\"生命分流\",\"player\");return;end\n    if BeeIsRun(\"邪焰\",\"target\") then BeeRun(\"邪焰\",\"target\");return;end\nend\n--毁灭输出\n--[1]强化灵魂之火(保持这个BUFF最重要)\nif (BeePlayerBuffTime(\"强化灵魂之火\")<3 or BeePlayerBuffTime(\"小鬼增效\")>1) and BeeIsRun(\"灵魂之火\",\"target\") then BeeRun(\"灵魂之火\");BeeUnitCastSpellDelay(\"灵魂之火\",3);return;end\n--[2]腐蚀术\nif BeeTargetDeBuffTime(\"腐蚀术\")<2 and BeeIsRun(\"腐蚀术\",\"target\") then BeeRun(\"腐蚀术\");return;end\n--[3]末日灾厄\nif BeeUnitHealth(\"target\")>500000 and BeeTargetDeBuffTime(\"末日灾祸\")<2 and BeeTargetDeBuffTime(\"痛苦灾祸\")==-1 and BeeIsRun(\"末日灾祸\",\"target\") then BeeRun(\"末日灾祸\",\"target\");BeeUnitCastSpellDelay(\"末日灾祸\",0.9);return;end\nif BeeUnitHealth(\"target\")<=500000 and BeeTargetDeBuffTime(\"痛苦灾祸\")<2 and BeeTargetDeBuffTime(\"末日灾祸\")==-1 and BeeIsRun(\"痛苦灾祸\",\"target\") then BeeRun(\"痛苦灾祸\",\"target\");BeeUnitCastSpellDelay(\"痛苦灾祸\",0.9);return;end\n--[4]暗影烈焰\nif BeeUnitAffectingCombat() and BeeIsRun(\"暗影烈焰\",\"target\") and BeeRange(\"target\")<9 then BeeRun(\"暗影烈焰\");return;end\n--[5]恶魔之魂\nif BeeUnitAffectingCombat() and BeeUnitHealth(\"pet\")>0 and BeeIsRun(\"恶魔之魂\") then BeeRun(\"恶魔之魂\");return;end\n--AOE输出\nif BeeIsRun(\"腐蚀之种\",\"target\") and BeeTargetDeBuffTime(\"腐蚀之种\")<0 then BeeRun(\"腐蚀之种\",\"target\");return;end\n--[6]献祭\nif BeeTargetDeBuffTime(\"献祭\")<2 and BeeIsRun(\"献祭\",\"target\") then BeeRun(\"献祭\");BeeUnitCastSpellDelay(\"献祭\",0.9);return;end\n--[7]燃烧\nif BeeIsRun(\"燃烧\",\"target\") then BeeRun(\"燃烧\");return;end\n--[8]混乱之箭\nif BeeIsRun(\"混乱之箭\",\"target\") then BeeRun(\"混乱之箭\"); return;end\n--[9]烧尽(仅作为所有技能都CD时的填充技能)\nif BeeIsRun(\"烧尽\",\"target\") then BeeRun(\"烧尽\");return;end\n\n\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_RainOfFire",
				}, -- [11]
			},
			["Spells"] = {
				["List"] = {
					{
						["Remarks"] = "",
						["spell"] = {
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "11413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [1]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "21413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [2]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "31413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [3]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "41413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [4]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "51413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [5]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "61413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [6]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "71413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [7]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "81413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [8]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "91413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [9]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "101413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [10]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "111413100689-5967.981",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["DelayChecked"] = false,
								["name"] = "",
								["DelayValue"] = 0,
								["Target"] = "无目标",
								["checked"] = true,
								["subgroup"] = -3,
								["PropertiesSetChecked"] = 4,
							}, -- [11]
						},
						["name"] = "毁灭术士基础包",
						["checked"] = true,
					}, -- [1]
				},
			},
			["Remark"] = "",
			["Unit"] = {
				["RaidListClass"] = {
				},
				["IsInfList"] = {
				},
				["TeamCount"] = {
				},
				["TeamNumber"] = 0,
				["RaidList"] = {
				},
				["CustomizeIndex"] = 0,
			},
			["Locale"] = "zhCN",
			["Config"] = {
			},
			["name"] = "毁灭术士基础包",
			["Version"] = 502010,
			["Mark"] = "733185-174340",
			["CollectionInf"] = {
				["Buff_Spell"] = {
				},
			},
			["updata"] = {
			},
			["Import"] = true,
		}, -- [2]
	},
	["MenusWinDows"] = true,
	["HelpNavigation"] = true,
	["SetSounds"] = {
	},
}

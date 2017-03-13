
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
			["id"] = "11398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--CTM 4.3 惩戒骑输出脚本 2011/12/25 by ATM\n--骑乘状态自动开十字军光环，其他不做任何动作，非骑乘状态惩戒光环\nif IsMounted(\"player\")==1 then\n    if not BeeStringFind(\"十字军光环\",BeeUnitBuffList(\"player\")) then  BeeRun(\"十字军光环\",\"player\");end\n    return;\nelse\n    if not BeeStringFind(\"惩戒光环\",BeeUnitBuffList(\"player\")) then BeeRun(\"惩戒光环\",\"player\");return;end\nend\n",
			["Texture"] = "Interface\\Icons\\Ability_Mount_Gryphon_01",
		}, -- [1]
		{
			["type"] = "script",
			["name"] = "优先技能",
			["id"] = "21398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--插入技能\nif BeeCastSpellFast() then return;end",
			["Texture"] = "Interface\\Icons\\Ability_Creature_Cursed_05",
		}, -- [2]
		{
			["type"] = "script",
			["name"] = "优先保命",
			["id"] = "31398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--组队类型判断\ngrouptype=\"\";if GetNumGroupMembers()>0 then grouptype=\"raid\" else grouptype=\"party\" end\nif BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"治疗石\") then BeeRun(\"治疗石\");return;end\n--if BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"奇效治疗药水\") then BeeRun(\"奇效治疗药水\");return;end\n--判断自己血量低并且在战斗中开圣疗(惩戒/防骑对自己放圣疗)/给队员保护之手\nif BeeUnitAffectingCombat() and BeeIsRun(\"圣疗术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"圣疗术\",\"player\");return;end\n--血量低于20%能开无敌\nif BeeUnitAffectingCombat() and BeeIsRun(\"圣盾术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"圣盾术\",\"player\");return;end\n--给团队里血低于8%的人保护之手\nlocal BHZS = BeeGroupMinScript('BeeRange(unit)<=40 and BeeIsRun(\"保护之手\",unit) and BeeUnitHealth(unit,\"%\")<8 and UnitCanAssist(\"player\",unit) and not UnitIsDeadOrGhost(unit)',\"BeeUnitHealth(unit)\",grouptype)\nif BeeUnitAffectingCombat() and BHZS and BeeIsRun(\"保护之手\",BHZS) and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"保护之手\",BHZS);return;end\n--人类自利\nif BeeUnitRace(\"player\")==\"人类\" and BeeStringFind(\"冰冻陷阱,寒冰链,惊魂尖叫,深度冻结,致盲,制裁之锤,死亡缠绕,变形术,精神控制,诱惑,冰冻陷阱,妖术,冰霜新星,沉睡\",BeeUnitBuffList()) and BeeIsRun(\"自利\") then BeeRun(\"自利\");return;end",
			["Texture"] = "Interface\\Icons\\Ability_Mage_ShatterShield",
		}, -- [3]
		{
			["type"] = "script",
			["name"] = "自动补BUFF",
			["id"] = "41398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动补真理圣印\nif not BeeStringFind(\"正义圣印,真理圣印,洞察圣印\",BeeUnitBuffList(\"player\")) and BeeIsRun(\"真理圣印\",\"player\") then BeeRun(\"真理圣印\",\"player\");BeeUnitCastSpellDelay(\"真理圣印\",2);return;end\n--没有王者或力量，补王者祝福\nif BeePlayerBuffTime(\"王者祝福\")<0 and BeePlayerBuffTime(\"力量祝福\")<0 and BeeIsRun(\"王者祝福\",\"player\") then BeeRun(\"王者祝福\",\"player\");BeeUnitCastSpellDelay(\"王者祝福\",2);return;end\n",
			["Texture"] = "Interface\\Icons\\Spell_Magic_GreaterBlessingofKings",
		}, -- [4]
		{
			["type"] = "script",
			["name"] = "自动协助T",
			["id"] = "51398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动协助焦点T\nif BeeUnitAffectingCombat()and (UnitName(\"target\")==nil or UnitIsDead(\"target\"))  and not UnitIsDead(\"focustarget\") and BeeUnitCanAttack(\"focustarget\") then BeeRun(\"/target [target=focustarget]\");end\n\n--免开羊，免打断自己的法术\nlocal MKY=\"忏悔,变形术,妖术,诱惑,冰冻陷阱\";\nif BeeStringFind(MKY,BeeUnitBuffList(\"target\")) then return;end",
			["Texture"] = "Interface\\Icons\\Ability_Defend",
		}, -- [5]
		{
			["type"] = "script",
			["name"] = "自动打断",
			["id"] = "61398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动打断\nlocal daduan=\"寒冰箭雨,星尘,腐臭蜂群,邪能烈焰,绝对服从,奥术波动,饥饿暗影,精神鞭笞,暗影钻削,暮光冲击波,甜美的摇篮曲,寒冰手,穿刺,冰霜之箭,时间漩涡,惩击\";\n--自动打断\nlocal spelljd, _, _, _, _, _, _, ddjd = UnitCastingInfo(\"focustarget\")\nlocal spellzj, _, _, _, _, _, _, ddzj = UnitCastingInfo(\"target\")\nif BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\")) and BeeIsRun(\"责难\",\"target\")  then BeeRun(\"责难\",\"target\");return;end\nif BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\"))  and BeeSpellCD(\"责难\")>0 and  BeeIsRun(\"制裁之锤\",\"target\")  then BeeRun(\"制裁之锤\",\"target\");return;end\n",
			["Texture"] = "Interface\\Icons\\Ability_Kick",
		}, -- [6]
		{
			["type"] = "script",
			["name"] = "自动驱散",
			["id"] = "71398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动驱散\ngrouptype=\"\";if GetNumGroupMembers()>0 then  grouptype=\"raid\" else  grouptype=\"party\" end\nlocal n,qusan = BeeGroupCountScript('BeeRange(unit)<=40 and BeeIsRun(\"清洁术\",unit)',\"BeeUnitBuffInfo(unit,2,'Disease,Poison',0)>0 and not UnitIsDeadOrGhost(unit)\",grouptype)\nif n >0 and BeeIsRun(\"清洁术\",qusan) then BeeRun(\"清洁术\",qusan);return;end",
			["Texture"] = "Interface\\Icons\\ABILITY_POISONSTING",
		}, -- [7]
		{
			["type"] = "script",
			["name"] = "自动开饰品",
			["id"] = "81398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动开饰品\nif BeeUnitAffectingCombat()  and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',13))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',13)))==0 then BeeRun(\"/use 13\") return end\nif BeeUnitAffectingCombat()  and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  return end",
			["Texture"] = "Interface\\Icons\\Ability_Druid_EmpoweredRejuvination",
		}, -- [8]
		{
			["type"] = "script",
			["name"] = "惩戒输出（AOE）",
			["id"] = "91398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "if BeeUnitAffectingCombat()  and  BeeIsRun(\"圣佑术\")  then BeeRun(\"圣佑术\");return;end\nif BeeUnitAffectingCombat()  and  BeeIsRun(\"复仇之怒\") and  BeePlayerDeBuffTime(\"自律\")<1 then BeeRun(\"复仇之怒\");return;end\nif BeeIsRun(\"狂热\",\"nogoal\") and BeeHolyPower(\"player\") == 3 then BeeRun(\"狂热\",\"nogoal\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")==3 then BeeRun(\"异端裁决\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")>1 then BeeRun(\"异端裁决\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")==1 and (BeePlayerBuffTime(\"战争艺术\")>1 or BeePlayerBuffTime(\"复仇之怒\")>1) then  BeeRun(\"异端裁决\");return;end\nif IsSpellInRange(\"十字军打击\",\"target\")==1 and BeeIsRun(\"神圣风暴\",\"target\") and  BeeHolyPower(\"player\")<3 and IsSpellInRange(\"十字军打击\",\"target\")==1 then BeeRun(\"神圣风暴\");return;end\nif BeeIsRun(\"圣殿骑士的裁决\",\"target\") and BeeHolyPower(\"player\")== 3  and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\nif BeePlayerBuffTime(\"神圣意志\")>1  and  BeeIsRun(\"圣殿骑士的裁决\",\"target\")  and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end    \nif BeeStringFind(\"亡灵,恶魔,龙类,元素生物\",UnitCreatureType('target'))then \n    if BeeIsRun(\"驱邪术\",\"target\")and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1  then BeeRun(\"驱邪术\");return;end   \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") and IsSpellInRange(\"愤怒之锤\",\"target\")==1 then BeeRun(\"愤怒之锤\");return;end\nelse \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\")  and IsSpellInRange(\"愤怒之锤\",\"target\")==1 then BeeRun(\"愤怒之锤\");return;end\n    if BeeIsRun(\"驱邪术\",\"target\") and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1  then BeeRun(\"驱邪术\");return;end   \nend\nif BeeIsRun(\"审判\")  and IsSpellInRange(\"审判\",\"target\")==1 then BeeRun(\"审判\");return;end\nif BeeUnitAffectingCombat()  and BeeIsRun(\"神圣愤怒\",\"target\") and IsSpellInRange(\"神圣愤怒\",\"target\")==1 then BeeRun(\"神圣愤怒\");return;end\n--if BeeUnitAffectingCombat(\"player\")  and BeeUnitMana(\"player\",\"%\")>90 and BeeIsRun(\"奉献\") then BeeRun(\"奉献\");return;end\n--蓝低于3000，回蓝\nif BeeUnitAffectingCombat()  and BeeUnitMana(\"player\")<3000 and BeeIsRun(\"神圣恳求\") then BeeRun(\"神圣恳求\");return;end\n\n\n\n",
			["Texture"] = "Interface\\Icons\\Ability_Paladin_DivineStorm",
		}, -- [9]
		{
			["type"] = "script",
			["name"] = "惩戒输出（单体）",
			["id"] = "101398915690-9304.439",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--远古列王守卫开启后叠加10层远古能量，就用魔像之血药水\n\n\nif BeePlayerBuffCount(\"远古能量\")>=10 and BeeIsRun(\"魔像之血药水\") then BeeRun(\"魔像之血药水\");return;end\n\n--远古列王守卫开启后叠加10层后远古能量，使用狂热\nif BeePlayerBuffCount(\"远古能量\")>=10 and BeeIsRun(\"狂热\",\"nogoal\") then BeeRun(\"狂热\",\"nogoal\");return;end\n\n\n--狂热效果存在，使用复仇之怒\nif BeePlayerBuffTime(\"狂热\")>0.1 and BeeIsRun(\"复仇之怒\"\n) then BeeRun(\"复仇之怒\");return;end\n\n--异端裁决可用、异端裁决BUFF低于3秒、有3道圣能时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")==3 then BeeRun(\"异端裁决\");return;end\n\n\n--异端裁决可用、无异端裁决BUFF、有2道以上圣能时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")>1 then BeeRun(\"异端裁决\");return;end\n\n\n\n--异端裁决可用、无异端裁决BUFF、有1道圣能、有战争艺术BUFF、或者有复仇之怒BUFF时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")==1 and (BeePlayerBuffTime(\"战争艺术\")>1 or BeePlayerBuffTime(\"复仇之怒\")>1) then  BeeRun(\"异端裁决\");return;end\n\n\n--异端裁决可用、异端裁决BUFF低于3秒、不足2道以上圣能、有神圣意志时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")<2 and BeePlayerBuffTime(\"神圣意志\")>1 then  BeeRun(\"异端裁决\");return;end\n\n\n\n--十字军打击可用、少于3道圣能、在十字军打击技能范围内，执行十字军打击；\nif BeeIsRun(\"十字军打击\",\"target\") and  BeeHolyPower(\"player\")<3 and IsSpellInRange(\"十字军打击\",\"target\")==1 then BeeRun(\"/startattack\\n/cast 十字军打击\");return;end\n\n\n\n--圣殿骑士的裁决可用、有3道圣能、在圣殿骑士的裁决技能范围内，执行圣殿骑士的裁决；\nif BeeIsRun(\"圣殿骑士的裁决\",\"target\") and BeeHolyPower(\"player\")== 3 and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\n\n\n\n--有神圣意志BUFF，圣殿骑士的裁决可用、在圣殿骑士的裁决技能范围内，执行圣殿骑士的裁决；\nif BeePlayerBuffTime(\"神圣意志\")>1  and  BeeIsRun(\"圣殿骑士的裁决\",\"target\") and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\n\n\n\n--（配合2件T13属性）无狂热BUFF，审判可用、在审判技能范围内，执行审判\nif BeePlayerBuffTime(\"狂热\")<1 and BeeIsRun(\"审判\") and IsSpellInRange(\"审判\",\"target\")==1 then BeeRun(\"审判\");return;end\n\n--有战争艺术、驱邪术可用、在驱邪术技能范围内，执行驱邪术；\n\nif BeeIsRun(\"驱邪术\",\"target\") and BeePlayerBuffTime(\"战争艺术\")>1 then BeeRun(\"驱邪术\");return;end   \n\n--目标是亡灵,恶魔,龙类,元素生物，有战争艺术BUFF、驱邪术可用、在驱邪术技能范围内，执行驱邪术；\nif BeeStringFind(\"亡灵,恶魔,龙类,元素生物\",UnitCreatureType('target'))then if BeeIsRun(\"驱邪术\",\"target\")and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1 then BeeRun(\"驱邪术\");return;end\n    \n    --目标生命值低于20%、或者有复仇之怒BUFF、愤怒之锤可用、在愤怒之锤技能范围内，执行愤怒之锤；\n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") then BeeRun(\"愤怒之锤\");return;end\nelse \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") then BeeRun(\"愤怒之锤\");return;end\n    end\n    --无狂热BUFF，十字军打击冷却时间大于0.8秒、审判冷却时间大于0.8秒、在战斗状态内，执行神圣愤怒；\n    if BeePlayerBuffTime(\"狂热\")<1 and BeeSpellCD(\"十字军打击\")>0.8 and BeeSpellCD(\"审判\")>0.8 and BeeUnitAffectingCombat(\"player\") and BeeIsRun(\"神圣愤怒\",\"target\") then BeeRun(\"神圣愤怒\");return;end\n\n\n--无狂热BUFF，十字军打击冷却时间大于1.2秒、审判冷却时间大于1.2秒、在战斗状态内、法力值大于90%，执行奉献；\nif BeePlayerBuffTime(\"狂热\")<1 and BeeUnitAffectingCombat(\"player\") and BeeUnitMana(\"player\",\"%\")>90 and BeeSpellCD(\"十字军打击\")>0.8 and BeeSpellCD(\"审判\")>1.1  and BeeIsRun(\"奉献\") then BeeRun(\"奉献\");return;end\n\n\n--战斗状态内、蓝低于15000，执行神圣恳求\n\nif BeeUnitAffectingCombat() and BeeUnitMana(\"player\")<15000 and BeeIsRun(\"神圣恳求\") then BeeRun(\"神圣恳求\");return;end\n",
			["Texture"] = "Interface\\Icons\\Spell_Holy_CrusaderStrike",
		}, -- [10]
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
						["Type"] = "script",
						["spellId"] = 0,
						["raidn"] = -3,
						["id"] = "11398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
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
						["id"] = "21398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
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
						["id"] = "31398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
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
						["id"] = "41398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
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
						["id"] = "51398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
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
						["id"] = "61398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
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
						["id"] = "71398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
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
						["id"] = "81398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
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
						["id"] = "91398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
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
						["id"] = "101398915690-9304.439",
						["PropertiesSet_Continue_Checked"] = false,
						["Targets"] = {
						},
						["unit"] = "nogoal",
						["DelayChecked"] = false,
						["Key"] = {
							["KeySelect"] = "auto",
						},
						["name"] = "",
						["DelayValue"] = 0,
						["Target"] = "无目标",
						["checked"] = true,
						["subgroup"] = -3,
						["PropertiesSetChecked"] = 4,
					}, -- [10]
				},
				["checked"] = true,
				["ApiDbf"] = {
				},
				["name"] = "惩戒骑基础包",
				["Remarks"] = "",
				["Mark"] = "180843-478269",
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
			["圣骑士"] = {
				["Count"] = 1,
				["englishClass"] = "PALADIN",
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
			["nogoal"] = {
				["cuid"] = 2,
				["name"] = "无目标",
				["raidn"] = -9,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
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
			["pettarget"] = {
				["name"] = "宠物的目标",
				["raidn"] = -18,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "pettarget",
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
			["maintank1"] = {
				["cuid"] = 11,
				["name"] = "MT1",
				["raidn"] = -10,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank1",
			},
			["最初的悠悠"] = {
				["subgroup"] = 0,
				["name"] = "最初的悠悠",
				["raidn"] = 1,
				["englishClass"] = "PALADIN",
				["class"] = "圣骑士",
				["unitid"] = "player",
				["unit"] = "最初的悠悠",
			},
			["FireHasBeenSet"] = {
				["cuid"] = 1,
				["name"] = "被集火目标",
				["raidn"] = -3,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "FireHasBeenSet",
			},
			["vehicle"] = {
				["name"] = "你控制的车辆",
				["raidn"] = -20,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "vehicle",
			},
			["focustarget"] = {
				["name"] = "焦点目标的目标",
				["raidn"] = -4,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "focustarget",
			},
			["pet"] = {
				["name"] = "宠物",
				["raidn"] = -19,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "pet",
			},
			["boss4"] = {
				["name"] = "Boss4",
				["raidn"] = -24,
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
			["player"] = {
				["name"] = "自己",
				["raidn"] = -8,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "player",
			},
			["targettarget"] = {
				["name"] = "当前目标的目标",
				["raidn"] = -6,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "targettarget",
			},
			["boss3"] = {
				["name"] = "Boss3",
				["raidn"] = -23,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "boss1",
			},
			["mouseover"] = {
				["name"] = "鼠标目标",
				["raidn"] = -2,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "mouseover",
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
	["name"] = "惩戒骑基础包",
	["Version"] = 502010,
	["Mark"] = "647062-292767",
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
				["ExcludeTarget"] = {
				},
				["RaidListClass"] = {
					["武僧"] = {
						["Count"] = 2,
						["englishClass"] = "MONK",
					},
					["圣骑士"] = {
						["Count"] = 7,
						["englishClass"] = "PALADIN",
					},
					["潜行者"] = {
						["Count"] = 3,
						["englishClass"] = "ROGUE",
					},
					["术士"] = {
						["Count"] = 3,
						["englishClass"] = "WARLOCK",
					},
					["德鲁伊"] = {
						["Count"] = 5,
						["englishClass"] = "DRUID",
					},
					["萨满祭司"] = {
						["Count"] = 1,
						["englishClass"] = "SHAMAN",
					},
					["死亡骑士"] = {
						["Count"] = 2,
						["englishClass"] = "DEATHKNIGHT",
					},
					["战士"] = {
						["Count"] = 6,
						["englishClass"] = "WARRIOR",
					},
					["法师"] = {
						["Count"] = 2,
						["englishClass"] = "MAGE",
					},
					["猎人"] = {
						["Count"] = 6,
						["englishClass"] = "HUNTER",
					},
					["牧师"] = {
						["Count"] = 3,
						["englishClass"] = "PRIEST",
					},
				},
				["IsInfList"] = {
				},
				["TeamNumber"] = 4,
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
						"那个死琦-壁炉谷", -- [1]
						"凯瑟王-法拉希姆", -- [2]
						"最初的悠悠", -- [3]
						"煙雨-伊萨里奥斯", -- [4]
						"奇女子丶莫愁-伊萨里奥斯", -- [5]
					},
				},
				["TeamCount"] = {
					5, -- [1]
					5, -- [2]
					5, -- [3]
					5, -- [4]
					5, -- [5]
					5, -- [6]
					5, -- [7]
					5, -- [8]
				},
				["RaidList"] = {
					["浪漫宣言-亚雷戈斯"] = {
						["subgroup"] = 4,
						["name"] = "浪漫宣言-亚雷戈斯",
						["raidn"] = 19,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid19",
						["unit"] = "浪漫宣言-亚雷戈斯",
					},
					["口古口古-壁炉谷"] = {
						["subgroup"] = 3,
						["name"] = "口古口古-壁炉谷",
						["raidn"] = 11,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid11",
						["unit"] = "口古口古-壁炉谷",
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
					["maintank2"] = {
						["unit"] = "maintank2",
						["name"] = "MT2",
						["raidn"] = -11,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 12,
					},
					["丶薄荷蛮蛮丶-金色平原"] = {
						["subgroup"] = 2,
						["name"] = "丶薄荷蛮蛮丶-金色平原",
						["raidn"] = 10,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid10",
						["unit"] = "丶薄荷蛮蛮丶-金色平原",
					},
					["呉铭者-壁炉谷"] = {
						["subgroup"] = 7,
						["name"] = "呉铭者-壁炉谷",
						["raidn"] = 33,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid33",
						["unit"] = "呉铭者-壁炉谷",
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
					["一个老兵-贫瘠之地"] = {
						["subgroup"] = 8,
						["name"] = "一个老兵-贫瘠之地",
						["raidn"] = 39,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid39",
						["unit"] = "一个老兵-贫瘠之地",
					},
					["兔兔子-灰谷"] = {
						["subgroup"] = 6,
						["name"] = "兔兔子-灰谷",
						["raidn"] = 30,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid30",
						["unit"] = "兔兔子-灰谷",
					},
					["上帝二大爷-荆棘谷"] = {
						["subgroup"] = 6,
						["name"] = "上帝二大爷-荆棘谷",
						["raidn"] = 28,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid28",
						["unit"] = "上帝二大爷-荆棘谷",
					},
					["燃烧之翼丶-壁炉谷"] = {
						["subgroup"] = 1,
						["name"] = "燃烧之翼丶-壁炉谷",
						["raidn"] = 1,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid1",
						["unit"] = "燃烧之翼丶-壁炉谷",
					},
					["赫卡忒之影-迅捷微风"] = {
						["subgroup"] = 7,
						["name"] = "赫卡忒之影-迅捷微风",
						["raidn"] = 35,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid35",
						["unit"] = "赫卡忒之影-迅捷微风",
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
					["痛苦战车-末日行者"] = {
						["subgroup"] = 6,
						["name"] = "痛苦战车-末日行者",
						["raidn"] = 29,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid29",
						["unit"] = "痛苦战车-末日行者",
					},
					["指尖墨-壁炉谷"] = {
						["subgroup"] = 2,
						["name"] = "指尖墨-壁炉谷",
						["raidn"] = 9,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid9",
						["unit"] = "指尖墨-壁炉谷",
					},
					["德神祭-狂热之刃"] = {
						["subgroup"] = 8,
						["name"] = "德神祭-狂热之刃",
						["raidn"] = 37,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid37",
						["unit"] = "德神祭-狂热之刃",
					},
					["依咔虂-伊莫塔尔"] = {
						["subgroup"] = 8,
						["name"] = "依咔虂-伊莫塔尔",
						["raidn"] = 38,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid38",
						["unit"] = "依咔虂-伊莫塔尔",
					},
					["浮舟-生态船"] = {
						["subgroup"] = 7,
						["name"] = "浮舟-生态船",
						["raidn"] = 32,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid32",
						["unit"] = "浮舟-生态船",
					},
					["天上的星-守护之剑"] = {
						["subgroup"] = 3,
						["name"] = "天上的星-守护之剑",
						["raidn"] = 14,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid14",
						["unit"] = "天上的星-守护之剑",
					},
					["家有小绵羊-壁炉谷"] = {
						["subgroup"] = 5,
						["name"] = "家有小绵羊-壁炉谷",
						["raidn"] = 22,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid22",
						["unit"] = "家有小绵羊-壁炉谷",
					},
					["Jackyrdchel-壁炉谷"] = {
						["subgroup"] = 2,
						["name"] = "Jackyrdchel-壁炉谷",
						["raidn"] = 7,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid7",
						["unit"] = "Jackyrdchel-壁炉谷",
					},
					["繖矢之刃-格雷迈恩"] = {
						["subgroup"] = 5,
						["name"] = "繖矢之刃-格雷迈恩",
						["raidn"] = 21,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid21",
						["unit"] = "繖矢之刃-格雷迈恩",
					},
					["巧笑嫣然-万色星辰"] = {
						["subgroup"] = 4,
						["name"] = "巧笑嫣然-万色星辰",
						["raidn"] = 17,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid17",
						["unit"] = "巧笑嫣然-万色星辰",
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
					["冰糕侠-布鲁塔卢斯"] = {
						["subgroup"] = 3,
						["name"] = "冰糕侠-布鲁塔卢斯",
						["raidn"] = 15,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid15",
						["unit"] = "冰糕侠-布鲁塔卢斯",
					},
					["只想做貓-末日行者"] = {
						["subgroup"] = 5,
						["name"] = "只想做貓-末日行者",
						["raidn"] = 23,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid23",
						["unit"] = "只想做貓-末日行者",
					},
					["狼噬天涯-狂热之刃"] = {
						["subgroup"] = 8,
						["name"] = "狼噬天涯-狂热之刃",
						["raidn"] = 36,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid36",
						["unit"] = "狼噬天涯-狂热之刃",
					},
					["阴沟里翻了船-达尔坎"] = {
						["subgroup"] = 4,
						["name"] = "阴沟里翻了船-达尔坎",
						["raidn"] = 18,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid18",
						["unit"] = "阴沟里翻了船-达尔坎",
					},
					["pettarget"] = {
						["name"] = "宠物的目标",
						["raidn"] = -18,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pettarget",
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
					["凯瑟王-法拉希姆"] = {
						["subgroup"] = 2,
						["name"] = "凯瑟王-法拉希姆",
						["raidn"] = 6,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid6",
						["unit"] = "凯瑟王-法拉希姆",
					},
					["focustarget"] = {
						["name"] = "焦点目标的目标",
						["raidn"] = -4,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focustarget",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
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
					["黑白苹果-火喉"] = {
						["subgroup"] = 3,
						["name"] = "黑白苹果-火喉",
						["raidn"] = 13,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid13",
						["unit"] = "黑白苹果-火喉",
					},
					["pet"] = {
						["name"] = "宠物",
						["raidn"] = -19,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pet",
					},
					["啊楠-布兰卡德"] = {
						["subgroup"] = 5,
						["name"] = "啊楠-布兰卡德",
						["raidn"] = 25,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid25",
						["unit"] = "啊楠-布兰卡德",
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
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 15,
					},
					["惡魔毀滅-壁炉谷"] = {
						["subgroup"] = 1,
						["name"] = "惡魔毀滅-壁炉谷",
						["raidn"] = 4,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid4",
						["unit"] = "惡魔毀滅-壁炉谷",
					},
					["Imsohappy-壁炉谷"] = {
						["subgroup"] = 1,
						["name"] = "Imsohappy-壁炉谷",
						["raidn"] = 3,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid3",
						["unit"] = "Imsohappy-壁炉谷",
					},
					["爱着云的风-伊萨里奥斯"] = {
						["subgroup"] = 4,
						["name"] = "爱着云的风-伊萨里奥斯",
						["raidn"] = 20,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid20",
						["unit"] = "爱着云的风-伊萨里奥斯",
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
					["爱丄啡啡-壁炉谷"] = {
						["subgroup"] = 3,
						["name"] = "爱丄啡啡-壁炉谷",
						["raidn"] = 12,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid12",
						["unit"] = "爱丄啡啡-壁炉谷",
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
					["focus"] = {
						["name"] = "焦点目标",
						["raidn"] = -5,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focus",
					},
					["最初的悠悠"] = {
						["subgroup"] = 4,
						["name"] = "最初的悠悠",
						["raidn"] = 16,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid16",
						["unit"] = "最初的悠悠",
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
					["高福帥-壁炉谷"] = {
						["subgroup"] = 2,
						["name"] = "高福帥-壁炉谷",
						["raidn"] = 8,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid8",
						["unit"] = "高福帥-壁炉谷",
					},
					["狐丶暗影之光-荆棘谷"] = {
						["subgroup"] = 6,
						["name"] = "狐丶暗影之光-荆棘谷",
						["raidn"] = 27,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid27",
						["unit"] = "狐丶暗影之光-荆棘谷",
					},
					["煙雨-伊萨里奥斯"] = {
						["subgroup"] = 7,
						["name"] = "煙雨-伊萨里奥斯",
						["raidn"] = 31,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid31",
						["unit"] = "煙雨-伊萨里奥斯",
					},
					["targettarget"] = {
						["name"] = "当前目标的目标",
						["raidn"] = -6,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "targettarget",
					},
					["Blackmonk-火烟之谷"] = {
						["subgroup"] = 8,
						["name"] = "Blackmonk-火烟之谷",
						["raidn"] = 40,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid40",
						["unit"] = "Blackmonk-火烟之谷",
					},
					["mouseovertarget"] = {
						["name"] = "鼠标目标的目标",
						["raidn"] = -1,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseovertarget",
					},
					["闹点小情绪-加基森"] = {
						["subgroup"] = 6,
						["name"] = "闹点小情绪-加基森",
						["raidn"] = 26,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid26",
						["unit"] = "闹点小情绪-加基森",
					},
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
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
					["那个死琦-壁炉谷"] = {
						["subgroup"] = 1,
						["name"] = "那个死琦-壁炉谷",
						["raidn"] = 2,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid2",
						["unit"] = "那个死琦-壁炉谷",
					},
					["细雨凉风-壁炉谷"] = {
						["subgroup"] = 1,
						["name"] = "细雨凉风-壁炉谷",
						["raidn"] = 5,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid5",
						["unit"] = "细雨凉风-壁炉谷",
					},
					["天贝武-深渊之巢"] = {
						["subgroup"] = 5,
						["name"] = "天贝武-深渊之巢",
						["raidn"] = 24,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid24",
						["unit"] = "天贝武-深渊之巢",
					},
					["奇女子丶莫愁-伊萨里奥斯"] = {
						["subgroup"] = 7,
						["name"] = "奇女子丶莫愁-伊萨里奥斯",
						["raidn"] = 34,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid34",
						["unit"] = "奇女子丶莫愁-伊萨里奥斯",
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
				["IndexTbl"] = 0,
			},
			["name"] = "[无名]",
			["updata"] = {
			},
			["Mark"] = "817942-980234",
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
					["潜行者"] = {
						["Count"] = 1,
						["englishClass"] = "ROGUE",
					},
					["圣骑士"] = {
						["Count"] = 1,
						["englishClass"] = "PALADIN",
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
					["target"] = {
						["name"] = "当前目标",
						["raidn"] = -7,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "target",
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
					["maintank4"] = {
						["unit"] = "maintank4",
						["name"] = "MT4",
						["raidn"] = -13,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 14,
					},
					["月夜小贼妞-加里索斯"] = {
						["subgroup"] = 0,
						["name"] = "月夜小贼妞-加里索斯",
						["raidn"] = 1,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "party1",
						["unit"] = "月夜小贼妞-加里索斯",
					},
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["最初的悠悠"] = {
						["subgroup"] = 0,
						["name"] = "最初的悠悠",
						["raidn"] = 1,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "player",
						["unit"] = "最初的悠悠",
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
					["focustarget"] = {
						["name"] = "焦点目标的目标",
						["raidn"] = -4,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focustarget",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
					},
					["vehicle"] = {
						["name"] = "你控制的车辆",
						["raidn"] = -20,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "vehicle",
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
					["maintank8"] = {
						["unit"] = "maintank8",
						["name"] = "MT8",
						["raidn"] = -17,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 18,
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
			["Macro"] = {
				{
					["type"] = "script",
					["name"] = "开虔诚，上真理，补王者",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11388158778-19261.252",
					["Macro"] = "--非骑乘状态自动开惩戒光环\nif not BeeStringFind(\"虔诚光环\",BeeUnitBuffList(\"player\")) then\n    BeeRun(\"虔诚光环\",\"player\");\n    return;\nend\nif not BeeStringFind(\"正义之怒\",BeeUnitBuffList(\"player\")) then\n    BeeRun(\"正义之怒\",\"player\");\n    return;\nend\n--没任何圣印的时候自动补真理圣印\nif not (BeeStringFind(\"真理圣印\",BeeUnitBuffList(\"player\")) or BeeStringFind(\"洞察圣印\",BeeUnitBuffList(\"player\")) or BeeStringFind(\"正义圣印\",BeeUnitBuffList(\"player\")) or \n    BeeStringFind(\"公正圣印\",BeeUnitBuffList(\"player\"))) then\n    BeeRun(\"真理圣印\",\"player\");\n    BeeUnitCastSpellDelay(\"真理圣印\",2);\nend\n\n--如果没有王者祝福或力量祝福，自动补王者祝福\nif BeeIsRun(\"王者祝福\",\"player\") and (BeePlayerBuffTime(\"王者祝福\") <0 and  BeePlayerBuffTime(\"力量祝福\")<0) then \n    BeeRun(\"王者祝福\",\"player\");\n    BeeUnitCastSpellDelay(\"王者祝福\",2);\n    return;\nend",
					["Texture"] = "Interface\\Icons\\Spell_Holy_EmpowerChampion",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "保命",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "21388158778-19261.252",
					["Macro"] = "--判断自己血量低并且在战斗中开圣疗\nif BeeIsRun(\"圣疗术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0  then\n    BeeRun(\"圣疗术\",\"player\");\n    BeeUnitCastSpellDelay(\"圣疗术\",2);\n    return;\nend\n--血量低于10%能开防御者\nif BeeIsRun(\"炽热防御者\",\"player\") and BeeUnitHealth(\"player\",\"%\")<12  and BeePlayerDeBuffTime(\"自律\")<0  then\n    BeeRun(\"炽热防御者\",\"player\");\n    BeeUnitCastSpellDelay(\"炽热防御者\",2);\n    return;\nend\n--60开圣佑术\nif BeeIsRun(\"圣佑术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<60  then\n    BeeRun(\"圣佑术\",\"player\");\n    BeeUnitCastSpellDelay(\"圣佑术\",2);\n    return;\nend\n--40开守卫\nif BeeIsRun(\"远古列王守卫\",\"player\") and BeeSpellCD(\"远古列王守卫\")<=0 and  BeeUnitHealth(\"player\",\"%\")<40  then\n    BeeRun(\"远古列王守卫\",\"player\");\n    BeeUnitCastSpellDelay(\"远古列王守卫\",2);\n    return;\nend",
					["Texture"] = "Interface\\Icons\\Spell_Holy_GuardianSpirit",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "打断施法",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "31388158778-19261.252",
					["Macro"] = "if BeeUnitCastSpellName()  and BeeIsRun(\"责难\") then\n    BeeRun(\"责难\");\n    return;\nend\n\n\n",
					["Texture"] = "Interface\\Icons\\Spell_Holy_EyeforanEye",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "嘲讽",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "41388158778-19261.252",
					["Macro"] = "if not BeeTargetTargetIsPlayer() and BeeIsRun(\"清算之手\") and BeeUnitName(\"targettarget\") then BeeRun(\"清算之手\"); \n    return; \nelseif not BeeTargetTargetIsPlayer() and BeeSpellCD(\"清算之手\")>0  and BeeIsRun(\"正义防御\") and BeeUnitName(\"target\") then BeeRun(\"正义防御\"); \nend",
					["Texture"] = "Interface\\Icons\\Spell_Holy_BlessingOfStrength",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "单拉",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "51388158778-19261.252",
					["Macro"] = "-- 攻击最近的目标\nif not UnitIsDead(\"player\") and BeeUnitAffectingCombat(\"player\") then\n    if BeeAttack(0,0) then\n        return;\n    end\nend\nif BeeUnitHealth(\"target\",\"%\")<20 and BeeIsRun(\"愤怒之锤\") then\n    BeeRun(\"愤怒之锤\")\n    return;    \nend    \nif BeeHolyPower()==3 and BeeIsRun(\"正义盾击\") then\n    BeeRun(\"正义盾击\")\n    return;    \nend    \nif BeePlayerBuffTime(\"大十字军\")>=0 and BeeIsRun(\"复仇者之盾\") then\n    BeeRun(\"复仇者之盾\")\n    return;    \nend    \nif BeeIsRun(\"十字军打击\") then\n    BeeRun(\"十字军打击\")\n    return;    \nend    \nif BeeIsRun(\"复仇者之盾\") then\n    BeeRun(\"复仇者之盾\")\n    return;    \nend    \nif BeeIsRun(\"审判\") then\n    BeeRun(\"审判\")\n    return;    \nend    \nif BeeUnitAffectingCombat() and BeeRange(\"target\")<8 and BeeIsRun(\"奉献\") then\n    BeeRun(\"奉献\")\n    return;    \nend    \nif BeeUnitAffectingCombat() and BeeRange(\"target\")<8 and BeeIsRun(\"神圣愤怒\") then\n    BeeRun(\"神圣愤怒\")\n    return;    \nend    ",
					["Texture"] = "Interface\\Icons\\Spell_Holy_FistOfJustice",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = "群拉",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "61388158778-19261.252",
					["Macro"] = "-- 攻击最近的目标\nif not UnitIsDead(\"player\") and BeeUnitAffectingCombat(\"player\") then\n    if BeeAttack(0,0) then\n        return;\n    end\nend\nif BeeHolyPower()==3 and BeeIsRun(\"正义盾击\") then\n    BeeRun(\"正义盾击\")\n    return;    \nend    \nif BeePlayerBuffTime(\"大十字军\")>=0 and BeeIsRun(\"复仇者之盾\") then\n    BeeRun(\"复仇者之盾\")\n    return;    \nend    \nif BeeIsRun(\"正义之锤\") then\n    BeeRun(\"正义之锤\")\n    return;    \nend    \nif BeeIsRun(\"复仇者之盾\") then\n    BeeRun(\"复仇者之盾\")\n    return;    \nend    \nif BeeUnitAffectingCombat() and BeeRange(\"target\")<8 and BeeIsRun(\"奉献\") then\n    BeeRun(\"奉献\")\n    return;    \nend    \nif BeeUnitAffectingCombat() and BeeRange(\"target\")<8 and BeeIsRun(\"神圣愤怒\") then\n    BeeRun(\"神圣愤怒\")\n    return;    \nend    \nif BeeIsRun(\"审判\") then\n    BeeRun(\"审判\")\n    return;    \nend    ",
					["Texture"] = "Interface\\Icons\\Spell_Holy_GreaterBlessingofKings",
				}, -- [6]
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
								["id"] = "11388158778-19261.252",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "759166-333459",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
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
								["id"] = "21388158778-19261.252",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "101026-978537",
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
								["id"] = "31388158778-19261.252",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "464399-481249",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
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
								["id"] = "41388158778-19261.252",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "984316-238036",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
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
								["id"] = "51388158778-19261.252",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "161876-263144",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [5]
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
									["lock"] = false,
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "282013-324457",
								["DelayChecked"] = false,
								["id"] = "61388158778-19261.252",
								["checked"] = true,
							}, -- [6]
						},
						["checked"] = true,
						["ApiDbf"] = {
						},
						["name"] = "防骑基础包",
						["Mark"] = "844781-293744",
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
			["name"] = "防骑基础包",
			["updata"] = {
			},
			["Mark"] = "881130-113491",
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
			["Unit"] = {
				["RaidListClass"] = {
				},
				["IsInfList"] = {
				},
				["TeamCount"] = {
				},
				["RaidList"] = {
				},
				["TeamNumber"] = 0,
				["CustomizeIndex"] = 0,
			},
			["Macro"] = {
				{
					["type"] = "script",
					["name"] = "骑乘状态",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11398915690-9304.439",
					["Macro"] = "--CTM 4.3 惩戒骑输出脚本 2011/12/25 by ATM\n--骑乘状态自动开十字军光环，其他不做任何动作，非骑乘状态惩戒光环\nif IsMounted(\"player\")==1 then\n    if not BeeStringFind(\"十字军光环\",BeeUnitBuffList(\"player\")) then  BeeRun(\"十字军光环\",\"player\");end\n    return;\nelse\n    if not BeeStringFind(\"惩戒光环\",BeeUnitBuffList(\"player\")) then BeeRun(\"惩戒光环\",\"player\");return;end\nend\n",
					["Texture"] = "Interface\\Icons\\Ability_Mount_Gryphon_01",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "优先技能",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "21398915690-9304.439",
					["Macro"] = "--插入技能\nif BeeCastSpellFast() then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Creature_Cursed_05",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "优先保命",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "31398915690-9304.439",
					["Macro"] = "--组队类型判断\ngrouptype=\"\";if GetNumGroupMembers()>0 then grouptype=\"raid\" else grouptype=\"party\" end\nif BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"治疗石\") then BeeRun(\"治疗石\");return;end\n--if BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"奇效治疗药水\") then BeeRun(\"奇效治疗药水\");return;end\n--判断自己血量低并且在战斗中开圣疗(惩戒/防骑对自己放圣疗)/给队员保护之手\nif BeeUnitAffectingCombat() and BeeIsRun(\"圣疗术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"圣疗术\",\"player\");return;end\n--血量低于20%能开无敌\nif BeeUnitAffectingCombat() and BeeIsRun(\"圣盾术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"圣盾术\",\"player\");return;end\n--给团队里血低于8%的人保护之手\nlocal BHZS = BeeGroupMinScript('BeeRange(unit)<=40 and BeeIsRun(\"保护之手\",unit) and BeeUnitHealth(unit,\"%\")<8 and UnitCanAssist(\"player\",unit) and not UnitIsDeadOrGhost(unit)',\"BeeUnitHealth(unit)\",grouptype)\nif BeeUnitAffectingCombat() and BHZS and BeeIsRun(\"保护之手\",BHZS) and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"保护之手\",BHZS);return;end\n--人类自利\nif BeeUnitRace(\"player\")==\"人类\" and BeeStringFind(\"冰冻陷阱,寒冰链,惊魂尖叫,深度冻结,致盲,制裁之锤,死亡缠绕,变形术,精神控制,诱惑,冰冻陷阱,妖术,冰霜新星,沉睡\",BeeUnitBuffList()) and BeeIsRun(\"自利\") then BeeRun(\"自利\");return;end",
					["Texture"] = "Interface\\Icons\\Ability_Mage_ShatterShield",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "自动补BUFF",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "41398915690-9304.439",
					["Macro"] = "--自动补真理圣印\nif not BeeStringFind(\"正义圣印,真理圣印,洞察圣印\",BeeUnitBuffList(\"player\")) and BeeIsRun(\"真理圣印\",\"player\") then BeeRun(\"真理圣印\",\"player\");BeeUnitCastSpellDelay(\"真理圣印\",2);return;end\n--没有王者或力量，补王者祝福\nif BeePlayerBuffTime(\"王者祝福\")<0 and BeePlayerBuffTime(\"力量祝福\")<0 and BeeIsRun(\"王者祝福\",\"player\") then BeeRun(\"王者祝福\",\"player\");BeeUnitCastSpellDelay(\"王者祝福\",2);return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Magic_GreaterBlessingofKings",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "自动协助T",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "51398915690-9304.439",
					["Macro"] = "--自动协助焦点T\nif BeeUnitAffectingCombat()and (UnitName(\"target\")==nil or UnitIsDead(\"target\"))  and not UnitIsDead(\"focustarget\") and BeeUnitCanAttack(\"focustarget\") then BeeRun(\"/target [target=focustarget]\");end\n\n--免开羊，免打断自己的法术\nlocal MKY=\"忏悔,变形术,妖术,诱惑,冰冻陷阱\";\nif BeeStringFind(MKY,BeeUnitBuffList(\"target\")) then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Defend",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = "自动打断",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "61398915690-9304.439",
					["Macro"] = "--自动打断\nlocal daduan=\"寒冰箭雨,星尘,腐臭蜂群,邪能烈焰,绝对服从,奥术波动,饥饿暗影,精神鞭笞,暗影钻削,暮光冲击波,甜美的摇篮曲,寒冰手,穿刺,冰霜之箭,时间漩涡,惩击\";\n--自动打断\nlocal spelljd, _, _, _, _, _, _, ddjd = UnitCastingInfo(\"focustarget\")\nlocal spellzj, _, _, _, _, _, _, ddzj = UnitCastingInfo(\"target\")\nif BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\")) and BeeIsRun(\"责难\",\"target\")  then BeeRun(\"责难\",\"target\");return;end\nif BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\"))  and BeeSpellCD(\"责难\")>0 and  BeeIsRun(\"制裁之锤\",\"target\")  then BeeRun(\"制裁之锤\",\"target\");return;end\n",
					["Texture"] = "Interface\\Icons\\Ability_Kick",
				}, -- [6]
				{
					["type"] = "script",
					["name"] = "自动驱散",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "71398915690-9304.439",
					["Macro"] = "--自动驱散\ngrouptype=\"\";if GetNumGroupMembers()>0 then  grouptype=\"raid\" else  grouptype=\"party\" end\nlocal n,qusan = BeeGroupCountScript('BeeRange(unit)<=40 and BeeIsRun(\"清洁术\",unit)',\"BeeUnitBuffInfo(unit,2,'Disease,Poison',0)>0 and not UnitIsDeadOrGhost(unit)\",grouptype)\nif n >0 and BeeIsRun(\"清洁术\",qusan) then BeeRun(\"清洁术\",qusan);return;end",
					["Texture"] = "Interface\\Icons\\ABILITY_POISONSTING",
				}, -- [7]
				{
					["type"] = "script",
					["name"] = "自动开饰品",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "81398915690-9304.439",
					["Macro"] = "--自动开饰品\nif BeeUnitAffectingCombat()  and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',13))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',13)))==0 then BeeRun(\"/use 13\") return end\nif BeeUnitAffectingCombat()  and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  return end",
					["Texture"] = "Interface\\Icons\\Ability_Druid_EmpoweredRejuvination",
				}, -- [8]
				{
					["type"] = "script",
					["name"] = "惩戒输出（AOE）",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "91398915690-9304.439",
					["Macro"] = "if BeeUnitAffectingCombat()  and  BeeIsRun(\"圣佑术\")  then BeeRun(\"圣佑术\");return;end\nif BeeUnitAffectingCombat()  and  BeeIsRun(\"复仇之怒\") and  BeePlayerDeBuffTime(\"自律\")<1 then BeeRun(\"复仇之怒\");return;end\nif BeeIsRun(\"狂热\",\"nogoal\") and BeeHolyPower(\"player\") == 3 then BeeRun(\"狂热\",\"nogoal\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")==3 then BeeRun(\"异端裁决\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")>1 then BeeRun(\"异端裁决\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")==1 and (BeePlayerBuffTime(\"战争艺术\")>1 or BeePlayerBuffTime(\"复仇之怒\")>1) then  BeeRun(\"异端裁决\");return;end\nif IsSpellInRange(\"十字军打击\",\"target\")==1 and BeeIsRun(\"神圣风暴\",\"target\") and  BeeHolyPower(\"player\")<3 and IsSpellInRange(\"十字军打击\",\"target\")==1 then BeeRun(\"神圣风暴\");return;end\nif BeeIsRun(\"圣殿骑士的裁决\",\"target\") and BeeHolyPower(\"player\")== 3  and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\nif BeePlayerBuffTime(\"神圣意志\")>1  and  BeeIsRun(\"圣殿骑士的裁决\",\"target\")  and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end    \nif BeeStringFind(\"亡灵,恶魔,龙类,元素生物\",UnitCreatureType('target'))then \n    if BeeIsRun(\"驱邪术\",\"target\")and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1  then BeeRun(\"驱邪术\");return;end   \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") and IsSpellInRange(\"愤怒之锤\",\"target\")==1 then BeeRun(\"愤怒之锤\");return;end\nelse \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\")  and IsSpellInRange(\"愤怒之锤\",\"target\")==1 then BeeRun(\"愤怒之锤\");return;end\n    if BeeIsRun(\"驱邪术\",\"target\") and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1  then BeeRun(\"驱邪术\");return;end   \nend\nif BeeIsRun(\"审判\")  and IsSpellInRange(\"审判\",\"target\")==1 then BeeRun(\"审判\");return;end\nif BeeUnitAffectingCombat()  and BeeIsRun(\"神圣愤怒\",\"target\") and IsSpellInRange(\"神圣愤怒\",\"target\")==1 then BeeRun(\"神圣愤怒\");return;end\n--if BeeUnitAffectingCombat(\"player\")  and BeeUnitMana(\"player\",\"%\")>90 and BeeIsRun(\"奉献\") then BeeRun(\"奉献\");return;end\n--蓝低于3000，回蓝\nif BeeUnitAffectingCombat()  and BeeUnitMana(\"player\")<3000 and BeeIsRun(\"神圣恳求\") then BeeRun(\"神圣恳求\");return;end\n\n\n\n",
					["Texture"] = "Interface\\Icons\\Ability_Paladin_DivineStorm",
				}, -- [9]
				{
					["type"] = "script",
					["name"] = "惩戒输出（单体）",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "101398915690-9304.439",
					["Macro"] = "--远古列王守卫开启后叠加10层远古能量，就用魔像之血药水\n\n\nif BeePlayerBuffCount(\"远古能量\")>=10 and BeeIsRun(\"魔像之血药水\") then BeeRun(\"魔像之血药水\");return;end\n\n--远古列王守卫开启后叠加10层后远古能量，使用狂热\nif BeePlayerBuffCount(\"远古能量\")>=10 and BeeIsRun(\"狂热\",\"nogoal\") then BeeRun(\"狂热\",\"nogoal\");return;end\n\n\n--狂热效果存在，使用复仇之怒\nif BeePlayerBuffTime(\"狂热\")>0.1 and BeeIsRun(\"复仇之怒\"\n) then BeeRun(\"复仇之怒\");return;end\n\n--异端裁决可用、异端裁决BUFF低于3秒、有3道圣能时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")==3 then BeeRun(\"异端裁决\");return;end\n\n\n--异端裁决可用、无异端裁决BUFF、有2道以上圣能时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")>1 then BeeRun(\"异端裁决\");return;end\n\n\n\n--异端裁决可用、无异端裁决BUFF、有1道圣能、有战争艺术BUFF、或者有复仇之怒BUFF时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")==1 and (BeePlayerBuffTime(\"战争艺术\")>1 or BeePlayerBuffTime(\"复仇之怒\")>1) then  BeeRun(\"异端裁决\");return;end\n\n\n--异端裁决可用、异端裁决BUFF低于3秒、不足2道以上圣能、有神圣意志时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")<2 and BeePlayerBuffTime(\"神圣意志\")>1 then  BeeRun(\"异端裁决\");return;end\n\n\n\n--十字军打击可用、少于3道圣能、在十字军打击技能范围内，执行十字军打击；\nif BeeIsRun(\"十字军打击\",\"target\") and  BeeHolyPower(\"player\")<3 and IsSpellInRange(\"十字军打击\",\"target\")==1 then BeeRun(\"/startattack\\n/cast 十字军打击\");return;end\n\n\n\n--圣殿骑士的裁决可用、有3道圣能、在圣殿骑士的裁决技能范围内，执行圣殿骑士的裁决；\nif BeeIsRun(\"圣殿骑士的裁决\",\"target\") and BeeHolyPower(\"player\")== 3 and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\n\n\n\n--有神圣意志BUFF，圣殿骑士的裁决可用、在圣殿骑士的裁决技能范围内，执行圣殿骑士的裁决；\nif BeePlayerBuffTime(\"神圣意志\")>1  and  BeeIsRun(\"圣殿骑士的裁决\",\"target\") and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\n\n\n\n--（配合2件T13属性）无狂热BUFF，审判可用、在审判技能范围内，执行审判\nif BeePlayerBuffTime(\"狂热\")<1 and BeeIsRun(\"审判\") and IsSpellInRange(\"审判\",\"target\")==1 then BeeRun(\"审判\");return;end\n\n--有战争艺术、驱邪术可用、在驱邪术技能范围内，执行驱邪术；\n\nif BeeIsRun(\"驱邪术\",\"target\") and BeePlayerBuffTime(\"战争艺术\")>1 then BeeRun(\"驱邪术\");return;end   \n\n--目标是亡灵,恶魔,龙类,元素生物，有战争艺术BUFF、驱邪术可用、在驱邪术技能范围内，执行驱邪术；\nif BeeStringFind(\"亡灵,恶魔,龙类,元素生物\",UnitCreatureType('target'))then if BeeIsRun(\"驱邪术\",\"target\")and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1 then BeeRun(\"驱邪术\");return;end\n    \n    --目标生命值低于20%、或者有复仇之怒BUFF、愤怒之锤可用、在愤怒之锤技能范围内，执行愤怒之锤；\n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") then BeeRun(\"愤怒之锤\");return;end\nelse \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") then BeeRun(\"愤怒之锤\");return;end\n    end\n    --无狂热BUFF，十字军打击冷却时间大于0.8秒、审判冷却时间大于0.8秒、在战斗状态内，执行神圣愤怒；\n    if BeePlayerBuffTime(\"狂热\")<1 and BeeSpellCD(\"十字军打击\")>0.8 and BeeSpellCD(\"审判\")>0.8 and BeeUnitAffectingCombat(\"player\") and BeeIsRun(\"神圣愤怒\",\"target\") then BeeRun(\"神圣愤怒\");return;end\n\n\n--无狂热BUFF，十字军打击冷却时间大于1.2秒、审判冷却时间大于1.2秒、在战斗状态内、法力值大于90%，执行奉献；\nif BeePlayerBuffTime(\"狂热\")<1 and BeeUnitAffectingCombat(\"player\") and BeeUnitMana(\"player\",\"%\")>90 and BeeSpellCD(\"十字军打击\")>0.8 and BeeSpellCD(\"审判\")>1.1  and BeeIsRun(\"奉献\") then BeeRun(\"奉献\");return;end\n\n\n--战斗状态内、蓝低于15000，执行神圣恳求\n\nif BeeUnitAffectingCombat() and BeeUnitMana(\"player\")<15000 and BeeIsRun(\"神圣恳求\") then BeeRun(\"神圣恳求\");return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Holy_CrusaderStrike",
				}, -- [10]
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
								["id"] = "11398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [1]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "21398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [2]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "31398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [3]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "41398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [4]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "51398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [5]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "61398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [6]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "71398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [7]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "81398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [8]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "91398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [9]
							{
								["TargetSubgroup"] = -1,
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "101398915690-9304.439",
								["PropertiesSet_Continue_Checked"] = false,
								["Targets"] = {
								},
								["unit"] = "nogoal",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["subgroup"] = -3,
								["Target"] = "无目标",
								["checked"] = true,
								["DelayValue"] = 0,
								["DelayChecked"] = false,
							}, -- [10]
						},
						["name"] = "惩戒骑基础包",
						["checked"] = true,
					}, -- [1]
				},
			},
			["Remark"] = "",
			["Import"] = true,
			["Locale"] = "zhCN",
			["Config"] = {
			},
			["name"] = "惩戒骑基础包",
			["updata"] = {
			},
			["Mark"] = "647062-292767",
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

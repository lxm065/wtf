
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
			["id"] = "11397562896-4432.157",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--CTM 4.3 惩戒骑输出脚本 2011/12/25 by ATM\n--骑乘状态自动开十字军光环，其他不做任何动作，非骑乘状态惩戒光环\nif IsMounted(\"player\")==1 then\n    if not BeeStringFind(\"十字军光环\",BeeUnitBuffList(\"player\")) then  BeeRun(\"十字军光环\",\"player\");end\n    return;\nelse\n    if not BeeStringFind(\"惩戒光环\",BeeUnitBuffList(\"player\")) then BeeRun(\"惩戒光环\",\"player\");return;end\nend\n",
			["Texture"] = "Interface\\Icons\\Ability_Mount_Gryphon_01",
		}, -- [1]
		{
			["type"] = "script",
			["name"] = "优先技能",
			["id"] = "21397562896-4432.157",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--插入技能\nif BeeCastSpellFast() then return;end",
			["Texture"] = "Interface\\Icons\\Ability_Creature_Cursed_05",
		}, -- [2]
		{
			["type"] = "script",
			["name"] = "优先保命",
			["id"] = "31397562896-4432.157",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--组队类型判断\ngrouptype=\"\";if GetNumGroupMembers()>0 then grouptype=\"raid\" else grouptype=\"party\" end\nif BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"治疗石\") then BeeRun(\"治疗石\");return;end\n--if BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"奇效治疗药水\") then BeeRun(\"奇效治疗药水\");return;end\n--判断自己血量低并且在战斗中开圣疗(惩戒/防骑对自己放圣疗)/给队员保护之手\nif BeeUnitAffectingCombat() and BeeIsRun(\"圣疗术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"圣疗术\",\"player\");return;end\n--血量低于20%能开无敌\nif BeeUnitAffectingCombat() and BeeIsRun(\"圣盾术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"圣盾术\",\"player\");return;end\n--给团队里血低于8%的人保护之手\nlocal BHZS = BeeGroupMinScript('BeeRange(unit)<=40 and BeeIsRun(\"保护之手\",unit) and BeeUnitHealth(unit,\"%\")<8 and UnitCanAssist(\"player\",unit) and not UnitIsDeadOrGhost(unit)',\"BeeUnitHealth(unit)\",grouptype)\nif BeeUnitAffectingCombat() and BHZS and BeeIsRun(\"保护之手\",BHZS) and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"保护之手\",BHZS);return;end\n--人类自利\nif BeeUnitRace(\"player\")==\"人类\" and BeeStringFind(\"冰冻陷阱,寒冰链,惊魂尖叫,深度冻结,致盲,制裁之锤,死亡缠绕,变形术,精神控制,诱惑,冰冻陷阱,妖术,冰霜新星,沉睡\",BeeUnitBuffList()) and BeeIsRun(\"自利\") then BeeRun(\"自利\");return;end",
			["Texture"] = "Interface\\Icons\\Ability_Mage_ShatterShield",
		}, -- [3]
		{
			["type"] = "script",
			["name"] = "自动补BUFF",
			["id"] = "41397562896-4432.157",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动补真理圣印\nif not BeeStringFind(\"正义圣印,真理圣印,洞察圣印\",BeeUnitBuffList(\"player\")) and BeeIsRun(\"真理圣印\",\"player\") then BeeRun(\"真理圣印\",\"player\");BeeUnitCastSpellDelay(\"真理圣印\",2);return;end\n--没有王者或力量，补王者祝福\nif BeePlayerBuffTime(\"王者祝福\")<0 and BeePlayerBuffTime(\"力量祝福\")<0 and BeeIsRun(\"王者祝福\",\"player\") then BeeRun(\"王者祝福\",\"player\");BeeUnitCastSpellDelay(\"王者祝福\",2);return;end\n",
			["Texture"] = "Interface\\Icons\\Spell_Magic_GreaterBlessingofKings",
		}, -- [4]
		{
			["type"] = "script",
			["name"] = "自动协助T",
			["id"] = "51397562896-4432.157",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动协助焦点T\nif BeeUnitAffectingCombat()and (UnitName(\"target\")==nil or UnitIsDead(\"target\"))  and not UnitIsDead(\"focustarget\") and BeeUnitCanAttack(\"focustarget\") then BeeRun(\"/target [target=focustarget]\");end\n\n--免开羊，免打断自己的法术\nlocal MKY=\"忏悔,变形术,妖术,诱惑,冰冻陷阱\";\nif BeeStringFind(MKY,BeeUnitBuffList(\"target\")) then return;end",
			["Texture"] = "Interface\\Icons\\Ability_Defend",
		}, -- [5]
		{
			["type"] = "script",
			["name"] = "自动打断",
			["id"] = "61397562896-4432.157",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动打断\nlocal daduan=\"寒冰箭雨,星尘,腐臭蜂群,邪能烈焰,绝对服从,奥术波动,饥饿暗影,精神鞭笞,暗影钻削,暮光冲击波,甜美的摇篮曲,寒冰手,穿刺,冰霜之箭,时间漩涡,惩击\";\n--自动打断\nlocal spelljd, _, _, _, _, _, _, ddjd = UnitCastingInfo(\"focustarget\")\nlocal spellzj, _, _, _, _, _, _, ddzj = UnitCastingInfo(\"target\")\nif BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\")) and BeeIsRun(\"责难\",\"target\")  then BeeRun(\"责难\",\"target\");return;end\nif BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\"))  and BeeSpellCD(\"责难\")>0 and  BeeIsRun(\"制裁之锤\",\"target\")  then BeeRun(\"制裁之锤\",\"target\");return;end\n",
			["Texture"] = "Interface\\Icons\\Ability_Kick",
		}, -- [6]
		{
			["type"] = "script",
			["name"] = "自动驱散",
			["id"] = "71397562896-4432.157",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动驱散\ngrouptype=\"\";if GetNumGroupMembers()>0 then  grouptype=\"raid\" else  grouptype=\"party\" end\nlocal n,qusan = BeeGroupCountScript('BeeRange(unit)<=40 and BeeIsRun(\"清洁术\",unit)',\"BeeUnitBuffInfo(unit,2,'Disease,Poison',0)>0 and not UnitIsDeadOrGhost(unit)\",grouptype)\nif n >0 and BeeIsRun(\"清洁术\",qusan) then BeeRun(\"清洁术\",qusan);return;end",
			["Texture"] = "Interface\\Icons\\ABILITY_POISONSTING",
		}, -- [7]
		{
			["type"] = "script",
			["name"] = "自动开饰品",
			["id"] = "81397562896-4432.157",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动开饰品\nif BeeUnitAffectingCombat()  and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',13))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',13)))==0 then BeeRun(\"/use 13\") return end\nif BeeUnitAffectingCombat()  and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  return end",
			["Texture"] = "Interface\\Icons\\Ability_Druid_EmpoweredRejuvination",
		}, -- [8]
		{
			["type"] = "script",
			["name"] = "惩戒输出（AOE）",
			["id"] = "91397562896-4432.157",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "if BeeUnitAffectingCombat()  and  BeeIsRun(\"圣佑术\")  then BeeRun(\"圣佑术\");return;end\nif BeeUnitAffectingCombat()  and  BeeIsRun(\"复仇之怒\") and  BeePlayerDeBuffTime(\"自律\")<1 then BeeRun(\"复仇之怒\");return;end\nif BeeIsRun(\"狂热\",\"nogoal\") and BeeHolyPower(\"player\") == 3 then BeeRun(\"狂热\",\"nogoal\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")==3 then BeeRun(\"异端裁决\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")>1 then BeeRun(\"异端裁决\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")==1 and (BeePlayerBuffTime(\"战争艺术\")>1 or BeePlayerBuffTime(\"复仇之怒\")>1) then  BeeRun(\"异端裁决\");return;end\nif IsSpellInRange(\"十字军打击\",\"target\")==1 and BeeIsRun(\"神圣风暴\",\"target\") and  BeeHolyPower(\"player\")<3 and IsSpellInRange(\"十字军打击\",\"target\")==1 then BeeRun(\"神圣风暴\");return;end\nif BeeIsRun(\"圣殿骑士的裁决\",\"target\") and BeeHolyPower(\"player\")== 3  and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\nif BeePlayerBuffTime(\"神圣意志\")>1  and  BeeIsRun(\"圣殿骑士的裁决\",\"target\")  and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end    \nif BeeStringFind(\"亡灵,恶魔,龙类,元素生物\",UnitCreatureType('target'))then \n    if BeeIsRun(\"驱邪术\",\"target\")and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1  then BeeRun(\"驱邪术\");return;end   \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") and IsSpellInRange(\"愤怒之锤\",\"target\")==1 then BeeRun(\"愤怒之锤\");return;end\nelse \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\")  and IsSpellInRange(\"愤怒之锤\",\"target\")==1 then BeeRun(\"愤怒之锤\");return;end\n    if BeeIsRun(\"驱邪术\",\"target\") and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1  then BeeRun(\"驱邪术\");return;end   \nend\nif BeeIsRun(\"审判\")  and IsSpellInRange(\"审判\",\"target\")==1 then BeeRun(\"审判\");return;end\nif BeeUnitAffectingCombat()  and BeeIsRun(\"神圣愤怒\",\"target\") and IsSpellInRange(\"神圣愤怒\",\"target\")==1 then BeeRun(\"神圣愤怒\");return;end\n--if BeeUnitAffectingCombat(\"player\")  and BeeUnitMana(\"player\",\"%\")>90 and BeeIsRun(\"奉献\") then BeeRun(\"奉献\");return;end\n--蓝低于3000，回蓝\nif BeeUnitAffectingCombat()  and BeeUnitMana(\"player\")<3000 and BeeIsRun(\"神圣恳求\") then BeeRun(\"神圣恳求\");return;end\n\n\n\n",
			["Texture"] = "Interface\\Icons\\Ability_Paladin_DivineStorm",
		}, -- [9]
		{
			["type"] = "script",
			["name"] = "惩戒输出（单体）",
			["id"] = "101397562896-4432.157",
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
						["id"] = "11397562896-4432.157",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "736249-448539",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [1]
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
						["id"] = "21397562896-4432.157",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "447319-182678",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [2]
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
						["id"] = "31397562896-4432.157",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "401944-603743",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [3]
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
						["Mark"] = "156386-668822",
						["checked"] = false,
						["id"] = "41397562896-4432.157",
						["spellId"] = 0,
					}, -- [4]
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
						["id"] = "51397562896-4432.157",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "716762-336637",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
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
						["id"] = "61397562896-4432.157",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "406199-286659",
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
						["id"] = "71397562896-4432.157",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "520793-874059",
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
						["id"] = "81397562896-4432.157",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "524190-167884",
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
						["id"] = "91397562896-4432.157",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "521954-502176",
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
						["id"] = "101397562896-4432.157",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "639402-971527",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["checked"] = true,
					}, -- [10]
				},
				["checked"] = true,
				["ApiDbf"] = {
				},
				["name"] = "惩戒骑基础包",
				["Mark"] = "805122-840386",
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
			["pettarget"] = {
				["name"] = "宠物的目标",
				["raidn"] = -18,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "pettarget",
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
			["FireHasBeenSet"] = {
				["cuid"] = 1,
				["name"] = "被集火目标",
				["raidn"] = -3,
				["subgroup"] = -1,
				["englishClass"] = "",
				["class"] = "",
				["unit"] = "FireHasBeenSet",
			},
			["mouseover"] = {
				["name"] = "鼠标目标",
				["raidn"] = -2,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "mouseover",
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
			["杀猪刀猴赛雷"] = {
				["subgroup"] = 0,
				["name"] = "杀猪刀猴赛雷",
				["raidn"] = 1,
				["englishClass"] = "PALADIN",
				["class"] = "圣骑士",
				["unitid"] = "player",
				["unit"] = "杀猪刀猴赛雷",
			},
			["boss3"] = {
				["name"] = "Boss3",
				["raidn"] = -23,
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
	["Mark"] = "739514-450698",
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
					["法师"] = {
						["Count"] = 1,
						["englishClass"] = "MAGE",
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
					[0] = 2,
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
					["maintank6"] = {
						["unit"] = "maintank6",
						["name"] = "MT6",
						["raidn"] = -15,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 16,
					},
					["滚粗"] = {
						["subgroup"] = 0,
						["name"] = "滚粗",
						["raidn"] = 1,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "party1",
						["unit"] = "滚粗",
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
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
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
					["FireHasBeenSet"] = {
						["unit"] = "FireHasBeenSet",
						["name"] = "被集火目标",
						["raidn"] = -3,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 1,
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
					["pettarget"] = {
						["name"] = "宠物的目标",
						["raidn"] = -18,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pettarget",
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
					["杀猪刀猴赛雷"] = {
						["subgroup"] = 0,
						["name"] = "杀猪刀猴赛雷",
						["raidn"] = 1,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "player",
						["unit"] = "杀猪刀猴赛雷",
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
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
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
			["Mark"] = "232866-914074",
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
					["武僧"] = {
						["Count"] = 2,
						["englishClass"] = "MONK",
					},
					["德鲁伊"] = {
						["Count"] = 3,
						["englishClass"] = "DRUID",
					},
					["圣骑士"] = {
						["Count"] = 4,
						["englishClass"] = "PALADIN",
					},
					["猎人"] = {
						["Count"] = 4,
						["englishClass"] = "HUNTER",
					},
					["战士"] = {
						["Count"] = 2,
						["englishClass"] = "WARRIOR",
					},
					["潜行者"] = {
						["Count"] = 4,
						["englishClass"] = "ROGUE",
					},
					["术士"] = {
						["Count"] = 3,
						["englishClass"] = "WARLOCK",
					},
					["牧师"] = {
						["Count"] = 3,
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
					5, -- [1]
					5, -- [2]
					5, -- [3]
					5, -- [4]
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
					["maintank1"] = {
						["unit"] = "maintank1",
						["name"] = "MT1",
						["raidn"] = -10,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 11,
					},
					["曰川钢板君-古达克"] = {
						["subgroup"] = 4,
						["name"] = "曰川钢板君-古达克",
						["raidn"] = 18,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid18",
						["unit"] = "曰川钢板君-古达克",
					},
					["丶哲哲-海克泰尔"] = {
						["subgroup"] = 1,
						["name"] = "丶哲哲-海克泰尔",
						["raidn"] = 2,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid2",
						["unit"] = "丶哲哲-海克泰尔",
					},
					["可爱的树人-鹰巢山"] = {
						["subgroup"] = 2,
						["name"] = "可爱的树人-鹰巢山",
						["raidn"] = 7,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid7",
						["unit"] = "可爱的树人-鹰巢山",
					},
					["紫苏停-迦拉克隆"] = {
						["subgroup"] = 2,
						["name"] = "紫苏停-迦拉克隆",
						["raidn"] = 10,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid10",
						["unit"] = "紫苏停-迦拉克隆",
					},
					["肥灬嘟嘟-奥尔加隆"] = {
						["subgroup"] = 4,
						["name"] = "肥灬嘟嘟-奥尔加隆",
						["raidn"] = 17,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid17",
						["unit"] = "肥灬嘟嘟-奥尔加隆",
					},
					["Varek-血色十字军"] = {
						["subgroup"] = 3,
						["name"] = "Varek-血色十字军",
						["raidn"] = 14,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid14",
						["unit"] = "Varek-血色十字军",
					},
					["target"] = {
						["name"] = "当前目标",
						["raidn"] = -7,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "target",
					},
					["巧克力甜筒-奥尔加隆"] = {
						["subgroup"] = 2,
						["name"] = "巧克力甜筒-奥尔加隆",
						["raidn"] = 9,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid9",
						["unit"] = "巧克力甜筒-奥尔加隆",
					},
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["丶冄冄-海克泰尔"] = {
						["subgroup"] = 1,
						["name"] = "丶冄冄-海克泰尔",
						["raidn"] = 3,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid3",
						["unit"] = "丶冄冄-海克泰尔",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
					},
					["大哥还是你-克尔苏加德"] = {
						["subgroup"] = 5,
						["role"] = "MAINTANK",
						["name"] = "大哥还是你-克尔苏加德",
						["raidn"] = 24,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid24",
						["unit"] = "大哥还是你-克尔苏加德",
					},
					["player"] = {
						["name"] = "自己",
						["raidn"] = -8,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "player",
					},
					["杀猪刀猴赛雷"] = {
						["subgroup"] = 3,
						["role"] = "MAINTANK",
						["name"] = "杀猪刀猴赛雷",
						["raidn"] = 1,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid1",
						["unit"] = "杀猪刀猴赛雷",
					},
					["血丶紫衿-奥尔加隆"] = {
						["subgroup"] = 2,
						["name"] = "血丶紫衿-奥尔加隆",
						["raidn"] = 11,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid11",
						["unit"] = "血丶紫衿-奥尔加隆",
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
					["maintank2"] = {
						["unit"] = "maintank2",
						["name"] = "MT2",
						["raidn"] = -11,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 12,
					},
					["剑门锯魔男术-纳沙塔尔"] = {
						["subgroup"] = 5,
						["name"] = "剑门锯魔男术-纳沙塔尔",
						["raidn"] = 23,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid23",
						["unit"] = "剑门锯魔男术-纳沙塔尔",
					},
					["boss4"] = {
						["name"] = "Boss4",
						["raidn"] = -24,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
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
					["pet"] = {
						["name"] = "宠物",
						["raidn"] = -19,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pet",
					},
					["Silencerjie-红云台地"] = {
						["subgroup"] = 5,
						["name"] = "Silencerjie-红云台地",
						["raidn"] = 22,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid22",
						["unit"] = "Silencerjie-红云台地",
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
					["夜半销魂-埃德萨拉"] = {
						["subgroup"] = 5,
						["name"] = "夜半销魂-埃德萨拉",
						["raidn"] = 25,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid25",
						["unit"] = "夜半销魂-埃德萨拉",
					},
					["木子牧-逐日者"] = {
						["subgroup"] = 1,
						["name"] = "木子牧-逐日者",
						["raidn"] = 5,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid5",
						["unit"] = "木子牧-逐日者",
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
					["focus"] = {
						["name"] = "焦点目标",
						["raidn"] = -5,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focus",
					},
					["嗯啊栋-燃烧之刃"] = {
						["subgroup"] = 3,
						["name"] = "嗯啊栋-燃烧之刃",
						["raidn"] = 13,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid13",
						["unit"] = "嗯啊栋-燃烧之刃",
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
					["Mdou-血色十字军"] = {
						["subgroup"] = 4,
						["name"] = "Mdou-血色十字军",
						["raidn"] = 20,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid20",
						["unit"] = "Mdou-血色十字军",
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
					["FireHasBeenSet"] = {
						["unit"] = "FireHasBeenSet",
						["name"] = "被集火目标",
						["raidn"] = -3,
						["englishClass"] = "",
						["class"] = "",
						["subgroup"] = -1,
						["cuid"] = 1,
					},
					["乱战斗士-奥尔加隆"] = {
						["subgroup"] = 4,
						["name"] = "乱战斗士-奥尔加隆",
						["raidn"] = 19,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid19",
						["unit"] = "乱战斗士-奥尔加隆",
					},
					["targettarget"] = {
						["name"] = "当前目标的目标",
						["raidn"] = -6,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "targettarget",
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
					["眼睁睁看你死-黑石尖塔"] = {
						["subgroup"] = 5,
						["name"] = "眼睁睁看你死-黑石尖塔",
						["raidn"] = 21,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid21",
						["unit"] = "眼睁睁看你死-黑石尖塔",
					},
					["只是毛毛-尘风峡谷"] = {
						["subgroup"] = 1,
						["name"] = "只是毛毛-尘风峡谷",
						["raidn"] = 6,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid6",
						["unit"] = "只是毛毛-尘风峡谷",
					},
					["mouseovertarget"] = {
						["name"] = "鼠标目标的目标",
						["raidn"] = -1,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseovertarget",
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
					["那个丶消徳-迦拉克隆"] = {
						["subgroup"] = 1,
						["name"] = "那个丶消徳-迦拉克隆",
						["raidn"] = 4,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid4",
						["unit"] = "那个丶消徳-迦拉克隆",
					},
					["boss3"] = {
						["name"] = "Boss3",
						["raidn"] = -23,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["山村老妖-斯坦索姆"] = {
						["subgroup"] = 2,
						["name"] = "山村老妖-斯坦索姆",
						["raidn"] = 8,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid8",
						["unit"] = "山村老妖-斯坦索姆",
					},
					["塔撒-燃烧之刃"] = {
						["subgroup"] = 3,
						["name"] = "塔撒-燃烧之刃",
						["raidn"] = 12,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid12",
						["unit"] = "塔撒-燃烧之刃",
					},
					["专治无聊-迪托马斯"] = {
						["subgroup"] = 3,
						["name"] = "专治无聊-迪托马斯",
						["raidn"] = 15,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid15",
						["unit"] = "专治无聊-迪托马斯",
					},
					["安少怀萌-奥尔加隆"] = {
						["subgroup"] = 4,
						["name"] = "安少怀萌-奥尔加隆",
						["raidn"] = 16,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid16",
						["unit"] = "安少怀萌-奥尔加隆",
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
						"杀猪刀猴赛雷", -- [1]
						"大哥还是你-克尔苏加德", -- [2]
					},
				},
			},
			["Macro"] = {
				{
					["type"] = "script",
					["name"] = "骑乘状态",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11397562896-4432.157",
					["Macro"] = "--CTM 4.3 惩戒骑输出脚本 2011/12/25 by ATM\n--骑乘状态自动开十字军光环，其他不做任何动作，非骑乘状态惩戒光环\nif IsMounted(\"player\")==1 then\n    if not BeeStringFind(\"十字军光环\",BeeUnitBuffList(\"player\")) then  BeeRun(\"十字军光环\",\"player\");end\n    return;\nelse\n    if not BeeStringFind(\"惩戒光环\",BeeUnitBuffList(\"player\")) then BeeRun(\"惩戒光环\",\"player\");return;end\nend\n",
					["Texture"] = "Interface\\Icons\\Ability_Mount_Gryphon_01",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "优先技能",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "21397562896-4432.157",
					["Macro"] = "--插入技能\nif BeeCastSpellFast() then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Creature_Cursed_05",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "优先保命",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "31397562896-4432.157",
					["Macro"] = "--组队类型判断\ngrouptype=\"\";if GetNumGroupMembers()>0 then grouptype=\"raid\" else grouptype=\"party\" end\nif BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"治疗石\") then BeeRun(\"治疗石\");return;end\n--if BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"奇效治疗药水\") then BeeRun(\"奇效治疗药水\");return;end\n--判断自己血量低并且在战斗中开圣疗(惩戒/防骑对自己放圣疗)/给队员保护之手\nif BeeUnitAffectingCombat() and BeeIsRun(\"圣疗术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"圣疗术\",\"player\");return;end\n--血量低于20%能开无敌\nif BeeUnitAffectingCombat() and BeeIsRun(\"圣盾术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"圣盾术\",\"player\");return;end\n--给团队里血低于8%的人保护之手\nlocal BHZS = BeeGroupMinScript('BeeRange(unit)<=40 and BeeIsRun(\"保护之手\",unit) and BeeUnitHealth(unit,\"%\")<8 and UnitCanAssist(\"player\",unit) and not UnitIsDeadOrGhost(unit)',\"BeeUnitHealth(unit)\",grouptype)\nif BeeUnitAffectingCombat() and BHZS and BeeIsRun(\"保护之手\",BHZS) and BeePlayerDeBuffTime(\"自律\")<0 then BeeRun(\"保护之手\",BHZS);return;end\n--人类自利\nif BeeUnitRace(\"player\")==\"人类\" and BeeStringFind(\"冰冻陷阱,寒冰链,惊魂尖叫,深度冻结,致盲,制裁之锤,死亡缠绕,变形术,精神控制,诱惑,冰冻陷阱,妖术,冰霜新星,沉睡\",BeeUnitBuffList()) and BeeIsRun(\"自利\") then BeeRun(\"自利\");return;end",
					["Texture"] = "Interface\\Icons\\Ability_Mage_ShatterShield",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "自动补BUFF",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "41397562896-4432.157",
					["Macro"] = "--自动补真理圣印\nif not BeeStringFind(\"正义圣印,真理圣印,洞察圣印\",BeeUnitBuffList(\"player\")) and BeeIsRun(\"真理圣印\",\"player\") then BeeRun(\"真理圣印\",\"player\");BeeUnitCastSpellDelay(\"真理圣印\",2);return;end\n--没有王者或力量，补王者祝福\nif BeePlayerBuffTime(\"王者祝福\")<0 and BeePlayerBuffTime(\"力量祝福\")<0 and BeeIsRun(\"王者祝福\",\"player\") then BeeRun(\"王者祝福\",\"player\");BeeUnitCastSpellDelay(\"王者祝福\",2);return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Magic_GreaterBlessingofKings",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "自动协助T",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "51397562896-4432.157",
					["Macro"] = "--自动协助焦点T\nif BeeUnitAffectingCombat()and (UnitName(\"target\")==nil or UnitIsDead(\"target\"))  and not UnitIsDead(\"focustarget\") and BeeUnitCanAttack(\"focustarget\") then BeeRun(\"/target [target=focustarget]\");end\n\n--免开羊，免打断自己的法术\nlocal MKY=\"忏悔,变形术,妖术,诱惑,冰冻陷阱\";\nif BeeStringFind(MKY,BeeUnitBuffList(\"target\")) then return;end",
					["Texture"] = "Interface\\Icons\\Ability_Defend",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = "自动打断",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "61397562896-4432.157",
					["Macro"] = "--自动打断\nlocal daduan=\"寒冰箭雨,星尘,腐臭蜂群,邪能烈焰,绝对服从,奥术波动,饥饿暗影,精神鞭笞,暗影钻削,暮光冲击波,甜美的摇篮曲,寒冰手,穿刺,冰霜之箭,时间漩涡,惩击\";\n--自动打断\nlocal spelljd, _, _, _, _, _, _, ddjd = UnitCastingInfo(\"focustarget\")\nlocal spellzj, _, _, _, _, _, _, ddzj = UnitCastingInfo(\"target\")\nif BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\")) and BeeIsRun(\"责难\",\"target\")  then BeeRun(\"责难\",\"target\");return;end\nif BeeUnitAffectingCombat() and BeeStringFind(daduan,BeeUnitCastSpellName(\"target\"))  and BeeSpellCD(\"责难\")>0 and  BeeIsRun(\"制裁之锤\",\"target\")  then BeeRun(\"制裁之锤\",\"target\");return;end\n",
					["Texture"] = "Interface\\Icons\\Ability_Kick",
				}, -- [6]
				{
					["type"] = "script",
					["name"] = "自动驱散",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "71397562896-4432.157",
					["Macro"] = "--自动驱散\ngrouptype=\"\";if GetNumGroupMembers()>0 then  grouptype=\"raid\" else  grouptype=\"party\" end\nlocal n,qusan = BeeGroupCountScript('BeeRange(unit)<=40 and BeeIsRun(\"清洁术\",unit)',\"BeeUnitBuffInfo(unit,2,'Disease,Poison',0)>0 and not UnitIsDeadOrGhost(unit)\",grouptype)\nif n >0 and BeeIsRun(\"清洁术\",qusan) then BeeRun(\"清洁术\",qusan);return;end",
					["Texture"] = "Interface\\Icons\\ABILITY_POISONSTING",
				}, -- [7]
				{
					["type"] = "script",
					["name"] = "自动开饰品",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "81397562896-4432.157",
					["Macro"] = "--自动开饰品\nif BeeUnitAffectingCombat()  and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',13))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',13)))==0 then BeeRun(\"/use 13\") return end\nif BeeUnitAffectingCombat()  and GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  return end",
					["Texture"] = "Interface\\Icons\\Ability_Druid_EmpoweredRejuvination",
				}, -- [8]
				{
					["type"] = "script",
					["name"] = "惩戒输出（AOE）",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "91397562896-4432.157",
					["Macro"] = "if BeeUnitAffectingCombat()  and  BeeIsRun(\"圣佑术\")  then BeeRun(\"圣佑术\");return;end\nif BeeUnitAffectingCombat()  and  BeeIsRun(\"复仇之怒\") and  BeePlayerDeBuffTime(\"自律\")<1 then BeeRun(\"复仇之怒\");return;end\nif BeeIsRun(\"狂热\",\"nogoal\") and BeeHolyPower(\"player\") == 3 then BeeRun(\"狂热\",\"nogoal\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")==3 then BeeRun(\"异端裁决\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")>1 then BeeRun(\"异端裁决\");return;end\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")==1 and (BeePlayerBuffTime(\"战争艺术\")>1 or BeePlayerBuffTime(\"复仇之怒\")>1) then  BeeRun(\"异端裁决\");return;end\nif IsSpellInRange(\"十字军打击\",\"target\")==1 and BeeIsRun(\"神圣风暴\",\"target\") and  BeeHolyPower(\"player\")<3 and IsSpellInRange(\"十字军打击\",\"target\")==1 then BeeRun(\"神圣风暴\");return;end\nif BeeIsRun(\"圣殿骑士的裁决\",\"target\") and BeeHolyPower(\"player\")== 3  and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\nif BeePlayerBuffTime(\"神圣意志\")>1  and  BeeIsRun(\"圣殿骑士的裁决\",\"target\")  and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end    \nif BeeStringFind(\"亡灵,恶魔,龙类,元素生物\",UnitCreatureType('target'))then \n    if BeeIsRun(\"驱邪术\",\"target\")and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1  then BeeRun(\"驱邪术\");return;end   \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") and IsSpellInRange(\"愤怒之锤\",\"target\")==1 then BeeRun(\"愤怒之锤\");return;end\nelse \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\")  and IsSpellInRange(\"愤怒之锤\",\"target\")==1 then BeeRun(\"愤怒之锤\");return;end\n    if BeeIsRun(\"驱邪术\",\"target\") and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1  then BeeRun(\"驱邪术\");return;end   \nend\nif BeeIsRun(\"审判\")  and IsSpellInRange(\"审判\",\"target\")==1 then BeeRun(\"审判\");return;end\nif BeeUnitAffectingCombat()  and BeeIsRun(\"神圣愤怒\",\"target\") and IsSpellInRange(\"神圣愤怒\",\"target\")==1 then BeeRun(\"神圣愤怒\");return;end\n--if BeeUnitAffectingCombat(\"player\")  and BeeUnitMana(\"player\",\"%\")>90 and BeeIsRun(\"奉献\") then BeeRun(\"奉献\");return;end\n--蓝低于3000，回蓝\nif BeeUnitAffectingCombat()  and BeeUnitMana(\"player\")<3000 and BeeIsRun(\"神圣恳求\") then BeeRun(\"神圣恳求\");return;end\n\n\n\n",
					["Texture"] = "Interface\\Icons\\Ability_Paladin_DivineStorm",
				}, -- [9]
				{
					["type"] = "script",
					["name"] = "惩戒输出（单体）",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "101397562896-4432.157",
					["Macro"] = "--远古列王守卫开启后叠加10层远古能量，就用魔像之血药水\n\n\nif BeePlayerBuffCount(\"远古能量\")>=10 and BeeIsRun(\"魔像之血药水\") then BeeRun(\"魔像之血药水\");return;end\n\n--远古列王守卫开启后叠加10层后远古能量，使用狂热\nif BeePlayerBuffCount(\"远古能量\")>=10 and BeeIsRun(\"狂热\",\"nogoal\") then BeeRun(\"狂热\",\"nogoal\");return;end\n\n\n--狂热效果存在，使用复仇之怒\nif BeePlayerBuffTime(\"狂热\")>0.1 and BeeIsRun(\"复仇之怒\"\n) then BeeRun(\"复仇之怒\");return;end\n\n--异端裁决可用、异端裁决BUFF低于3秒、有3道圣能时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")==3 then BeeRun(\"异端裁决\");return;end\n\n\n--异端裁决可用、无异端裁决BUFF、有2道以上圣能时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")>1 then BeeRun(\"异端裁决\");return;end\n\n\n\n--异端裁决可用、无异端裁决BUFF、有1道圣能、有战争艺术BUFF、或者有复仇之怒BUFF时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<0 and BeeHolyPower(\"player\")==1 and (BeePlayerBuffTime(\"战争艺术\")>1 or BeePlayerBuffTime(\"复仇之怒\")>1) then  BeeRun(\"异端裁决\");return;end\n\n\n--异端裁决可用、异端裁决BUFF低于3秒、不足2道以上圣能、有神圣意志时，执行异端裁决；\nif BeeIsRun(\"异端裁决\") and BeePlayerBuffTime(\"异端裁决\")<3 and BeeHolyPower(\"player\")<2 and BeePlayerBuffTime(\"神圣意志\")>1 then  BeeRun(\"异端裁决\");return;end\n\n\n\n--十字军打击可用、少于3道圣能、在十字军打击技能范围内，执行十字军打击；\nif BeeIsRun(\"十字军打击\",\"target\") and  BeeHolyPower(\"player\")<3 and IsSpellInRange(\"十字军打击\",\"target\")==1 then BeeRun(\"/startattack\\n/cast 十字军打击\");return;end\n\n\n\n--圣殿骑士的裁决可用、有3道圣能、在圣殿骑士的裁决技能范围内，执行圣殿骑士的裁决；\nif BeeIsRun(\"圣殿骑士的裁决\",\"target\") and BeeHolyPower(\"player\")== 3 and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\n\n\n\n--有神圣意志BUFF，圣殿骑士的裁决可用、在圣殿骑士的裁决技能范围内，执行圣殿骑士的裁决；\nif BeePlayerBuffTime(\"神圣意志\")>1  and  BeeIsRun(\"圣殿骑士的裁决\",\"target\") and IsSpellInRange(\"圣殿骑士的裁决\",\"target\")==1 then BeeRun(\"圣殿骑士的裁决\");return;end\n\n\n\n--（配合2件T13属性）无狂热BUFF，审判可用、在审判技能范围内，执行审判\nif BeePlayerBuffTime(\"狂热\")<1 and BeeIsRun(\"审判\") and IsSpellInRange(\"审判\",\"target\")==1 then BeeRun(\"审判\");return;end\n\n--有战争艺术、驱邪术可用、在驱邪术技能范围内，执行驱邪术；\n\nif BeeIsRun(\"驱邪术\",\"target\") and BeePlayerBuffTime(\"战争艺术\")>1 then BeeRun(\"驱邪术\");return;end   \n\n--目标是亡灵,恶魔,龙类,元素生物，有战争艺术BUFF、驱邪术可用、在驱邪术技能范围内，执行驱邪术；\nif BeeStringFind(\"亡灵,恶魔,龙类,元素生物\",UnitCreatureType('target'))then if BeeIsRun(\"驱邪术\",\"target\")and BeePlayerBuffTime(\"战争艺术\")>1 and IsSpellInRange(\"驱邪术\",\"target\")==1 then BeeRun(\"驱邪术\");return;end\n    \n    --目标生命值低于20%、或者有复仇之怒BUFF、愤怒之锤可用、在愤怒之锤技能范围内，执行愤怒之锤；\n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") then BeeRun(\"愤怒之锤\");return;end\nelse \n    if (BeeUnitHealth(\"target\",\"%\",0)<20 or BeePlayerBuffTime(\"复仇之怒\")>1) and BeeIsRun(\"愤怒之锤\",\"target\") then BeeRun(\"愤怒之锤\");return;end\n    end\n    --无狂热BUFF，十字军打击冷却时间大于0.8秒、审判冷却时间大于0.8秒、在战斗状态内，执行神圣愤怒；\n    if BeePlayerBuffTime(\"狂热\")<1 and BeeSpellCD(\"十字军打击\")>0.8 and BeeSpellCD(\"审判\")>0.8 and BeeUnitAffectingCombat(\"player\") and BeeIsRun(\"神圣愤怒\",\"target\") then BeeRun(\"神圣愤怒\");return;end\n\n\n--无狂热BUFF，十字军打击冷却时间大于1.2秒、审判冷却时间大于1.2秒、在战斗状态内、法力值大于90%，执行奉献；\nif BeePlayerBuffTime(\"狂热\")<1 and BeeUnitAffectingCombat(\"player\") and BeeUnitMana(\"player\",\"%\")>90 and BeeSpellCD(\"十字军打击\")>0.8 and BeeSpellCD(\"审判\")>1.1  and BeeIsRun(\"奉献\") then BeeRun(\"奉献\");return;end\n\n\n--战斗状态内、蓝低于15000，执行神圣恳求\n\nif BeeUnitAffectingCombat() and BeeUnitMana(\"player\")<15000 and BeeIsRun(\"神圣恳求\") then BeeRun(\"神圣恳求\");return;end\n",
					["Texture"] = "Interface\\Icons\\Spell_Holy_CrusaderStrike",
				}, -- [10]
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
								["id"] = "11397562896-4432.157",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "736249-448539",
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
								["id"] = "21397562896-4432.157",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "447319-182678",
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
								["id"] = "31397562896-4432.157",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "401944-603743",
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
								["Mark"] = "156386-668822",
								["DelayChecked"] = false,
								["id"] = "41397562896-4432.157",
								["checked"] = false,
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
								["id"] = "51397562896-4432.157",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "716762-336637",
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
								["id"] = "61397562896-4432.157",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "406199-286659",
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
								["id"] = "71397562896-4432.157",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "520793-874059",
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
								["id"] = "81397562896-4432.157",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "524190-167884",
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
								["id"] = "91397562896-4432.157",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "521954-502176",
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
								["id"] = "101397562896-4432.157",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "639402-971527",
								["DelayChecked"] = false,
								["checked"] = true,
								["DelayValue"] = 0,
							}, -- [10]
						},
						["checked"] = true,
						["ApiDbf"] = {
						},
						["name"] = "惩戒骑基础包",
						["Mark"] = "805122-840386",
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
			["name"] = "惩戒骑基础包",
			["updata"] = {
			},
			["Mark"] = "739514-450698",
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
					["name"] = "开虔诚，上真理，补王者",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11398561426-1971.261",
					["Macro"] = "--非骑乘状态自动开惩戒光环\nif not BeeStringFind(\"虔诚光环\",BeeUnitBuffList(\"player\")) then\n    BeeRun(\"虔诚光环\",\"player\");\n    return;\nend\nif not BeeStringFind(\"正义之怒\",BeeUnitBuffList(\"player\")) then\n    BeeRun(\"正义之怒\",\"player\");\n    return;\nend\n--没任何圣印的时候自动补真理圣印\nif not (BeeStringFind(\"真理圣印\",BeeUnitBuffList(\"player\")) or BeeStringFind(\"洞察圣印\",BeeUnitBuffList(\"player\")) or BeeStringFind(\"正义圣印\",BeeUnitBuffList(\"player\")) or \n    BeeStringFind(\"公正圣印\",BeeUnitBuffList(\"player\"))) then\n    BeeRun(\"真理圣印\",\"player\");\n    BeeUnitCastSpellDelay(\"真理圣印\",2);\nend\n\n--如果没有王者祝福或力量祝福，自动补王者祝福\nif BeeIsRun(\"王者祝福\",\"player\") and (BeePlayerBuffTime(\"王者祝福\") <0 and  BeePlayerBuffTime(\"力量祝福\")<0) then \n    BeeRun(\"王者祝福\",\"player\");\n    BeeUnitCastSpellDelay(\"王者祝福\",2);\n    return;\nend",
					["Texture"] = "Interface\\Icons\\Spell_Holy_EmpowerChampion",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "保命",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "21398561426-1971.261",
					["Macro"] = "--判断自己血量低并且在战斗中开圣疗\nif BeeIsRun(\"圣疗术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<20  and BeePlayerDeBuffTime(\"自律\")<0  then\n    BeeRun(\"圣疗术\",\"player\");\n    BeeUnitCastSpellDelay(\"圣疗术\",2);\n    return;\nend\n--血量低于10%能开防御者\nif BeeIsRun(\"炽热防御者\",\"player\") and BeeUnitHealth(\"player\",\"%\")<12  and BeePlayerDeBuffTime(\"自律\")<0  then\n    BeeRun(\"炽热防御者\",\"player\");\n    BeeUnitCastSpellDelay(\"炽热防御者\",2);\n    return;\nend\n--60开圣佑术\nif BeeIsRun(\"圣佑术\",\"player\") and BeeUnitHealth(\"player\",\"%\")<60  then\n    BeeRun(\"圣佑术\",\"player\");\n    BeeUnitCastSpellDelay(\"圣佑术\",2);\n    return;\nend\n--40开守卫\nif BeeIsRun(\"远古列王守卫\",\"player\") and BeeSpellCD(\"远古列王守卫\")<=0 and  BeeUnitHealth(\"player\",\"%\")<40  then\n    BeeRun(\"远古列王守卫\",\"player\");\n    BeeUnitCastSpellDelay(\"远古列王守卫\",2);\n    return;\nend",
					["Texture"] = "Interface\\Icons\\Spell_Holy_GuardianSpirit",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "打断施法",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "31398561426-1971.261",
					["Macro"] = "if BeeUnitCastSpellName()  and BeeIsRun(\"责难\") then\n    BeeRun(\"责难\");\n    return;\nend\n\n\n",
					["Texture"] = "Interface\\Icons\\Spell_Holy_EyeforanEye",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "嘲讽",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "41398561426-1971.261",
					["Macro"] = "if not BeeTargetTargetIsPlayer() and BeeIsRun(\"清算之手\") and BeeUnitName(\"targettarget\") then BeeRun(\"清算之手\"); \n    return; \nelseif not BeeTargetTargetIsPlayer() and BeeSpellCD(\"清算之手\")>0  and BeeIsRun(\"正义防御\") and BeeUnitName(\"target\") then BeeRun(\"正义防御\"); \nend",
					["Texture"] = "Interface\\Icons\\Spell_Holy_BlessingOfStrength",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "单拉",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "51398561426-1971.261",
					["Macro"] = "-- 攻击最近的目标\nif not UnitIsDead(\"player\") and BeeUnitAffectingCombat(\"player\") then\n    if BeeAttack(0,0) then\n        return;\n    end\nend\nif BeeUnitHealth(\"target\",\"%\")<20 and BeeIsRun(\"愤怒之锤\") then\n    BeeRun(\"愤怒之锤\")\n    return;    \nend    \nif BeeHolyPower()==3 and BeeIsRun(\"正义盾击\") then\n    BeeRun(\"正义盾击\")\n    return;    \nend    \nif BeePlayerBuffTime(\"大十字军\")>=0 and BeeIsRun(\"复仇者之盾\") then\n    BeeRun(\"复仇者之盾\")\n    return;    \nend    \nif BeeIsRun(\"十字军打击\") then\n    BeeRun(\"十字军打击\")\n    return;    \nend    \nif BeeIsRun(\"复仇者之盾\") then\n    BeeRun(\"复仇者之盾\")\n    return;    \nend    \nif BeeIsRun(\"审判\") then\n    BeeRun(\"审判\")\n    return;    \nend    \nif BeeUnitAffectingCombat() and BeeRange(\"target\")<8 and BeeIsRun(\"奉献\") then\n    BeeRun(\"奉献\")\n    return;    \nend    \nif BeeUnitAffectingCombat() and BeeRange(\"target\")<8 and BeeIsRun(\"神圣愤怒\") then\n    BeeRun(\"神圣愤怒\")\n    return;    \nend    ",
					["Texture"] = "Interface\\Icons\\Spell_Holy_FistOfJustice",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = "群拉",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "61398561426-1971.261",
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
								["Type"] = "script",
								["spellId"] = 0,
								["raidn"] = -3,
								["id"] = "11398561426-1971.261",
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
								["id"] = "21398561426-1971.261",
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
								["id"] = "31398561426-1971.261",
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
								["id"] = "41398561426-1971.261",
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
								["id"] = "51398561426-1971.261",
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
								["id"] = "61398561426-1971.261",
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
						},
						["checked"] = true,
						["ApiDbf"] = {
						},
						["name"] = "防骑基础包",
						["Mark"] = "464824-178350",
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
				["ExcludedGroup"] = {
				},
				["RaidListClass"] = {
					["武僧"] = {
						["Count"] = 1,
						["englishClass"] = "MONK",
					},
					["圣骑士"] = {
						["Count"] = 4,
						["englishClass"] = "PALADIN",
					},
					["潜行者"] = {
						["Count"] = 2,
						["englishClass"] = "ROGUE",
					},
					["术士"] = {
						["Count"] = 3,
						["englishClass"] = "WARLOCK",
					},
					["德鲁伊"] = {
						["Count"] = 2,
						["englishClass"] = "DRUID",
					},
					["萨满祭司"] = {
						["Count"] = 1,
						["englishClass"] = "SHAMAN",
					},
					["猎人"] = {
						["Count"] = 2,
						["englishClass"] = "HUNTER",
					},
					["战士"] = {
						["Count"] = 4,
						["englishClass"] = "WARRIOR",
					},
					["死亡骑士"] = {
						["Count"] = 3,
						["englishClass"] = "DEATHKNIGHT",
					},
					["法师"] = {
						["Count"] = 2,
						["englishClass"] = "MAGE",
					},
					["牧师"] = {
						["Count"] = 1,
						["englishClass"] = "PRIEST",
					},
				},
				["IsInfList"] = {
				},
				["TeamNumber"] = 2,
				["CustomizeIndex"] = 0,
				["TeamCount"] = {
					5, -- [1]
					5, -- [2]
					5, -- [3]
					5, -- [4]
					2, -- [5]
					3, -- [6]
				},
				["IsInfListSet"] = {
				},
				["ExcludeTarget"] = {
				},
				["RaidList"] = {
					["雅典娜的拥抱-克尔苏加德"] = {
						["subgroup"] = 4,
						["name"] = "雅典娜的拥抱-克尔苏加德",
						["raidn"] = 19,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid19",
						["unit"] = "雅典娜的拥抱-克尔苏加德",
					},
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
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 12,
					},
					["时久-熔火之心"] = {
						["subgroup"] = 2,
						["name"] = "时久-熔火之心",
						["raidn"] = 8,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid8",
						["unit"] = "时久-熔火之心",
					},
					["甜水小易-甜水绿洲"] = {
						["subgroup"] = 1,
						["role"] = "MAINTANK",
						["name"] = "甜水小易-甜水绿洲",
						["raidn"] = 1,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid1",
						["unit"] = "甜水小易-甜水绿洲",
					},
					["她的影子-燃烧之刃"] = {
						["subgroup"] = 4,
						["name"] = "她的影子-燃烧之刃",
						["raidn"] = 16,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid16",
						["unit"] = "她的影子-燃烧之刃",
					},
					["琴瑟笙-兰娜瑟尔"] = {
						["subgroup"] = 5,
						["name"] = "琴瑟笙-兰娜瑟尔",
						["raidn"] = 21,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid21",
						["unit"] = "琴瑟笙-兰娜瑟尔",
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
					["萌萌的虾米-冬拥湖"] = {
						["subgroup"] = 1,
						["name"] = "萌萌的虾米-冬拥湖",
						["raidn"] = 4,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid4",
						["unit"] = "萌萌的虾米-冬拥湖",
					},
					["哼哼小宝贝儿-巨龙之吼"] = {
						["subgroup"] = 1,
						["name"] = "哼哼小宝贝儿-巨龙之吼",
						["raidn"] = 2,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid2",
						["unit"] = "哼哼小宝贝儿-巨龙之吼",
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
					["player"] = {
						["name"] = "自己",
						["raidn"] = -8,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "player",
					},
					["杀猪刀猴赛雷"] = {
						["subgroup"] = 2,
						["role"] = "MAINTANK",
						["name"] = "杀猪刀猴赛雷",
						["raidn"] = 7,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid7",
						["unit"] = "杀猪刀猴赛雷",
					},
					["血魔将-冰风岗"] = {
						["subgroup"] = 5,
						["name"] = "血魔将-冰风岗",
						["raidn"] = 22,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid22",
						["unit"] = "血魔将-冰风岗",
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
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
					},
					["哈丶嘿-沃金"] = {
						["subgroup"] = 6,
						["name"] = "哈丶嘿-沃金",
						["raidn"] = 23,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid23",
						["unit"] = "哈丶嘿-沃金",
					},
					["貂丶尛蝉-血色十字军"] = {
						["subgroup"] = 3,
						["name"] = "貂丶尛蝉-血色十字军",
						["raidn"] = 12,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid12",
						["unit"] = "貂丶尛蝉-血色十字军",
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
					["撩人的便秘君-甜水绿洲"] = {
						["subgroup"] = 2,
						["name"] = "撩人的便秘君-甜水绿洲",
						["raidn"] = 10,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid10",
						["unit"] = "撩人的便秘君-甜水绿洲",
					},
					["影刃丶-布兰卡德"] = {
						["subgroup"] = 3,
						["name"] = "影刃丶-布兰卡德",
						["raidn"] = 11,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid11",
						["unit"] = "影刃丶-布兰卡德",
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
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 15,
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
					["紫灬燕兒-霜狼"] = {
						["subgroup"] = 4,
						["name"] = "紫灬燕兒-霜狼",
						["raidn"] = 18,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid18",
						["unit"] = "紫灬燕兒-霜狼",
					},
					["寂雨沙華丶月-阿格拉玛"] = {
						["subgroup"] = 6,
						["name"] = "寂雨沙華丶月-阿格拉玛",
						["raidn"] = 25,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid25",
						["unit"] = "寂雨沙華丶月-阿格拉玛",
					},
					["休丶杰克曼-冰风岗"] = {
						["subgroup"] = 2,
						["name"] = "休丶杰克曼-冰风岗",
						["raidn"] = 9,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid9",
						["unit"] = "休丶杰克曼-冰风岗",
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
					["小小捶-血色十字军"] = {
						["subgroup"] = 3,
						["name"] = "小小捶-血色十字军",
						["raidn"] = 13,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid13",
						["unit"] = "小小捶-血色十字军",
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
					["Yifei-燃烧之刃"] = {
						["subgroup"] = 3,
						["name"] = "Yifei-燃烧之刃",
						["raidn"] = 15,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid15",
						["unit"] = "Yifei-燃烧之刃",
					},
					["mouseovertarget"] = {
						["name"] = "鼠标目标的目标",
						["raidn"] = -1,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseovertarget",
					},
					["从没瘦过-通灵学院"] = {
						["subgroup"] = 1,
						["name"] = "从没瘦过-通灵学院",
						["raidn"] = 3,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid3",
						["unit"] = "从没瘦过-通灵学院",
					},
					["爆射后庭花-索瑞森"] = {
						["subgroup"] = 3,
						["name"] = "爆射后庭花-索瑞森",
						["raidn"] = 14,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid14",
						["unit"] = "爆射后庭花-索瑞森",
					},
					["沉默的牛牛-阿格拉玛"] = {
						["subgroup"] = 1,
						["name"] = "沉默的牛牛-阿格拉玛",
						["raidn"] = 5,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid5",
						["unit"] = "沉默的牛牛-阿格拉玛",
					},
					["紫轩乄殇夜月-红云台地"] = {
						["subgroup"] = 4,
						["name"] = "紫轩乄殇夜月-红云台地",
						["raidn"] = 17,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid17",
						["unit"] = "紫轩乄殇夜月-红云台地",
					},
					["圣战之魂-血牙魔王"] = {
						["subgroup"] = 6,
						["name"] = "圣战之魂-血牙魔王",
						["raidn"] = 24,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid24",
						["unit"] = "圣战之魂-血牙魔王",
					},
					["一柱擒天-卡扎克"] = {
						["subgroup"] = 4,
						["name"] = "一柱擒天-卡扎克",
						["raidn"] = 20,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid20",
						["unit"] = "一柱擒天-卡扎克",
					},
					["太阳先森-达隆米尔"] = {
						["subgroup"] = 2,
						["name"] = "太阳先森-达隆米尔",
						["raidn"] = 6,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid6",
						["unit"] = "太阳先森-达隆米尔",
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
						"甜水小易-甜水绿洲", -- [1]
						"杀猪刀猴赛雷", -- [2]
					},
				},
			},
			["Locale"] = "zhCN",
			["Config"] = {
			},
			["name"] = "防骑基础包",
			["updata"] = {
			},
			["Mark"] = "468118-606603",
			["CollectionInf"] = {
				["Buff_Spell"] = {
				},
			},
			["Version"] = 502010,
			["checked"] = false,
		}, -- [3]
	},
	["MenusWinDows"] = true,
	["SetThreadSpeed"] = 5,
	["HelpNavigation"] = true,
	["SetSounds"] = {
	},
}

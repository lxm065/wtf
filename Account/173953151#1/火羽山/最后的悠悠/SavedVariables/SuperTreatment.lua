
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
			["name"] = "冰霜之路",
			["id"] = "11389185746-7174.652",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--骑乘，其他不做任何动作\nif IsMounted(\"player\")==1 then \n    if not BeeStringFind(\"冰霜之路\",BeeUnitBuffList(\"player\")) then \n        BeeRun(\"冰霜之路\");\n    end\n    return;\nend\n",
			["Texture"] = "Interface\\Icons\\Spell_DeathKnight_PathOfFrost",
		}, -- [1]
		{
			["type"] = "script",
			["name"] = "自动打断",
			["id"] = "21389185746-7174.652",
			["Remarks"] = "需要打断对方施法时,请勾选.",
			["Macro"] = "local NeedBreak = \"痛苦无常,恐惧,神圣之光,圣光术,快速治疗,强效治疗术,滋养,治疗之触,愈合,旋风,治疗波,治疗之涌,滋养,强效治疗波,苦修,变形术,治疗之雨,圣光闪现,神圣赞美诗,联结治疗,治疗链,妖术,群体驱散\"\nlocal NeedBreakDelay = \"变羊术,恐惧,妖术,苦修,强效治疗术,精神控制,神圣之光,强效治疗波,治疗之触,痛苦无常,奥术冲击\"\nlocal NotNeedBreak = \"保护祝福,圣盾术,灵魂之力,寒冰屏障,光环掌握\"\nlocal Castingtime = BeeUnitCastSpellTime(\"target\")\nif BeeTargetBuffTime(\"巫妖之躯\")>=0 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n    return;\nend\nif BeeTargetBuffTime(\"法术反射\")>=0 and BeeIsRun(\"心灵冰冻\",\"target\") then BeeRun(\"心灵冰冻\",\"target\");\n    return;\nend\nif BeeStringFind(NeedBreak,BeeUnitCastSpellName(\"target\")) and BeeTargetBuffTime(NotNeedBreak)<=0 then\n    if BeeRange()<8 and BeeIsRun(\"心灵冰冻\",\"target\") then BeeRun(\"心灵冰冻\",\"target\");\n        return;\n    elseif BeeSpellCD(\"心灵冰冻\")>1 and BeeSpellCD(\"心灵冰冻\")<9 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n        return;\n    elseif BeeRange(\"target\")>8 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n        return;\n    elseif BeeIsRun(\"黑暗模拟\",\"target\") then BeeRun(\"黑暗模拟\",\"target\");\n        return;\n    end\nend\nif BeeStringFind(NeedBreakDelay,BeeUnitCastSpellName(\"target\")) and Castingtime<=0.4 and BeeTargetBuffTime(NotNeedBreak)<=0 then\n    if BeeRange()<8 and BeeIsRun(\"心灵冰冻\",\"target\") then BeeRun(\"心灵冰冻\",\"target\");\n        return;\n    elseif BeeSpellCD(\"心灵冰冻\")>1 and BeeSpellCD(\"心灵冰冻\")<9 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n        return;\n    elseif BeeRange(\"target\")>8 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n        return;\n    elseif BeeIsRun(\"黑暗模拟\",\"target\") then BeeRun(\"黑暗模拟\",\"target\");\n        return;\n    end\nend",
			["Texture"] = "Interface\\Icons\\Spell_DeathKnight_MindFreeze",
		}, -- [2]
		{
			["type"] = "script",
			["name"] = "被遗忘者的意志",
			["id"] = "31389185746-7174.652",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "if BeeStringFind(\"深度冻结,致盲,制裁之锤,扰乱射击,变形术,死亡缠绕,精神控制,诱惑,冰冻陷阱,击倒,妖术,恐惧,心灵尖啸,恐惧嚎叫,破胆怒吼,恐惧术,心灵惊骇,忏悔\",BeeUnitBuffList(\"player\")\n) and BeeIsRun(\"被遗忘者的意志\",\"nogoal\") then BeeRun(\"被遗忘者的意志\");\n    return;\nend\nlocal NoDebuff=\"深度冻结,制裁之锤,击倒,肾击,猛击\"\nlocal NoDebuf2=\"恐惧,心灵尖啸,恐惧嚎叫,破胆怒吼,恐惧术,心灵惊骇,死亡缠绕,精神控制,诱惑\"\nif BeePlayerDeBuffTime(NoDebuff)>0 and BeeIsRun(\"冰封之韧\") then BeeRun(\"冰封之韧\")\n    return;\nend\nif BeePlayerDeBuffTime(NoDebuff)>0 and BeeSpellCD(\"冰封之韧\")>1 and      GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  \n    return;\nend\nif BeePlayerDeBuffTime(NoDebuff2)>0 and BeeIsRun(\"被遗忘者的意志\",\"nogoal\") then BeeRun(\"被遗忘者的意志\");\n    return;\nend\nif BeePlayerDeBuffTime(NoDebuff2)>0 and BeeSpellCD(\"被遗忘者的意志\")>1 and BeeIsRun(\"巫妖之躯\") then BeeRun(\"巫妖之躯\");\n    return;\nend\n",
			["Texture"] = "Interface\\Icons\\Spell_Shadow_RaiseDead",
		}, -- [3]
		{
			["type"] = "script",
			["name"] = "辅助技能及饰品",
			["id"] = "41389185746-7174.652",
			["Remarks"] = "一些辅助技能,可根据情况使用.",
			["Macro"] = "\nif BeeUnitAffectingCombat() and BeeIsRun(\"冰霜之柱\") then BeeRun(\"冰霜之柱\"); \n    return; \nend; \nif BeePlayerBuffTime(\"寒冬号角\")<3 and BeeIsRun(\"寒冬号角\") then BeeRun(\"寒冬号角\"); \n    return; \nend; \nif BeeRune(\"冰霜符文\")<=0 and BeeRune(\"死亡符文\")<=0 and BeeIsRun(\"活力分流\") then BeeRun(\"活力分流\"); \n    return; \nelseif BeeRune(\"冰霜符文\")<=0 and BeeRune(\"邪恶符文\")<=0 and BeeIsRun(\"活力分流\") then BeeRun(\"活力分流\"); \n    return; \nelseif BeeRune(\"死亡符文\")<=0 and BeeRune(\"邪恶符文\")<=0 and BeeIsRun(\"活力分流\") then BeeRun(\"活力分流\"); \n    return; \nend; \nif BeeSpellCD(\"活力分流\")>0 and BeeRune(\"冰霜符文\")<=0 and BeeRune(\"死亡符文\")<=0 and BeeIsRun(\"符文武器增效\") then BeeRun(\"符文武器增效\"); \n    return; \nelseif BeeSpellCD(\"活力分流\")>0 and BeeRune(\"冰霜符文\")<=0 and BeeRune(\"邪恶符文\")<=0 and BeeIsRun(\"符文武器增效\") then BeeRun(\"符文武器增效\"); \n    return; \nelseif BeeSpellCD(\"活力分流\")>0 and BeeRune(\"死亡符文\")<=0 and BeeRune(\"邪恶符文\")<=0 and BeeIsRun(\"符文武器增效\") then BeeRun(\"符文武器增效\"); \n    return; \nend;",
			["Texture"] = "Interface\\Icons\\Spell_Deathknight_IcyTalons",
		}, -- [4]
		{
			["type"] = "script",
			["name"] = "饰品",
			["id"] = "51389185746-7174.652",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "if  BeePlayerBuffTime(\"冰霜之柱\")>0 and BeeSpellCD(\"/use item:70519\")<0 and BeeIsRun(\"残忍角斗士的胜利徽章\",\"nogoal\") then BeeRun(\"/use 残忍角斗士的胜利徽章\");\n    return;\nend\n",
			["Texture"] = "Interface\\Icons\\Spell_Holy_ChampionsBond",
		}, -- [5]
		{
			["type"] = "script",
			["name"] = " 嘲讽触发",
			["id"] = "61389185746-7174.652",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--嘲讽触发技能设置开关，设置1为开启，0为关闭\nlocal CFCF=0\nif  BeeIsRun(\"黑暗命令\",\"target\") and CFCF==0 then BeeRun(\"黑暗命令\",\"target\" );\n    return;\nend\n--距离控制技能设置开关，设置1为开启，0为关闭\nlocal JLKZ=0\nif BeeRange(\"target\")<20 and  BeeRange(\"target\")>6 and BeeIsRun(\"寒冰锁链\",\"target\") and not BeeStringFind(\"寒冰锁链\",BeeUnitBuffList(\"target\")) and JLKZ==1 then BeeRun(\"寒冰锁链\",\"target\");\n    return;\nend\nif BeeRange(\"target\")<36 and  BeeRange(\"target\")>10 and BeeIsRun(\"死亡之握\",\"target\") and JLKZ==0 then BeeRun(\"死亡之握\",\"target\");\n    return;\nend\nif not BeeStringFind(\"亵渎\",BeeUnitBuffList(\"target\")) and JLKZ==0 and BeeIsRun(\"死疽打击\",\"target\")then BeeRun(\"死疽打击\",\"target\");\n    return;\nend",
			["Texture"] = "Interface\\Icons\\Spell_Nature_ShamanRage",
		}, -- [6]
		{
			["type"] = "script",
			["name"] = "优先保命",
			["id"] = "71389185746-7174.652",
			["Remarks"] = "请注意调整脚本里保命饰品-比如 主宰之力等",
			["Macro"] = "--自保和救援\nif BeeUnitAffectingCombat() and  BeeSpellCD(\"冰封之韧\")<=0 and BeeUnitHealth(\"player\",\"%\")<35 and BeeIsRun(\"冰封之韧\") then BeeRun(\"冰封之韧\");\n    return;\nend\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.3 and BeeIsRun(\"巫妖之躯\") then BeeRun(\"巫妖之躯\");\n    return;\nelseif UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.5 and BeeUnitMana(\"player\")>40 and BeeIsRun(\"亡者复生\") then BeeRun(\"亡者复生\");\n    return;\nend\nif BeeSpellCD(\"亡者复生\")>0 and BeeIsRun(\"天灾契约\") then BeeRun(\"天灾契约\");\n    return;\nend\nif BeeStringFind(\"巫妖之躯\",BeeUnitBuffList(\"player\"))\nand BeeIsRun(\"凋零缠绕\",\"player\") then BeeRun(\"凋零缠绕\",\"player\"); \n    return;\nend\n",
			["Texture"] = "Interface\\Icons\\Spell_DeathKnight_IceBoundFortitude",
		}, -- [7]
		{
			["type"] = "script",
			["name"] = "冰传染天赋单体输出",
			["id"] = "81389185746-7174.652",
			["Remarks"] = "如需使用请勾选.",
			["Macro"] = "if BeeIsCombat()==0 then \n    BeeRun(\"/startattack\"); \n    return; \nend \n--瘟疫 \nif BeeTargetDeBuffTime(\"血之疫病\")<1 and BeeIsRun(\"爆发\",\"target\") then \n    BeeRun(\"爆发\"); \n    return; \nelseif BeeTargetDeBuffTime(\"血之疫病\")<1 and BeeSpellCD(\"爆发\")>0 and BeeIsRun(\"暗影打击\",\"target\") then \n    BeeRun(\"暗影打击\"); \n    return; \nend\nif BeeUnitMana(\"player\")>120 and BeeIsRun(\"凋零缠绕\",\"target\") then BeeRun(\"凋零缠绕\",\"target\"); \n    return; \nend\n--输出优先级\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")>0.2 then\n    if BeeIsRun(\"凛风冲击\",\"target\") then BeeRun(\"凛风冲击\",\"target\"); \n        return; \n    end\n    if  BeeIsRun(\"冰霜打击\",\"target\") then BeeRun(\"冰霜打击\",\"target\"); \n        return; \n    end\n    if  BeeIsRun(\"死疽打击\",\"target\") then BeeRun(\"死疽打击\",\"target\"); \n        return; \n    end\nend\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")<=0.2 and BeeIsRun(\"灵界打击\",\"target\") then BeeRun(\"灵界打击\",\"target\"); \n    return; \nend",
			["Texture"] = "Interface\\Icons\\Spell_Deathknight_ClassIcon",
		}, -- [8]
		{
			["type"] = "script",
			["name"] = "符文强化",
			["id"] = "91389185746-7174.652",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--瘟疫 \nlocal Rune2= BeeRuneCount(2);\nif BeeTargetDeBuffTime(\"血之疫病\")<1 and BeeIsRun(\"爆发\",\"target\") then \n    BeeRun(\"爆发\"); \n    return; \nelseif BeeTargetDeBuffTime(\"血之疫病\")<1 and BeeSpellCD(\"爆发\")>0 and BeeIsRun(\"暗影打击\",\"target\") then \n    BeeRun(\"暗影打击\"); \n    return; \nend\n--输出优先级\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")>0.2 then\n    --符文强化\n    if BeeUnitMana(\"player\")>80 and BeeIsRun(\"凋零缠绕\",\"target\") then BeeRun(\"凋零缠绕\",\"target\"); \n        return; \n    end\n    if  BeeIsRun(\"冰霜打击\",\"target\") then BeeRun(\"冰霜打击\",\"target\"); \n        return; \n    end\n    if BeeIsRun(\"凛风冲击\",\"target\") then BeeRun(\"凛风冲击\",\"target\"); \n        return; \n    end\n    if Rune2>1 and BeeIsRun(\"死疽打击\",\"target\") then BeeRun(\"死疽打击\",\"target\"); \n        return;\n    end\n    if BeeRuneCD(\"邪恶符文\")<=7.2 and BeeRune(\"邪恶符文\")>0 and BeeIsRun(\"死疽打击\",\"target\") then BeeRun(\"死疽打击\",\"target\"); \n        return;\n    end\nend\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")<=0.2 and BeeIsRun(\"灵界打击\",\"target\") then BeeRun(\"灵界打击\",\"target\"); \n    return; \nend",
			["Texture"] = "Interface\\Icons\\Spell_DeathKnight_FrozenRuneWeapon",
		}, -- [9]
	},
	["Spells"] = {
		["List"] = {
			{
				["ExcludedGroup"] = {
				},
				["spell"] = {
					{
						["TargetSubgroup"] = -1,
						["checked"] = false,
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
						["id"] = "11389185746-7174.652",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "985625-782898",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["DelayChecked"] = false,
					}, -- [1]
					{
						["TargetSubgroup"] = -1,
						["checked"] = false,
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
						["id"] = "21389185746-7174.652",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "398900-664471",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["DelayChecked"] = false,
					}, -- [2]
					{
						["TargetSubgroup"] = -1,
						["checked"] = true,
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
						["id"] = "31389185746-7174.652",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "504955-812653",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["DelayChecked"] = false,
					}, -- [3]
					{
						["TargetSubgroup"] = -1,
						["checked"] = false,
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
						["id"] = "41389185746-7174.652",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "971806-564961",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["DelayChecked"] = false,
					}, -- [4]
					{
						["TargetSubgroup"] = -1,
						["checked"] = false,
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
						["id"] = "51389185746-7174.652",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "334316-939710",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["DelayChecked"] = false,
					}, -- [5]
					{
						["TargetSubgroup"] = -1,
						["checked"] = false,
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
						["Mark"] = "701790-625741",
						["DelayChecked"] = false,
						["id"] = "61389185746-7174.652",
						["spellId"] = 0,
					}, -- [6]
					{
						["TargetSubgroup"] = -1,
						["checked"] = true,
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
						["id"] = "71389185746-7174.652",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "102979-706226",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["DelayChecked"] = false,
					}, -- [7]
					{
						["TargetSubgroup"] = -1,
						["checked"] = true,
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
						["id"] = "81389185746-7174.652",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "423387-170199",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["DelayChecked"] = false,
					}, -- [8]
					{
						["TargetSubgroup"] = -1,
						["checked"] = true,
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
						["id"] = "91389185746-7174.652",
						["PropertiesSetChecked"] = 4,
						["name"] = "",
						["Mark"] = "481870-577126",
						["DelayValue"] = 0,
						["spellId"] = 0,
						["DelayChecked"] = false,
					}, -- [9]
				},
				["checked"] = true,
				["ApiDbf"] = {
				},
				["name"] = "冰霜DK基础包",
				["Mark"] = "661396-901026",
				["Key"] = {
					["KeySelect"] = "auto",
				},
				["ExcludeTarget"] = {
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
	["name"] = "冰霜DK基础包",
	["Version"] = 502010,
	["Mark"] = "755977-836794",
	["CollectionInf"] = {
		["Buff_Spell"] = {
		},
	},
	["updata"] = {
	},
	["Unit"] = {
		["ExcludeTarget"] = {
		},
		["RaidListClass"] = {
			["死亡骑士"] = {
				["Count"] = 1,
				["englishClass"] = "DEATHKNIGHT",
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
				["cuid"] = 15,
				["name"] = "MT5",
				["raidn"] = -14,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "maintank5",
			},
			["悠悠乳"] = {
				["subgroup"] = 0,
				["name"] = "悠悠乳",
				["raidn"] = 1,
				["englishClass"] = "MAGE",
				["class"] = "法师",
				["unitid"] = "party1",
				["unit"] = "悠悠乳",
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
				["unit"] = "FireHasBeenSet",
				["name"] = "被集火目标",
				["raidn"] = -3,
				["englishClass"] = "",
				["class"] = "",
				["subgroup"] = -1,
				["cuid"] = 1,
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
			["最后的悠悠"] = {
				["subgroup"] = 0,
				["name"] = "最后的悠悠",
				["raidn"] = 1,
				["englishClass"] = "DEATHKNIGHT",
				["class"] = "死亡骑士",
				["unitid"] = "player",
				["unit"] = "最后的悠悠",
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
			["Unit"] = {
				["ExcludedGroup"] = {
				},
				["RaidListClass"] = {
					["死亡骑士"] = {
						["Count"] = 1,
						["englishClass"] = "DEATHKNIGHT",
					},
					["猎人"] = {
						["Count"] = 2,
						["englishClass"] = "HUNTER",
					},
					["潜行者"] = {
						["Count"] = 3,
						["englishClass"] = "ROGUE",
					},
					["圣骑士"] = {
						["Count"] = 1,
						["englishClass"] = "PALADIN",
					},
					["战士"] = {
						["Count"] = 1,
						["englishClass"] = "WARRIOR",
					},
					["法师"] = {
						["Count"] = 2,
						["englishClass"] = "MAGE",
					},
					["术士"] = {
						["Count"] = 1,
						["englishClass"] = "WARLOCK",
					},
					["牧师"] = {
						["Count"] = 3,
						["englishClass"] = "PRIEST",
					},
				},
				["IsInfList"] = {
				},
				["TeamNumber"] = 1,
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
						"最后的悠悠", -- [1]
					},
				},
				["TeamCount"] = {
					5, -- [1]
					5, -- [2]
					4, -- [3]
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
					["Ophis-黑龙军团"] = {
						["subgroup"] = 3,
						["name"] = "Ophis-黑龙军团",
						["raidn"] = 13,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid13",
						["unit"] = "Ophis-黑龙军团",
					},
					["黑灬狗-霜之哀伤"] = {
						["subgroup"] = 3,
						["name"] = "黑灬狗-霜之哀伤",
						["raidn"] = 11,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid11",
						["unit"] = "黑灬狗-霜之哀伤",
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
					["黄刃"] = {
						["subgroup"] = 2,
						["name"] = "黄刃",
						["raidn"] = 10,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid10",
						["unit"] = "黄刃",
					},
					["尘风武圣"] = {
						["subgroup"] = 2,
						["name"] = "尘风武圣",
						["raidn"] = 9,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid9",
						["unit"] = "尘风武圣",
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
					["三队的法爷开"] = {
						["subgroup"] = 1,
						["name"] = "三队的法爷开",
						["raidn"] = 3,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid3",
						["unit"] = "三队的法爷开",
					},
					["恶魔之夫"] = {
						["subgroup"] = 2,
						["name"] = "恶魔之夫",
						["raidn"] = 7,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid7",
						["unit"] = "恶魔之夫",
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
					["乌乌龟"] = {
						["subgroup"] = 1,
						["name"] = "乌乌龟",
						["raidn"] = 2,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid2",
						["unit"] = "乌乌龟",
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
					["最后的悠悠"] = {
						["subgroup"] = 1,
						["name"] = "最后的悠悠",
						["raidn"] = 1,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid1",
						["unit"] = "最后的悠悠",
					},
					["修谱諾斯-巨龙之吼"] = {
						["subgroup"] = 2,
						["name"] = "修谱諾斯-巨龙之吼",
						["raidn"] = 8,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid8",
						["unit"] = "修谱諾斯-巨龙之吼",
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
					["菲児"] = {
						["subgroup"] = 1,
						["name"] = "菲児",
						["raidn"] = 4,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid4",
						["unit"] = "菲児",
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
					["maintank2"] = {
						["unit"] = "maintank2",
						["name"] = "MT2",
						["raidn"] = -11,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 12,
					},
					["mouseovertarget"] = {
						["name"] = "鼠标目标的目标",
						["raidn"] = -1,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseovertarget",
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
					["boss3"] = {
						["name"] = "Boss3",
						["raidn"] = -23,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["醉梦无缘-安东尼达斯"] = {
						["subgroup"] = 3,
						["name"] = "醉梦无缘-安东尼达斯",
						["raidn"] = 12,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid12",
						["unit"] = "醉梦无缘-安东尼达斯",
					},
					["迷失的心"] = {
						["subgroup"] = 2,
						["name"] = "迷失的心",
						["raidn"] = 6,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid6",
						["unit"] = "迷失的心",
					},
					["利燚"] = {
						["subgroup"] = 3,
						["name"] = "利燚",
						["raidn"] = 14,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid14",
						["unit"] = "利燚",
					},
					["薇薇龟"] = {
						["subgroup"] = 1,
						["name"] = "薇薇龟",
						["raidn"] = 5,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid5",
						["unit"] = "薇薇龟",
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
			["Macro"] = {
			},
			["Spells"] = {
				["List"] = {
				},
				["NoStopCastingSpells"] = {
				},
			},
			["Remark"] = "",
			["Import"] = true,
			["Locale"] = "zhCN",
			["Config"] = {
				["IndexTbl"] = 0,
			},
			["name"] = "[无名]",
			["updata"] = {
			},
			["Mark"] = "809460-373198",
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
			["Import"] = true,
			["Macro"] = {
				{
					["type"] = "script",
					["name"] = "冰霜之路",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11388840597-19666.454",
					["Macro"] = "--骑乘，其他不做任何动作\nif IsMounted(\"player\")==1 then \n    if not BeeStringFind(\"冰霜之路\",BeeUnitBuffList(\"player\")) then \n        BeeRun(\"冰霜之路\");\n    end\n    return;\nend\n",
					["Texture"] = "Interface\\Icons\\Spell_DeathKnight_PathOfFrost",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "符文充能",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "21388840597-19666.454",
					["Macro"] = "--符文强化\nif BeeCastSpellFast() then\n    return true;\nend\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")>0.6 and BeeIsRun(\"符文打击\",\"target\") then BeeRun(\"符文打击\",\"target\");\n    return;\nelseif BeeRuneCD(\"鲜血符文\")>2 and BeeRune(\"鲜血符文\")>0 and BeeIsRun(\"符文打击\",\"target\") then BeeRun(\"符文打击\",\"target\"); \n    return;\nend\nif BeeIsRun(\"灵界打击\",\"target\") then BeeRun(\"灵界打击\",\"target\");\n    return;\nend\nif BeeRuneCD(\"鲜血符文\")<=2 and BeeRune(\"鲜血符文\")>0 and UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.8 and BeeIsRun(\"符文分流\") then BeeRun(\"符文分流\");\n    return;\nelseif BeeRuneCD(\"鲜血符文\")<=2 and BeeRune(\"鲜血符文\")>0 and BeeIsRun(\"心脏打击\",\"target\") then BeeRun(\"心脏打击\",\"target\"); \n    return; \nelseif BeeRuneCD(\"鲜血符文\")<=2 and BeeRune(\"鲜血符文\")>0 and BeeIsRun(\"血液沸腾\") then BeeRun(\"血液沸腾\"); \n    return;\nelseif BeeRuneCD(\"鲜血符文\")<=2 and BeeRune(\"鲜血符文\")>0 and BeeIsRun(\"传染\") then BeeRun(\"传染\"); \n    return;\nend    \n\n",
					["Texture"] = "Interface\\Icons\\Spell_DeathKnight_RuneTap",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "优先保命",
					["Macro"] = "--自保和救援\nif BeeUnitAffectingCombat() and  BeeSpellCD(\"冰封之韧\")<=0 and BeeUnitHealth(\"player\",\"%\")<35 and BeeIsRun(\"冰封之韧\") then BeeRun(\"冰封之韧\");\n    return;\nend\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.4 and BeeIsRun(\"吸血鬼之血\") then BeeRun(\"吸血鬼之血\");\n    return; \nelseif UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.5 and BeeIsRun(\"巫妖之躯\") then BeeRun(\"巫妖之躯\");\n    return;\nelseif UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.35 and BeeIsRun(\"亡者复生\") then BeeRun(\"亡者复生\");\n    return;\nelseif UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.3 and BeeIsRun(\"符文武器增效\") then BeeRun(\"符文武器增效\");\n    return;    \nend\nif BeeStringFind(\"巫妖之躯\",BeeUnitBuffList(\"player\"))\nand BeeIsRun(\"凋零缠绕\",\"player\") then BeeRun(\"凋零缠绕\",\"player\"); \n    return;\nend\nif BeeStringFind(\"吸血鬼之血\",BeeUnitBuffList(\"player\"))\nand BeeSpellCD(\"/use item:68915\")<0 and BeeIsRun(\"生命天平\",\"nogoal\") then BeeRun(\"/use 生命天平\");\n    return;\nend\nif BeeSpellCD(\"亡者复生\")>0 and BeeIsRun(\"天灾契约\") then BeeRun(\"天灾契约\");\n    return;\nend\nif BeeSpellCD(\"吸血鬼之血\")>0 and BeeIsRun(\"符文剑舞\") then BeeRun(\"符文剑舞\");\n    return;\nend ",
					["id"] = "31388840597-19666.454",
					["Texture"] = "Interface\\Icons\\Spell_DeathKnight_IceBoundFortitude",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "辅助技能",
					["Remarks"] = "可根据情况使用.",
					["id"] = "41388840597-19666.454",
					["Macro"] = "--辅助技能 \nif BeePlayerBuffTime(\"白骨之盾\")<0 and BeeIsRun(\"白骨之盾\") then BeeRun(\"白骨之盾\"); \n    return; \nend; \nif BeeIsRun(\"活力分流\") then BeeRun(\"活力分流\"); \n    return; \nend; \nif BeePlayerBuffTime(\"寒冬号角\")<3 and BeeIsRun(\"寒冬号角\") then BeeRun(\"寒冬号角\"); \n    return; \nend; \n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_PlagueCloud",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "鲜血坦克攻击",
					["Macro"] = "--瘟疫 \nif BeeTargetDeBuffTime(\"血之疫病\")<1 and BeeIsRun(\"爆发\",\"target\") then \n    BeeRun(\"爆发\"); \n    return; \nend ",
					["id"] = "51388840597-19666.454",
					["Texture"] = "Interface\\Icons\\Ability_Parry",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = "自动打断施法",
					["Macro"] = "if  BeeUnitCastSpellName() and BeeRange()<8 and  BeeIsRun(\"心灵冰冻\") then BeeRun(\"心灵冰冻\"); \n    return;\nelseif BeeUnitCastSpellName() and  BeeRune(\"鲜血符文\")>0 and BeeSpellCD(\"心灵冰冻\")>1 and BeeSpellCD(\"心灵冰冻\")<9 and BeeIsRun(\"绞袭\") then BeeRun(\"绞袭\");\n    return;\nelseif BeeUnitCastSpellName() and  BeeRange()>8 and BeeRune(\"鲜血符文\")>0 and BeeIsRun(\"绞袭\") then BeeRun(\"绞袭\");\n    return;\nend \n",
					["id"] = "61388840597-19666.454",
					["Texture"] = "Interface\\Icons\\Spell_DeathKnight_MindFreeze",
				}, -- [6]
				{
					["type"] = "script",
					["name"] = "战复",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "71388840597-19666.454",
					["Macro"] = "if UnitIsDead(\"party1\") and BeeIsRun(\"复活盟友\",\"party1\")  then BeeRun(\"复活盟友\",\"party1\"); \n    return; \nend\nif UnitIsDead(\"party2\") and BeeIsRun(\"复活盟友\",\"party2\")  then BeeRun(\"复活盟友\",\"party2\"); \n    return; \nend\nif UnitIsDead(\"party3\") and BeeIsRun(\"复活盟友\",\"party3\")  then BeeRun(\"复活盟友\",\"party3\"); \n    return; \nend\nif UnitIsDead(\"party4\") and BeeIsRun(\"复活盟友\",\"party4\")  then BeeRun(\"复活盟友\",\"party4\"); \n    return; \nend",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_NightOfTheDead",
				}, -- [7]
				{
					["type"] = "script",
					["name"] = "自动嘲讽",
					["Remarks"] = "请按TAB键切换目标,实现自动嘲讽.",
					["id"] = "81388840597-19666.454",
					["Macro"] = "--自动嘲讽\nif not BeeUnitUnitIsPlayer(1) and BeeIsRun(\"黑暗命令\") then BeeRun(\"黑暗命令\");\n    return;\nend\nif not BeeUnitUnitIsPlayer(1) and BeeIsRun(\"死亡之握\") then BeeRun(\"死亡之握\");\n    return;\nend\n",
					["Texture"] = "Interface\\Icons\\Spell_Nature_ShamanRage",
				}, -- [8]
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
								["Mark"] = "823558-166521",
								["id"] = "11388840597-19666.454",
								["DelayChecked"] = false,
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
								["Mark"] = "861675-244215",
								["id"] = "21388840597-19666.454",
								["DelayChecked"] = false,
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
								["Mark"] = "189416-548077",
								["id"] = "31388840597-19666.454",
								["DelayChecked"] = false,
								["checked"] = true,
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
								["Mark"] = "832305-371146",
								["id"] = "41388840597-19666.454",
								["DelayChecked"] = false,
								["checked"] = false,
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
								["Mark"] = "444212-996926",
								["id"] = "51388840597-19666.454",
								["DelayChecked"] = false,
								["checked"] = true,
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
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "354023-104582",
								["id"] = "61388840597-19666.454",
								["DelayChecked"] = false,
								["checked"] = true,
							}, -- [6]
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
								["Mark"] = "695160-628627",
								["id"] = "71388840597-19666.454",
								["DelayChecked"] = false,
								["checked"] = true,
							}, -- [7]
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
								["Mark"] = "266664-423077",
								["checked"] = false,
								["id"] = "81388840597-19666.454",
								["spellId"] = 0,
							}, -- [8]
						},
						["checked"] = true,
						["ApiDbf"] = {
						},
						["name"] = "鲜血防御基础包",
						["Mark"] = "707530-980468",
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
						["Count"] = 2,
						["englishClass"] = "MONK",
					},
					["猎人"] = {
						["Count"] = 5,
						["englishClass"] = "HUNTER",
					},
					["潜行者"] = {
						["Count"] = 1,
						["englishClass"] = "ROGUE",
					},
					["术士"] = {
						["Count"] = 3,
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
					["法师"] = {
						["Count"] = 2,
						["englishClass"] = "MAGE",
					},
					["战士"] = {
						["Count"] = 4,
						["englishClass"] = "WARRIOR",
					},
					["死亡骑士"] = {
						["Count"] = 4,
						["englishClass"] = "DEATHKNIGHT",
					},
					["圣骑士"] = {
						["Count"] = 3,
						["englishClass"] = "PALADIN",
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
				["IsInfListSet"] = {
				},
				["TeamCount"] = {
					4, -- [1]
					5, -- [2]
					5, -- [3]
					5, -- [4]
					5, -- [5]
					4, -- [6]
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
					["我是暗牧"] = {
						["subgroup"] = 4,
						["name"] = "我是暗牧",
						["raidn"] = 19,
						["class"] = "牧师",
						["englishClass"] = "PRIEST",
						["unitid"] = "raid19",
						["unit"] = "我是暗牧",
					},
					["咏春"] = {
						["subgroup"] = 5,
						["name"] = "咏春",
						["raidn"] = 22,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid22",
						["unit"] = "咏春",
					},
					["苍南派丶-末日祷告祭坛"] = {
						["subgroup"] = 1,
						["name"] = "苍南派丶-末日祷告祭坛",
						["raidn"] = 4,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid4",
						["unit"] = "苍南派丶-末日祷告祭坛",
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
					["大雄的静仪"] = {
						["subgroup"] = 5,
						["name"] = "大雄的静仪",
						["raidn"] = 24,
						["class"] = "德鲁伊",
						["englishClass"] = "DRUID",
						["unitid"] = "raid24",
						["unit"] = "大雄的静仪",
					},
					["一颗尘埃"] = {
						["subgroup"] = 4,
						["name"] = "一颗尘埃",
						["raidn"] = 17,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid17",
						["unit"] = "一颗尘埃",
					},
					["pet"] = {
						["name"] = "宠物",
						["raidn"] = -19,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pet",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
					},
					["雅琪拉风"] = {
						["subgroup"] = 5,
						["name"] = "雅琪拉风",
						["raidn"] = 20,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid20",
						["unit"] = "雅琪拉风",
					},
					["最后的悠悠"] = {
						["subgroup"] = 2,
						["name"] = "最后的悠悠",
						["raidn"] = 8,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid8",
						["unit"] = "最后的悠悠",
					},
					["player"] = {
						["name"] = "自己",
						["raidn"] = -8,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "player",
					},
					["月丶色-纳沙塔尔"] = {
						["subgroup"] = 2,
						["name"] = "月丶色-纳沙塔尔",
						["raidn"] = 7,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid7",
						["unit"] = "月丶色-纳沙塔尔",
					},
					["翱翔火羽山"] = {
						["subgroup"] = 2,
						["name"] = "翱翔火羽山",
						["raidn"] = 10,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid10",
						["unit"] = "翱翔火羽山",
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
					["无情总是伤"] = {
						["subgroup"] = 3,
						["name"] = "无情总是伤",
						["raidn"] = 13,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid13",
						["unit"] = "无情总是伤",
					},
					["阿萨斯之殇-纳沙塔尔"] = {
						["subgroup"] = 6,
						["name"] = "阿萨斯之殇-纳沙塔尔",
						["raidn"] = 27,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid27",
						["unit"] = "阿萨斯之殇-纳沙塔尔",
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
					["maintank1"] = {
						["unit"] = "maintank1",
						["name"] = "MT1",
						["raidn"] = -10,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 11,
					},
					["Bubbleogum"] = {
						["subgroup"] = 3,
						["name"] = "Bubbleogum",
						["raidn"] = 12,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid12",
						["unit"] = "Bubbleogum",
					},
					["文明使者-末日祷告祭坛"] = {
						["subgroup"] = 3,
						["name"] = "文明使者-末日祷告祭坛",
						["raidn"] = 14,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid14",
						["unit"] = "文明使者-末日祷告祭坛",
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
					["maintank6"] = {
						["unit"] = "maintank6",
						["name"] = "MT6",
						["raidn"] = -15,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 16,
					},
					["宾红-纳沙塔尔"] = {
						["subgroup"] = 6,
						["name"] = "宾红-纳沙塔尔",
						["raidn"] = 25,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid25",
						["unit"] = "宾红-纳沙塔尔",
					},
					["风之"] = {
						["subgroup"] = 5,
						["name"] = "风之",
						["raidn"] = 23,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid23",
						["unit"] = "风之",
					},
					["不落的骑士"] = {
						["subgroup"] = 4,
						["name"] = "不落的骑士",
						["raidn"] = 16,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid16",
						["unit"] = "不落的骑士",
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
					["妮丶-末日祷告祭坛"] = {
						["subgroup"] = 1,
						["name"] = "妮丶-末日祷告祭坛",
						["raidn"] = 5,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid5",
						["unit"] = "妮丶-末日祷告祭坛",
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
					["嗜血圣人"] = {
						["subgroup"] = 1,
						["name"] = "嗜血圣人",
						["raidn"] = 3,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid3",
						["unit"] = "嗜血圣人",
					},
					["炎耀天-纳沙塔尔"] = {
						["subgroup"] = 1,
						["name"] = "炎耀天-纳沙塔尔",
						["raidn"] = 2,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid2",
						["unit"] = "炎耀天-纳沙塔尔",
					},
					["focustarget"] = {
						["name"] = "焦点目标的目标",
						["raidn"] = -4,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focustarget",
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
					["boss4"] = {
						["name"] = "Boss4",
						["raidn"] = -24,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["九戒灵一血忍"] = {
						["subgroup"] = 3,
						["name"] = "九戒灵一血忍",
						["raidn"] = 11,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid11",
						["unit"] = "九戒灵一血忍",
					},
					["帕瑟纷妮"] = {
						["subgroup"] = 5,
						["name"] = "帕瑟纷妮",
						["raidn"] = 21,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid21",
						["unit"] = "帕瑟纷妮",
					},
					["targettarget"] = {
						["name"] = "当前目标的目标",
						["raidn"] = -6,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "targettarget",
					},
					["撒总的萨满"] = {
						["subgroup"] = 4,
						["name"] = "撒总的萨满",
						["raidn"] = 15,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid15",
						["unit"] = "撒总的萨满",
					},
					["mouseovertarget"] = {
						["name"] = "鼠标目标的目标",
						["raidn"] = -1,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseovertarget",
					},
					["蛮诛沙华-末日祷告祭坛"] = {
						["subgroup"] = 6,
						["name"] = "蛮诛沙华-末日祷告祭坛",
						["raidn"] = 28,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid28",
						["unit"] = "蛮诛沙华-末日祷告祭坛",
					},
					["加尔鲁什"] = {
						["subgroup"] = 2,
						["name"] = "加尔鲁什",
						["raidn"] = 6,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid6",
						["unit"] = "加尔鲁什",
					},
					["boss3"] = {
						["name"] = "Boss3",
						["raidn"] = -23,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["帅锅丶求合体"] = {
						["subgroup"] = 4,
						["name"] = "帅锅丶求合体",
						["raidn"] = 18,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid18",
						["unit"] = "帅锅丶求合体",
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
					["利燚"] = {
						["subgroup"] = 2,
						["name"] = "利燚",
						["raidn"] = 9,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid9",
						["unit"] = "利燚",
					},
					["夜袭鹌鹑营-末日祷告祭坛"] = {
						["subgroup"] = 6,
						["name"] = "夜袭鹌鹑营-末日祷告祭坛",
						["raidn"] = 26,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid26",
						["unit"] = "夜袭鹌鹑营-末日祷告祭坛",
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
						"嗜血圣人", -- [2]
					},
				},
			},
			["Locale"] = "zhCN",
			["Config"] = {
			},
			["name"] = "鲜血防御基础包",
			["updata"] = {
			},
			["Mark"] = "760301-804484",
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
					["name"] = "冰霜之路",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11389185746-7174.652",
					["Macro"] = "--骑乘，其他不做任何动作\nif IsMounted(\"player\")==1 then \n    if not BeeStringFind(\"冰霜之路\",BeeUnitBuffList(\"player\")) then \n        BeeRun(\"冰霜之路\");\n    end\n    return;\nend\n",
					["Texture"] = "Interface\\Icons\\Spell_DeathKnight_PathOfFrost",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "自动打断",
					["Remarks"] = "需要打断对方施法时,请勾选.",
					["id"] = "21389185746-7174.652",
					["Macro"] = "local NeedBreak = \"痛苦无常,恐惧,神圣之光,圣光术,快速治疗,强效治疗术,滋养,治疗之触,愈合,旋风,治疗波,治疗之涌,滋养,强效治疗波,苦修,变形术,治疗之雨,圣光闪现,神圣赞美诗,联结治疗,治疗链,妖术,群体驱散\"\nlocal NeedBreakDelay = \"变羊术,恐惧,妖术,苦修,强效治疗术,精神控制,神圣之光,强效治疗波,治疗之触,痛苦无常,奥术冲击\"\nlocal NotNeedBreak = \"保护祝福,圣盾术,灵魂之力,寒冰屏障,光环掌握\"\nlocal Castingtime = BeeUnitCastSpellTime(\"target\")\nif BeeTargetBuffTime(\"巫妖之躯\")>=0 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n    return;\nend\nif BeeTargetBuffTime(\"法术反射\")>=0 and BeeIsRun(\"心灵冰冻\",\"target\") then BeeRun(\"心灵冰冻\",\"target\");\n    return;\nend\nif BeeStringFind(NeedBreak,BeeUnitCastSpellName(\"target\")) and BeeTargetBuffTime(NotNeedBreak)<=0 then\n    if BeeRange()<8 and BeeIsRun(\"心灵冰冻\",\"target\") then BeeRun(\"心灵冰冻\",\"target\");\n        return;\n    elseif BeeSpellCD(\"心灵冰冻\")>1 and BeeSpellCD(\"心灵冰冻\")<9 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n        return;\n    elseif BeeRange(\"target\")>8 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n        return;\n    elseif BeeIsRun(\"黑暗模拟\",\"target\") then BeeRun(\"黑暗模拟\",\"target\");\n        return;\n    end\nend\nif BeeStringFind(NeedBreakDelay,BeeUnitCastSpellName(\"target\")) and Castingtime<=0.4 and BeeTargetBuffTime(NotNeedBreak)<=0 then\n    if BeeRange()<8 and BeeIsRun(\"心灵冰冻\",\"target\") then BeeRun(\"心灵冰冻\",\"target\");\n        return;\n    elseif BeeSpellCD(\"心灵冰冻\")>1 and BeeSpellCD(\"心灵冰冻\")<9 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n        return;\n    elseif BeeRange(\"target\")>8 and BeeIsRun(\"绞袭\",\"target\") then BeeRun(\"绞袭\",\"target\");\n        return;\n    elseif BeeIsRun(\"黑暗模拟\",\"target\") then BeeRun(\"黑暗模拟\",\"target\");\n        return;\n    end\nend",
					["Texture"] = "Interface\\Icons\\Spell_DeathKnight_MindFreeze",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "被遗忘者的意志",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "31389185746-7174.652",
					["Macro"] = "if BeeStringFind(\"深度冻结,致盲,制裁之锤,扰乱射击,变形术,死亡缠绕,精神控制,诱惑,冰冻陷阱,击倒,妖术,恐惧,心灵尖啸,恐惧嚎叫,破胆怒吼,恐惧术,心灵惊骇,忏悔\",BeeUnitBuffList(\"player\")\n) and BeeIsRun(\"被遗忘者的意志\",\"nogoal\") then BeeRun(\"被遗忘者的意志\");\n    return;\nend\nlocal NoDebuff=\"深度冻结,制裁之锤,击倒,肾击,猛击\"\nlocal NoDebuf2=\"恐惧,心灵尖啸,恐惧嚎叫,破胆怒吼,恐惧术,心灵惊骇,死亡缠绕,精神控制,诱惑\"\nif BeePlayerDeBuffTime(NoDebuff)>0 and BeeIsRun(\"冰封之韧\") then BeeRun(\"冰封之韧\")\n    return;\nend\nif BeePlayerDeBuffTime(NoDebuff)>0 and BeeSpellCD(\"冰封之韧\")>1 and      GetItemSpell(GetItemInfo(GetInventoryItemLink('player',14))) and BeeSpellCD(GetItemInfo(GetInventoryItemLink('player',14)))==0 then BeeRun(\"/use 14\")  \n    return;\nend\nif BeePlayerDeBuffTime(NoDebuff2)>0 and BeeIsRun(\"被遗忘者的意志\",\"nogoal\") then BeeRun(\"被遗忘者的意志\");\n    return;\nend\nif BeePlayerDeBuffTime(NoDebuff2)>0 and BeeSpellCD(\"被遗忘者的意志\")>1 and BeeIsRun(\"巫妖之躯\") then BeeRun(\"巫妖之躯\");\n    return;\nend\n",
					["Texture"] = "Interface\\Icons\\Spell_Shadow_RaiseDead",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "辅助技能及饰品",
					["Remarks"] = "一些辅助技能,可根据情况使用.",
					["id"] = "41389185746-7174.652",
					["Macro"] = "\nif BeeUnitAffectingCombat() and BeeIsRun(\"冰霜之柱\") then BeeRun(\"冰霜之柱\"); \n    return; \nend; \nif BeePlayerBuffTime(\"寒冬号角\")<3 and BeeIsRun(\"寒冬号角\") then BeeRun(\"寒冬号角\"); \n    return; \nend; \nif BeeRune(\"冰霜符文\")<=0 and BeeRune(\"死亡符文\")<=0 and BeeIsRun(\"活力分流\") then BeeRun(\"活力分流\"); \n    return; \nelseif BeeRune(\"冰霜符文\")<=0 and BeeRune(\"邪恶符文\")<=0 and BeeIsRun(\"活力分流\") then BeeRun(\"活力分流\"); \n    return; \nelseif BeeRune(\"死亡符文\")<=0 and BeeRune(\"邪恶符文\")<=0 and BeeIsRun(\"活力分流\") then BeeRun(\"活力分流\"); \n    return; \nend; \nif BeeSpellCD(\"活力分流\")>0 and BeeRune(\"冰霜符文\")<=0 and BeeRune(\"死亡符文\")<=0 and BeeIsRun(\"符文武器增效\") then BeeRun(\"符文武器增效\"); \n    return; \nelseif BeeSpellCD(\"活力分流\")>0 and BeeRune(\"冰霜符文\")<=0 and BeeRune(\"邪恶符文\")<=0 and BeeIsRun(\"符文武器增效\") then BeeRun(\"符文武器增效\"); \n    return; \nelseif BeeSpellCD(\"活力分流\")>0 and BeeRune(\"死亡符文\")<=0 and BeeRune(\"邪恶符文\")<=0 and BeeIsRun(\"符文武器增效\") then BeeRun(\"符文武器增效\"); \n    return; \nend;",
					["Texture"] = "Interface\\Icons\\Spell_Deathknight_IcyTalons",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "饰品",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "51389185746-7174.652",
					["Macro"] = "if  BeePlayerBuffTime(\"冰霜之柱\")>0 and BeeSpellCD(\"/use item:70519\")<0 and BeeIsRun(\"残忍角斗士的胜利徽章\",\"nogoal\") then BeeRun(\"/use 残忍角斗士的胜利徽章\");\n    return;\nend\n",
					["Texture"] = "Interface\\Icons\\Spell_Holy_ChampionsBond",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = " 嘲讽触发",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "61389185746-7174.652",
					["Macro"] = "--嘲讽触发技能设置开关，设置1为开启，0为关闭\nlocal CFCF=0\nif  BeeIsRun(\"黑暗命令\",\"target\") and CFCF==0 then BeeRun(\"黑暗命令\",\"target\" );\n    return;\nend\n--距离控制技能设置开关，设置1为开启，0为关闭\nlocal JLKZ=0\nif BeeRange(\"target\")<20 and  BeeRange(\"target\")>6 and BeeIsRun(\"寒冰锁链\",\"target\") and not BeeStringFind(\"寒冰锁链\",BeeUnitBuffList(\"target\")) and JLKZ==1 then BeeRun(\"寒冰锁链\",\"target\");\n    return;\nend\nif BeeRange(\"target\")<36 and  BeeRange(\"target\")>10 and BeeIsRun(\"死亡之握\",\"target\") and JLKZ==0 then BeeRun(\"死亡之握\",\"target\");\n    return;\nend\nif not BeeStringFind(\"亵渎\",BeeUnitBuffList(\"target\")) and JLKZ==0 and BeeIsRun(\"死疽打击\",\"target\")then BeeRun(\"死疽打击\",\"target\");\n    return;\nend",
					["Texture"] = "Interface\\Icons\\Spell_Nature_ShamanRage",
				}, -- [6]
				{
					["type"] = "script",
					["name"] = "优先保命",
					["Remarks"] = "请注意调整脚本里保命饰品-比如 主宰之力等",
					["id"] = "71389185746-7174.652",
					["Macro"] = "--自保和救援\nif BeeUnitAffectingCombat() and  BeeSpellCD(\"冰封之韧\")<=0 and BeeUnitHealth(\"player\",\"%\")<35 and BeeIsRun(\"冰封之韧\") then BeeRun(\"冰封之韧\");\n    return;\nend\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.3 and BeeIsRun(\"巫妖之躯\") then BeeRun(\"巫妖之躯\");\n    return;\nelseif UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.5 and BeeUnitMana(\"player\")>40 and BeeIsRun(\"亡者复生\") then BeeRun(\"亡者复生\");\n    return;\nend\nif BeeSpellCD(\"亡者复生\")>0 and BeeIsRun(\"天灾契约\") then BeeRun(\"天灾契约\");\n    return;\nend\nif BeeStringFind(\"巫妖之躯\",BeeUnitBuffList(\"player\"))\nand BeeIsRun(\"凋零缠绕\",\"player\") then BeeRun(\"凋零缠绕\",\"player\"); \n    return;\nend\n",
					["Texture"] = "Interface\\Icons\\Spell_DeathKnight_IceBoundFortitude",
				}, -- [7]
				{
					["type"] = "script",
					["name"] = "冰传染天赋单体输出",
					["Remarks"] = "如需使用请勾选.",
					["id"] = "81389185746-7174.652",
					["Macro"] = "if BeeIsCombat()==0 then \n    BeeRun(\"/startattack\"); \n    return; \nend \n--瘟疫 \nif BeeTargetDeBuffTime(\"血之疫病\")<1 and BeeIsRun(\"爆发\",\"target\") then \n    BeeRun(\"爆发\"); \n    return; \nelseif BeeTargetDeBuffTime(\"血之疫病\")<1 and BeeSpellCD(\"爆发\")>0 and BeeIsRun(\"暗影打击\",\"target\") then \n    BeeRun(\"暗影打击\"); \n    return; \nend\nif BeeUnitMana(\"player\")>120 and BeeIsRun(\"凋零缠绕\",\"target\") then BeeRun(\"凋零缠绕\",\"target\"); \n    return; \nend\n--输出优先级\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")>0.2 then\n    if BeeIsRun(\"凛风冲击\",\"target\") then BeeRun(\"凛风冲击\",\"target\"); \n        return; \n    end\n    if  BeeIsRun(\"冰霜打击\",\"target\") then BeeRun(\"冰霜打击\",\"target\"); \n        return; \n    end\n    if  BeeIsRun(\"死疽打击\",\"target\") then BeeRun(\"死疽打击\",\"target\"); \n        return; \n    end\nend\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")<=0.2 and BeeIsRun(\"灵界打击\",\"target\") then BeeRun(\"灵界打击\",\"target\"); \n    return; \nend",
					["Texture"] = "Interface\\Icons\\Spell_Deathknight_ClassIcon",
				}, -- [8]
				{
					["type"] = "script",
					["name"] = "符文强化",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "91389185746-7174.652",
					["Macro"] = "--瘟疫 \nlocal Rune2= BeeRuneCount(2);\nif BeeTargetDeBuffTime(\"血之疫病\")<1 and BeeIsRun(\"爆发\",\"target\") then \n    BeeRun(\"爆发\"); \n    return; \nelseif BeeTargetDeBuffTime(\"血之疫病\")<1 and BeeSpellCD(\"爆发\")>0 and BeeIsRun(\"暗影打击\",\"target\") then \n    BeeRun(\"暗影打击\"); \n    return; \nend\n--输出优先级\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")>0.2 then\n    --符文强化\n    if BeeUnitMana(\"player\")>80 and BeeIsRun(\"凋零缠绕\",\"target\") then BeeRun(\"凋零缠绕\",\"target\"); \n        return; \n    end\n    if  BeeIsRun(\"冰霜打击\",\"target\") then BeeRun(\"冰霜打击\",\"target\"); \n        return; \n    end\n    if BeeIsRun(\"凛风冲击\",\"target\") then BeeRun(\"凛风冲击\",\"target\"); \n        return; \n    end\n    if Rune2>1 and BeeIsRun(\"死疽打击\",\"target\") then BeeRun(\"死疽打击\",\"target\"); \n        return;\n    end\n    if BeeRuneCD(\"邪恶符文\")<=7.2 and BeeRune(\"邪恶符文\")>0 and BeeIsRun(\"死疽打击\",\"target\") then BeeRun(\"死疽打击\",\"target\"); \n        return;\n    end\nend\nif UnitHealth(\"player\")/UnitHealthMax(\"player\")<=0.2 and BeeIsRun(\"灵界打击\",\"target\") then BeeRun(\"灵界打击\",\"target\"); \n    return; \nend",
					["Texture"] = "Interface\\Icons\\Spell_DeathKnight_FrozenRuneWeapon",
				}, -- [9]
			},
			["Spells"] = {
				["NoStopCastingSpells"] = {
				},
				["List"] = {
					{
						["ExcludeTarget"] = {
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
								["id"] = "11389185746-7174.652",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "985625-782898",
								["checked"] = false,
								["spellId"] = 0,
								["DelayValue"] = 0,
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
								["id"] = "21389185746-7174.652",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "398900-664471",
								["checked"] = false,
								["spellId"] = 0,
								["DelayValue"] = 0,
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
								["id"] = "31389185746-7174.652",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "504955-812653",
								["checked"] = true,
								["spellId"] = 0,
								["DelayValue"] = 0,
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
								["id"] = "41389185746-7174.652",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "971806-564961",
								["checked"] = false,
								["spellId"] = 0,
								["DelayValue"] = 0,
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
								["id"] = "51389185746-7174.652",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "334316-939710",
								["checked"] = false,
								["spellId"] = 0,
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
								},
								["Target"] = "无目标",
								["Type"] = "script",
								["subgroup"] = -3,
								["raidn"] = -3,
								["DelayValue"] = 0,
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "701790-625741",
								["checked"] = false,
								["id"] = "61389185746-7174.652",
								["DelayChecked"] = false,
							}, -- [6]
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
								["id"] = "71389185746-7174.652",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "102979-706226",
								["checked"] = true,
								["spellId"] = 0,
								["DelayValue"] = 0,
							}, -- [7]
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
								["id"] = "81389185746-7174.652",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "423387-170199",
								["checked"] = true,
								["spellId"] = 0,
								["DelayValue"] = 0,
							}, -- [8]
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
								["id"] = "91389185746-7174.652",
								["PropertiesSetChecked"] = 4,
								["name"] = "",
								["Mark"] = "481870-577126",
								["checked"] = true,
								["spellId"] = 0,
								["DelayValue"] = 0,
							}, -- [9]
						},
						["checked"] = true,
						["ApiDbf"] = {
						},
						["name"] = "冰霜DK基础包",
						["Remarks"] = "",
						["Mark"] = "661396-901026",
						["ExcludedGroup"] = {
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
					["武僧"] = {
						["Count"] = 3,
						["englishClass"] = "MONK",
					},
					["猎人"] = {
						["Count"] = 5,
						["englishClass"] = "HUNTER",
					},
					["潜行者"] = {
						["Count"] = 2,
						["englishClass"] = "ROGUE",
					},
					["术士"] = {
						["Count"] = 2,
						["englishClass"] = "WARLOCK",
					},
					["萨满祭司"] = {
						["Count"] = 2,
						["englishClass"] = "SHAMAN",
					},
					["战士"] = {
						["Count"] = 4,
						["englishClass"] = "WARRIOR",
					},
					["死亡骑士"] = {
						["Count"] = 4,
						["englishClass"] = "DEATHKNIGHT",
					},
					["法师"] = {
						["Count"] = 2,
						["englishClass"] = "MAGE",
					},
					["圣骑士"] = {
						["Count"] = 3,
						["englishClass"] = "PALADIN",
					},
				},
				["IsInfList"] = {
				},
				["TeamNumber"] = 2,
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
						"炎耀天-纳沙塔尔", -- [1]
						"嗜血圣人", -- [2]
						"最后的悠悠", -- [3]
						"喵喵人", -- [4]
					},
				},
				["TeamCount"] = {
					5, -- [1]
					5, -- [2]
					5, -- [3]
					4, -- [4]
					5, -- [5]
					3, -- [6]
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
					["咏春"] = {
						["subgroup"] = 5,
						["name"] = "咏春",
						["raidn"] = 22,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid22",
						["unit"] = "咏春",
					},
					["苍南派丶-末日祷告祭坛"] = {
						["subgroup"] = 1,
						["name"] = "苍南派丶-末日祷告祭坛",
						["raidn"] = 5,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid5",
						["unit"] = "苍南派丶-末日祷告祭坛",
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
					["Bubbleogum"] = {
						["subgroup"] = 3,
						["name"] = "Bubbleogum",
						["raidn"] = 13,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid13",
						["unit"] = "Bubbleogum",
					},
					["一颗尘埃"] = {
						["subgroup"] = 4,
						["name"] = "一颗尘埃",
						["raidn"] = 18,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid18",
						["unit"] = "一颗尘埃",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
					},
					["雅琪拉风"] = {
						["subgroup"] = 5,
						["name"] = "雅琪拉风",
						["raidn"] = 20,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid20",
						["unit"] = "雅琪拉风",
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
					["月丶色-纳沙塔尔"] = {
						["subgroup"] = 2,
						["name"] = "月丶色-纳沙塔尔",
						["raidn"] = 8,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid8",
						["unit"] = "月丶色-纳沙塔尔",
					},
					["翱翔火羽山"] = {
						["subgroup"] = 2,
						["name"] = "翱翔火羽山",
						["raidn"] = 11,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid11",
						["unit"] = "翱翔火羽山",
					},
					["pet"] = {
						["name"] = "宠物",
						["raidn"] = -19,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pet",
					},
					["无情总是伤"] = {
						["subgroup"] = 3,
						["name"] = "无情总是伤",
						["raidn"] = 14,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid14",
						["unit"] = "无情总是伤",
					},
					["阿萨斯之殇-纳沙塔尔"] = {
						["subgroup"] = 6,
						["name"] = "阿萨斯之殇-纳沙塔尔",
						["raidn"] = 27,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid27",
						["unit"] = "阿萨斯之殇-纳沙塔尔",
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
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
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
					["文明使者-末日祷告祭坛"] = {
						["subgroup"] = 3,
						["name"] = "文明使者-末日祷告祭坛",
						["raidn"] = 15,
						["class"] = "法师",
						["englishClass"] = "MAGE",
						["unitid"] = "raid15",
						["unit"] = "文明使者-末日祷告祭坛",
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
					["maintank6"] = {
						["unit"] = "maintank6",
						["name"] = "MT6",
						["raidn"] = -15,
						["class"] = "",
						["englishClass"] = "",
						["subgroup"] = -1,
						["cuid"] = 16,
					},
					["最后的悠悠"] = {
						["subgroup"] = 2,
						["name"] = "最后的悠悠",
						["raidn"] = 9,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid9",
						["unit"] = "最后的悠悠",
					},
					["喵喵人"] = {
						["subgroup"] = 5,
						["name"] = "喵喵人",
						["raidn"] = 24,
						["class"] = "武僧",
						["englishClass"] = "MONK",
						["unitid"] = "raid24",
						["unit"] = "喵喵人",
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
					["宾红-纳沙塔尔"] = {
						["subgroup"] = 6,
						["name"] = "宾红-纳沙塔尔",
						["raidn"] = 25,
						["class"] = "潜行者",
						["englishClass"] = "ROGUE",
						["unitid"] = "raid25",
						["unit"] = "宾红-纳沙塔尔",
					},
					["风之"] = {
						["subgroup"] = 5,
						["name"] = "风之",
						["raidn"] = 23,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid23",
						["unit"] = "风之",
					},
					["妮丶-末日祷告祭坛"] = {
						["subgroup"] = 1,
						["name"] = "妮丶-末日祷告祭坛",
						["raidn"] = 6,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid6",
						["unit"] = "妮丶-末日祷告祭坛",
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
					["嗜血圣人"] = {
						["subgroup"] = 1,
						["name"] = "嗜血圣人",
						["raidn"] = 3,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid3",
						["unit"] = "嗜血圣人",
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
						["subgroup"] = 2,
						["name"] = "加尔鲁什",
						["raidn"] = 7,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid7",
						["unit"] = "加尔鲁什",
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
					["focustarget"] = {
						["name"] = "焦点目标的目标",
						["raidn"] = -4,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "focustarget",
					},
					["炎耀天-纳沙塔尔"] = {
						["subgroup"] = 1,
						["name"] = "炎耀天-纳沙塔尔",
						["raidn"] = 2,
						["class"] = "战士",
						["englishClass"] = "WARRIOR",
						["unitid"] = "raid2",
						["unit"] = "炎耀天-纳沙塔尔",
					},
					["帕瑟纷妮"] = {
						["subgroup"] = 5,
						["name"] = "帕瑟纷妮",
						["raidn"] = 21,
						["class"] = "死亡骑士",
						["englishClass"] = "DEATHKNIGHT",
						["unitid"] = "raid21",
						["unit"] = "帕瑟纷妮",
					},
					["targettarget"] = {
						["name"] = "当前目标的目标",
						["raidn"] = -6,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "targettarget",
					},
					["撒总的萨满"] = {
						["subgroup"] = 4,
						["name"] = "撒总的萨满",
						["raidn"] = 16,
						["class"] = "萨满祭司",
						["englishClass"] = "SHAMAN",
						["unitid"] = "raid16",
						["unit"] = "撒总的萨满",
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
					["不落的骑士"] = {
						["subgroup"] = 4,
						["name"] = "不落的骑士",
						["raidn"] = 17,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid17",
						["unit"] = "不落的骑士",
					},
					["boss3"] = {
						["name"] = "Boss3",
						["raidn"] = -23,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["帅锅丶求合体"] = {
						["subgroup"] = 4,
						["name"] = "帅锅丶求合体",
						["raidn"] = 19,
						["class"] = "圣骑士",
						["englishClass"] = "PALADIN",
						["unitid"] = "raid19",
						["unit"] = "帅锅丶求合体",
					},
					["九戒灵一血忍"] = {
						["subgroup"] = 3,
						["name"] = "九戒灵一血忍",
						["raidn"] = 12,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid12",
						["unit"] = "九戒灵一血忍",
					},
					["利燚"] = {
						["subgroup"] = 2,
						["name"] = "利燚",
						["raidn"] = 10,
						["class"] = "猎人",
						["englishClass"] = "HUNTER",
						["unitid"] = "raid10",
						["unit"] = "利燚",
					},
					["夜袭鹌鹑营-末日祷告祭坛"] = {
						["subgroup"] = 6,
						["name"] = "夜袭鹌鹑营-末日祷告祭坛",
						["raidn"] = 26,
						["class"] = "术士",
						["englishClass"] = "WARLOCK",
						["unitid"] = "raid26",
						["unit"] = "夜袭鹌鹑营-末日祷告祭坛",
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
			["name"] = "冰霜DK基础包",
			["updata"] = {
			},
			["Mark"] = "755977-836794",
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

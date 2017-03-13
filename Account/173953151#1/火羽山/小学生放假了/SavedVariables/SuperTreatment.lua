
SuperTreatmentDBF = {
	["AddOnMemory"] = {
		["max"] = 60,
		["inf"] = false,
		["on"] = false,
		["Leftfighting"] = false,
	},
	["index"] = 1,
	["Version"] = 502010,
	["Macro"] = {
		{
			["type"] = "script",
			["name"] = "坐骑状态",
			["id"] = "11397975776-17534.298",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--坐骑状态\nif IsMounted(\"player\")==1 then\n    return;\nend",
			["Texture"] = "Interface\\Icons\\Ability_Warrior_SavageBlow",
		}, -- [1]
		{
			["type"] = "script",
			["name"] = "自定义保命",
			["id"] = "21397975776-17534.298",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--自动保命\nif BeeUnitAffectingCombat() then\n    if UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.45 and BeeIsRun(\"治疗石\") then\n        BeeRun(\"治疗石\");\n    return;end\n    if BeeUnitAffectingCombat() and  BeeSpellCD(\"闪避\")<=0 and BeeUnitHealth(\"player\",\"%\")<40 and BeeIsRun(\"闪避\") then BeeRun(\"闪避\");\n        return;\n    end\n    if BeeUnitBuffInfo(\"player\",2,\"Magic,Curse,Disease,Poison\",0)>=2 and BeeSpellCD(\"暗影斗篷\")<=0 and BeeUnitMana()>=25 and BeeIsRun(\"暗影斗篷\",\"player\") then BeeRun(\"暗影斗篷\",\"player\")\n    return;end\n    if BeeUnitAffectingCombat() and  BeeSpellCD(\"备战就绪\")<=0 and BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"备战就绪\") then BeeRun(\"备战就绪\");\n        return;\n    end\nend\nif BeeUnitHealth(\"player\",\"%\")<70 and BeeIsRun(\"恢复\",\"player\") and BeePlayerBuffTime(\"恢复\")<0 and BeeGetComboPoints()>1 then\n    BeeRun(\"恢复\",\"player\");\n    return;\nend;\n\n\n\n",
			["Texture"] = "Interface\\Icons\\Ability_Warrior_Safeguard",
		}, -- [2]
		{
			["type"] = "script",
			["name"] = "自动寻找目标",
			["id"] = "31397975776-17534.298",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "--攻击最近的目标\nif not UnitExists(\"target\") and not UnitIsDeadOrGhost(\"player\") and UnitCanAttack(\"player\",\"target\") then\n    BeeAttack(0,0);\nend\n\nif BeePlayerBuffTime(\"切割\")<5  and BeeUnitMana()<60 then return; end; ",
			["Texture"] = "Interface\\Icons\\Ability_Whirlwind",
		}, -- [3]
		{
			["type"] = "script",
			["name"] = "脚踢打断施法(自定义)",
			["id"] = "41397975776-17534.298",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "local NeedBreak = \"火球术,云雾冲击,冰川冲击,奥术飞弹,灵魂震击,治疗之环,生命吸取,恐惧,圣光术,快速治疗,强效治疗术,魔能火球,冰霜新星,神圣新星,治疗之触,愈合,寒冰箭雨,飓风,烈焰,治疗波,献祭,滋养,次级治疗波,苦修,变形术,暗影修补,圣光闪现,召唤太阳宝珠,黑暗契约,黑暗治疗,暗影打击,烈焰风暴,暗影愈合,寒冰箭,熔岩箭,强制之握,震爆,混乱之箭\"\n\nif BeeStringFind(NeedBreak,BeeUnitCastSpellName()) and BeeTargetBuffTime(\"保护祝福\")==-1 then\n    if BeeIsRun(\"脚踢\") then\n        BeeRun(\"脚踢\");\n        return;\n    end\nend",
			["Texture"] = "Interface\\Icons\\Spell_Arcane_PortalShattrath",
		}, -- [4]
		{
			["type"] = "script",
			["name"] = "主输出循环",
			["id"] = "51397975776-17534.298",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "if BeeSpellCD(\"冲动\")<=0 and BeeUnitMana()<=20 and BeeIsRun(\"冲动\") and BeeUnitHealth(\"target\",\"nil\")>1000000 then BeeRun(\"冲动\");\n    return;\nend\nif BeeGetComboPoints()<=3 and BeePlayerBuffTime(\"切割\")>0 and BeeIsRun(\"影袭\",\"target\") then BeeRun(\"影袭\");\n    return;\nend\nif BeePlayerBuffTime(\"切割\")<2 and BeeUnitHealth(\"target\",\"nil\")>30000 and BeeIsRun(\"切割\",nogoal) and BeeGetComboPoints()>=1 then\n    BeeRun(\"切割\",nogoal);\n    return;\nend\nif BeeIsRun(\"刺骨\") and BeeGetComboPoints()==5  then\n    BeeRun(\"刺骨\");\n    return;\nend\nif BeePlayerBuffTime(\"切割\")>0  and BeeGetComboPoints()==4  and BeeIsRun(\"要害打击\",\"target\") and BeeTargetDeBuffTime(\"要害打击\")<0 then BeeRun(\"要害打击\");\nelse  BeeRun(\"影袭\");\nend\n\n\n\n\n",
			["Texture"] = "Interface\\Icons\\Spell_DeathKnight_SummonDeathCharger",
		}, -- [5]
		{
			["type"] = "script",
			["name"] = "加入割裂的主循环",
			["id"] = "61397975776-17534.298",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "if BeeSpellCD(\"冲动\")<=0 and BeeUnitMana()<=20 and BeeIsRun(\"冲动\") and BeeUnitHealth(\"target\",\"nil\")>1000000 then BeeRun(\"冲动\");\n    return;\nend\n\nif BeePlayerBuffTime(\"切割\")<3 and BeeUnitHealth(\"target\",\"nil\")>30000 and BeeIsRun(\"切割\",nogoal) and BeeGetComboPoints()>=1 then\n    BeeRun(\"切割\",nogoal);\n    return;\nend\nif BeeIsRun(\"刺骨\") and BeeGetComboPoints()==5 and BeeTargetDeBuffTime(\"割裂\")>=0  then\n    BeeRun(\"刺骨\");\n    return;\nend\nif BeeTargetDeBuffTime(\"割裂\")<0 and BeeGetComboPoints()==5 and BeeIsRun(\"割裂\")  then\n    BeeRun(\"割裂\");\n    return;\nend\nif BeePlayerBuffTime(\"切割\")>0  and BeeGetComboPoints()==4  and BeeIsRun(\"要害打击\",\"target\") and BeeTargetDeBuffTime(\"要害打击\")<0 then BeeRun(\"要害打击\"); else  BeeRun(\"影袭\");\nreturn; end\n\nif BeeGetComboPoints()<=3 and BeeIsRun(\"影袭\",\"target\") then BeeRun(\"影袭\");\n    return;\nend\n\n\n",
			["Texture"] = "Interface\\Icons\\Ability_Creature_Cursed_04",
		}, -- [6]
		{
			["type"] = "script",
			["name"] = "嫁祸焦点",
			["id"] = "71397975776-17534.298",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "if BeeUnitPlayerControlled(\"focus\") and BeeIsRun(\"嫁祸诀窍\",\"focus\") and BeeUnitMana()<60 and BeeRange(focus)<=20 then \n    BeeRun(\"嫁祸诀窍\",\"focus\");\n    return; \nend",
			["Texture"] = "INTERFACE\\ICONS\\inv_chest_chain_06",
		}, -- [7]
		{
			["type"] = "script",
			["name"] = "嫁祸T",
			["id"] = "81397975776-17534.298",
			["Remarks"] = "當滿足條件時自動施放",
			["Macro"] = "if BeeUnitAffectingCombat() then\nif  BeeIsRun(\"嫁祸诀窍\") then \n    BeeRun(\"/cast [target=targettarget] 嫁祸诀窍\");\n    return; \nend end",
			["Texture"] = "Interface\\Icons\\Ability_Warrior_WarCry",
		}, -- [8]
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
						["id"] = "11397975776-17534.298",
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
						["id"] = "21397975776-17534.298",
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
						["id"] = "31397975776-17534.298",
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
						["id"] = "41397975776-17534.298",
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
						["id"] = "51397975776-17534.298",
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
						["id"] = "61397975776-17534.298",
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
						["id"] = "71397975776-17534.298",
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
						["id"] = "81397975776-17534.298",
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
				},
				["checked"] = true,
				["ApiDbf"] = {
				},
				["name"] = "战斗盗贼基础包",
				["Remarks"] = "",
				["Key"] = {
					["KeySelect"] = "auto",
				},
				["ExcludeTarget"] = {
				},
				["Mark"] = "515101-223500",
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
			["潜行者"] = {
				["Count"] = 1,
				["englishClass"] = "ROGUE",
			},
		},
		["IsInfList"] = {
		},
		["TeamNumber"] = 0,
		["CustomizeIndex"] = 0,
		["IsInfListSet"] = {
		},
		["TeamCount"] = {
			[0] = 1,
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
			["小学生放假了"] = {
				["subgroup"] = 0,
				["name"] = "小学生放假了",
				["raidn"] = 1,
				["englishClass"] = "ROGUE",
				["class"] = "潜行者",
				["unitid"] = "player",
				["unit"] = "小学生放假了",
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
			["target"] = {
				["name"] = "当前目标",
				["raidn"] = -7,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "target",
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
				["class"] = "",
				["englishClass"] = "",
				["subgroup"] = -1,
				["cuid"] = 1,
			},
			["vehicle"] = {
				["name"] = "你控制的车辆",
				["raidn"] = -20,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "vehicle",
			},
			["focus"] = {
				["name"] = "焦点目标",
				["raidn"] = -5,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "focus",
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
			["pettarget"] = {
				["name"] = "宠物的目标",
				["raidn"] = -18,
				["subgroup"] = -1,
				["class"] = "",
				["englishClass"] = "",
				["unit"] = "pettarget",
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
	["name"] = "战斗盗贼基础包",
	["updata"] = {
	},
	["Mark"] = "632292-395855",
	["CollectionInf"] = {
		["Buff_Spell"] = {
		},
	},
	["Import"] = true,
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
					["武僧"] = {
						["Count"] = 2,
						["englishClass"] = "MONK",
					},
					["猎人"] = {
						["Count"] = 4,
						["englishClass"] = "HUNTER",
					},
					["潜行者"] = {
						["Count"] = 4,
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
						["Count"] = 3,
						["englishClass"] = "SHAMAN",
					},
					["圣骑士"] = {
						["Count"] = 2,
						["englishClass"] = "PALADIN",
					},
					["战士"] = {
						["Count"] = 5,
						["englishClass"] = "WARRIOR",
					},
					["法师"] = {
						["Count"] = 1,
						["englishClass"] = "MAGE",
					},
					["死亡骑士"] = {
						["Count"] = 3,
						["englishClass"] = "DEATHKNIGHT",
					},
					["牧师"] = {
						["Count"] = 4,
						["englishClass"] = "PRIEST",
					},
				},
				["IsInfList"] = {
				},
				["TeamNumber"] = 7,
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
						"丶且行且珍惜-红云台地", -- [1]
						"武汉跨时空-血环", -- [2]
						"Misskiss-玛洛加尔", -- [3]
					},
				},
				["TeamCount"] = {
					5, -- [1]
					5, -- [2]
					5, -- [3]
					5, -- [4]
					4, -- [5]
					5, -- [6]
					3, -- [7]
				},
				["RaidList"] = {
					["瑞安公主-燃烧平原"] = {
						["name"] = "瑞安公主-燃烧平原",
						["subgroup"] = 5,
						["raidn"] = 24,
						["englishClass"] = "HUNTER",
						["class"] = "猎人",
						["unitid"] = "raid24",
						["unit"] = "瑞安公主-燃烧平原",
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
						["cuid"] = 12,
						["name"] = "MT2",
						["raidn"] = -11,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "maintank2",
					},
					["残駭-红云台地"] = {
						["name"] = "残駭-红云台地",
						["subgroup"] = 6,
						["raidn"] = 27,
						["englishClass"] = "PRIEST",
						["class"] = "牧师",
						["unitid"] = "raid27",
						["unit"] = "残駭-红云台地",
					},
					["Bourboner-阿尔萨斯"] = {
						["name"] = "Bourboner-阿尔萨斯",
						["subgroup"] = 5,
						["raidn"] = 22,
						["englishClass"] = "PALADIN",
						["class"] = "圣骑士",
						["unitid"] = "raid22",
						["unit"] = "Bourboner-阿尔萨斯",
					},
					["无就素冥斗士-熊猫酒仙"] = {
						["name"] = "无就素冥斗士-熊猫酒仙",
						["subgroup"] = 3,
						["raidn"] = 13,
						["englishClass"] = "DEATHKNIGHT",
						["class"] = "死亡骑士",
						["unitid"] = "raid13",
						["unit"] = "无就素冥斗士-熊猫酒仙",
					},
					["黄鹤楼丶-黑暗魅影"] = {
						["name"] = "黄鹤楼丶-黑暗魅影",
						["subgroup"] = 4,
						["raidn"] = 16,
						["englishClass"] = "HUNTER",
						["class"] = "猎人",
						["unitid"] = "raid16",
						["unit"] = "黄鹤楼丶-黑暗魅影",
					},
					["小学生放假了"] = {
						["name"] = "小学生放假了",
						["subgroup"] = 7,
						["raidn"] = 30,
						["englishClass"] = "ROGUE",
						["class"] = "潜行者",
						["unitid"] = "raid30",
						["unit"] = "小学生放假了",
					},
					["target"] = {
						["name"] = "当前目标",
						["raidn"] = -7,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "target",
					},
					["Misskiss-玛洛加尔"] = {
						["name"] = "Misskiss-玛洛加尔",
						["subgroup"] = 6,
						["raidn"] = 26,
						["englishClass"] = "DEATHKNIGHT",
						["class"] = "死亡骑士",
						["unitid"] = "raid26",
						["unit"] = "Misskiss-玛洛加尔",
					},
					["boss2"] = {
						["name"] = "Boss2",
						["raidn"] = -22,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["沽名钓誉-熔火之心"] = {
						["name"] = "沽名钓誉-熔火之心",
						["subgroup"] = 4,
						["raidn"] = 17,
						["englishClass"] = "WARLOCK",
						["class"] = "术士",
						["unitid"] = "raid17",
						["unit"] = "沽名钓誉-熔火之心",
					},
					["丶且行且珍惜-红云台地"] = {
						["name"] = "丶且行且珍惜-红云台地",
						["subgroup"] = 1,
						["raidn"] = 3,
						["englishClass"] = "DEATHKNIGHT",
						["class"] = "死亡骑士",
						["unitid"] = "raid3",
						["unit"] = "丶且行且珍惜-红云台地",
					},
					["七彩猫-熊猫酒仙"] = {
						["name"] = "七彩猫-熊猫酒仙",
						["subgroup"] = 6,
						["raidn"] = 29,
						["englishClass"] = "WARLOCK",
						["class"] = "术士",
						["unitid"] = "raid29",
						["unit"] = "七彩猫-熊猫酒仙",
					},
					["mouseover"] = {
						["name"] = "鼠标目标",
						["raidn"] = -2,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseover",
					},
					["猛兽-伊莫塔尔"] = {
						["name"] = "猛兽-伊莫塔尔",
						["subgroup"] = 5,
						["raidn"] = 21,
						["englishClass"] = "MONK",
						["class"] = "武僧",
						["unitid"] = "raid21",
						["unit"] = "猛兽-伊莫塔尔",
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
					["神舟电脑-红云台地"] = {
						["name"] = "神舟电脑-红云台地",
						["subgroup"] = 1,
						["raidn"] = 4,
						["englishClass"] = "WARLOCK",
						["class"] = "术士",
						["unitid"] = "raid4",
						["unit"] = "神舟电脑-红云台地",
					},
					["Greenguy-黑龙军团"] = {
						["name"] = "Greenguy-黑龙军团",
						["subgroup"] = 5,
						["raidn"] = 23,
						["englishClass"] = "WARRIOR",
						["class"] = "战士",
						["unitid"] = "raid23",
						["unit"] = "Greenguy-黑龙军团",
					},
					["季风之帆-霜狼"] = {
						["name"] = "季风之帆-霜狼",
						["subgroup"] = 4,
						["raidn"] = 20,
						["englishClass"] = "WARRIOR",
						["class"] = "战士",
						["unitid"] = "raid20",
						["unit"] = "季风之帆-霜狼",
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
					["maintank6"] = {
						["cuid"] = 16,
						["name"] = "MT6",
						["raidn"] = -15,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "maintank6",
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
					["全世界安息丶-红云台地"] = {
						["name"] = "全世界安息丶-红云台地",
						["subgroup"] = 2,
						["raidn"] = 6,
						["englishClass"] = "ROGUE",
						["class"] = "潜行者",
						["unitid"] = "raid6",
						["unit"] = "全世界安息丶-红云台地",
					},
					["姐丶疯了-红云台地"] = {
						["name"] = "姐丶疯了-红云台地",
						["subgroup"] = 1,
						["raidn"] = 1,
						["englishClass"] = "MAGE",
						["class"] = "法师",
						["unitid"] = "raid1",
						["unit"] = "姐丶疯了-红云台地",
					},
					["落幕演绎-奥尔加隆"] = {
						["name"] = "落幕演绎-奥尔加隆",
						["subgroup"] = 2,
						["raidn"] = 8,
						["englishClass"] = "ROGUE",
						["class"] = "潜行者",
						["unitid"] = "raid8",
						["unit"] = "落幕演绎-奥尔加隆",
					},
					["武汉跨时空-血环"] = {
						["name"] = "武汉跨时空-血环",
						["subgroup"] = 2,
						["raidn"] = 9,
						["englishClass"] = "WARRIOR",
						["class"] = "战士",
						["unitid"] = "raid9",
						["unit"] = "武汉跨时空-血环",
					},
					["Magictyb-玛洛加尔"] = {
						["name"] = "Magictyb-玛洛加尔",
						["subgroup"] = 6,
						["raidn"] = 28,
						["englishClass"] = "HUNTER",
						["class"] = "猎人",
						["unitid"] = "raid28",
						["unit"] = "Magictyb-玛洛加尔",
					},
					["十贰點的钟声-红云台地"] = {
						["name"] = "十贰點的钟声-红云台地",
						["subgroup"] = 7,
						["raidn"] = 31,
						["englishClass"] = "ROGUE",
						["class"] = "潜行者",
						["unitid"] = "raid31",
						["unit"] = "十贰點的钟声-红云台地",
					},
					["算你狠咯-雷霆之王"] = {
						["name"] = "算你狠咯-雷霆之王",
						["subgroup"] = 2,
						["raidn"] = 7,
						["englishClass"] = "PRIEST",
						["class"] = "牧师",
						["unitid"] = "raid7",
						["unit"] = "算你狠咯-雷霆之王",
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
					["吃得饱丶-红云台地"] = {
						["name"] = "吃得饱丶-红云台地",
						["subgroup"] = 6,
						["raidn"] = 25,
						["englishClass"] = "WARRIOR",
						["class"] = "战士",
						["unitid"] = "raid25",
						["unit"] = "吃得饱丶-红云台地",
					},
					["巨萨魔神-甜水绿洲"] = {
						["name"] = "巨萨魔神-甜水绿洲",
						["subgroup"] = 3,
						["raidn"] = 12,
						["englishClass"] = "SHAMAN",
						["class"] = "萨满祭司",
						["unitid"] = "raid12",
						["unit"] = "巨萨魔神-甜水绿洲",
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
					["maintank4"] = {
						["cuid"] = 14,
						["name"] = "MT4",
						["raidn"] = -13,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "maintank4",
					},
					["骚瑞-瓦拉纳"] = {
						["name"] = "骚瑞-瓦拉纳",
						["subgroup"] = 3,
						["raidn"] = 11,
						["englishClass"] = "SHAMAN",
						["class"] = "萨满祭司",
						["unitid"] = "raid11",
						["unit"] = "骚瑞-瓦拉纳",
					},
					["targettarget"] = {
						["name"] = "当前目标的目标",
						["raidn"] = -6,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "targettarget",
					},
					["小媛媛圆果-烈焰峰"] = {
						["name"] = "小媛媛圆果-烈焰峰",
						["subgroup"] = 3,
						["raidn"] = 15,
						["englishClass"] = "PRIEST",
						["class"] = "牧师",
						["unitid"] = "raid15",
						["unit"] = "小媛媛圆果-烈焰峰",
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
					["啸月天牛-提瑞斯法"] = {
						["name"] = "啸月天牛-提瑞斯法",
						["subgroup"] = 7,
						["raidn"] = 32,
						["englishClass"] = "DRUID",
						["class"] = "德鲁伊",
						["unitid"] = "raid32",
						["unit"] = "啸月天牛-提瑞斯法",
					},
					["卡你妹的界面-克尔苏加德"] = {
						["name"] = "卡你妹的界面-克尔苏加德",
						["subgroup"] = 4,
						["raidn"] = 19,
						["englishClass"] = "PALADIN",
						["class"] = "圣骑士",
						["unitid"] = "raid19",
						["unit"] = "卡你妹的界面-克尔苏加德",
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
					["maintank1"] = {
						["cuid"] = 11,
						["name"] = "MT1",
						["raidn"] = -10,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "maintank1",
					},
					["mouseovertarget"] = {
						["name"] = "鼠标目标的目标",
						["raidn"] = -1,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "mouseovertarget",
					},
					["西西小公主-红云台地"] = {
						["name"] = "西西小公主-红云台地",
						["subgroup"] = 2,
						["raidn"] = 10,
						["englishClass"] = "MONK",
						["class"] = "武僧",
						["unitid"] = "raid10",
						["unit"] = "西西小公主-红云台地",
					},
					["Tiom-红云台地"] = {
						["name"] = "Tiom-红云台地",
						["subgroup"] = 1,
						["raidn"] = 5,
						["englishClass"] = "WARRIOR",
						["class"] = "战士",
						["unitid"] = "raid5",
						["unit"] = "Tiom-红云台地",
					},
					["boss3"] = {
						["name"] = "Boss3",
						["raidn"] = -23,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "boss1",
					},
					["pet"] = {
						["name"] = "宠物",
						["raidn"] = -19,
						["subgroup"] = -1,
						["class"] = "",
						["englishClass"] = "",
						["unit"] = "pet",
					},
					["繆毒-耐奥祖"] = {
						["name"] = "繆毒-耐奥祖",
						["subgroup"] = 4,
						["raidn"] = 18,
						["englishClass"] = "SHAMAN",
						["class"] = "萨满祭司",
						["unitid"] = "raid18",
						["unit"] = "繆毒-耐奥祖",
					},
					["吴之魔剑三少-红云台地"] = {
						["name"] = "吴之魔剑三少-红云台地",
						["subgroup"] = 1,
						["raidn"] = 2,
						["englishClass"] = "PRIEST",
						["class"] = "牧师",
						["unitid"] = "raid2",
						["unit"] = "吴之魔剑三少-红云台地",
					},
					["Drmundo-红云台地"] = {
						["name"] = "Drmundo-红云台地",
						["subgroup"] = 3,
						["raidn"] = 14,
						["englishClass"] = "HUNTER",
						["class"] = "猎人",
						["unitid"] = "raid14",
						["unit"] = "Drmundo-红云台地",
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
			["Import"] = true,
			["Mark"] = "218586-803103",
			["CollectionInf"] = {
				["Buff_Spell"] = {
					["checked"] = false,
				},
			},
			["updata"] = {
			},
			["Version"] = 502010,
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
					["name"] = "坐骑状态",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "11397975776-17534.298",
					["Macro"] = "--坐骑状态\nif IsMounted(\"player\")==1 then\n    return;\nend",
					["Texture"] = "Interface\\Icons\\Ability_Warrior_SavageBlow",
				}, -- [1]
				{
					["type"] = "script",
					["name"] = "自定义保命",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "21397975776-17534.298",
					["Macro"] = "--自动保命\nif BeeUnitAffectingCombat() then\n    if UnitHealth(\"player\")/UnitHealthMax(\"player\")<0.45 and BeeIsRun(\"治疗石\") then\n        BeeRun(\"治疗石\");\n    return;end\n    if BeeUnitAffectingCombat() and  BeeSpellCD(\"闪避\")<=0 and BeeUnitHealth(\"player\",\"%\")<40 and BeeIsRun(\"闪避\") then BeeRun(\"闪避\");\n        return;\n    end\n    if BeeUnitBuffInfo(\"player\",2,\"Magic,Curse,Disease,Poison\",0)>=2 and BeeSpellCD(\"暗影斗篷\")<=0 and BeeUnitMana()>=25 and BeeIsRun(\"暗影斗篷\",\"player\") then BeeRun(\"暗影斗篷\",\"player\")\n    return;end\n    if BeeUnitAffectingCombat() and  BeeSpellCD(\"备战就绪\")<=0 and BeeUnitHealth(\"player\",\"%\")<50 and BeeIsRun(\"备战就绪\") then BeeRun(\"备战就绪\");\n        return;\n    end\nend\nif BeeUnitHealth(\"player\",\"%\")<70 and BeeIsRun(\"恢复\",\"player\") and BeePlayerBuffTime(\"恢复\")<0 and BeeGetComboPoints()>1 then\n    BeeRun(\"恢复\",\"player\");\n    return;\nend;\n\n\n\n",
					["Texture"] = "Interface\\Icons\\Ability_Warrior_Safeguard",
				}, -- [2]
				{
					["type"] = "script",
					["name"] = "自动寻找目标",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "31397975776-17534.298",
					["Macro"] = "--攻击最近的目标\nif not UnitExists(\"target\") and not UnitIsDeadOrGhost(\"player\") and UnitCanAttack(\"player\",\"target\") then\n    BeeAttack(0,0);\nend\n\nif BeePlayerBuffTime(\"切割\")<5  and BeeUnitMana()<60 then return; end; ",
					["Texture"] = "Interface\\Icons\\Ability_Whirlwind",
				}, -- [3]
				{
					["type"] = "script",
					["name"] = "脚踢打断施法(自定义)",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "41397975776-17534.298",
					["Macro"] = "local NeedBreak = \"火球术,云雾冲击,冰川冲击,奥术飞弹,灵魂震击,治疗之环,生命吸取,恐惧,圣光术,快速治疗,强效治疗术,魔能火球,冰霜新星,神圣新星,治疗之触,愈合,寒冰箭雨,飓风,烈焰,治疗波,献祭,滋养,次级治疗波,苦修,变形术,暗影修补,圣光闪现,召唤太阳宝珠,黑暗契约,黑暗治疗,暗影打击,烈焰风暴,暗影愈合,寒冰箭,熔岩箭,强制之握,震爆,混乱之箭\"\n\nif BeeStringFind(NeedBreak,BeeUnitCastSpellName()) and BeeTargetBuffTime(\"保护祝福\")==-1 then\n    if BeeIsRun(\"脚踢\") then\n        BeeRun(\"脚踢\");\n        return;\n    end\nend",
					["Texture"] = "Interface\\Icons\\Spell_Arcane_PortalShattrath",
				}, -- [4]
				{
					["type"] = "script",
					["name"] = "主输出循环",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "51397975776-17534.298",
					["Macro"] = "if BeeSpellCD(\"冲动\")<=0 and BeeUnitMana()<=20 and BeeIsRun(\"冲动\") and BeeUnitHealth(\"target\",\"nil\")>1000000 then BeeRun(\"冲动\");\n    return;\nend\nif BeeGetComboPoints()<=3 and BeePlayerBuffTime(\"切割\")>0 and BeeIsRun(\"影袭\",\"target\") then BeeRun(\"影袭\");\n    return;\nend\nif BeePlayerBuffTime(\"切割\")<2 and BeeUnitHealth(\"target\",\"nil\")>30000 and BeeIsRun(\"切割\",nogoal) and BeeGetComboPoints()>=1 then\n    BeeRun(\"切割\",nogoal);\n    return;\nend\nif BeeIsRun(\"刺骨\") and BeeGetComboPoints()==5  then\n    BeeRun(\"刺骨\");\n    return;\nend\nif BeePlayerBuffTime(\"切割\")>0  and BeeGetComboPoints()==4  and BeeIsRun(\"要害打击\",\"target\") and BeeTargetDeBuffTime(\"要害打击\")<0 then BeeRun(\"要害打击\");\nelse  BeeRun(\"影袭\");\nend\n\n\n\n\n",
					["Texture"] = "Interface\\Icons\\Spell_DeathKnight_SummonDeathCharger",
				}, -- [5]
				{
					["type"] = "script",
					["name"] = "加入割裂的主循环",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "61397975776-17534.298",
					["Macro"] = "if BeeSpellCD(\"冲动\")<=0 and BeeUnitMana()<=20 and BeeIsRun(\"冲动\") and BeeUnitHealth(\"target\",\"nil\")>1000000 then BeeRun(\"冲动\");\n    return;\nend\n\nif BeePlayerBuffTime(\"切割\")<3 and BeeUnitHealth(\"target\",\"nil\")>30000 and BeeIsRun(\"切割\",nogoal) and BeeGetComboPoints()>=1 then\n    BeeRun(\"切割\",nogoal);\n    return;\nend\nif BeeIsRun(\"刺骨\") and BeeGetComboPoints()==5 and BeeTargetDeBuffTime(\"割裂\")>=0  then\n    BeeRun(\"刺骨\");\n    return;\nend\nif BeeTargetDeBuffTime(\"割裂\")<0 and BeeGetComboPoints()==5 and BeeIsRun(\"割裂\")  then\n    BeeRun(\"割裂\");\n    return;\nend\nif BeePlayerBuffTime(\"切割\")>0  and BeeGetComboPoints()==4  and BeeIsRun(\"要害打击\",\"target\") and BeeTargetDeBuffTime(\"要害打击\")<0 then BeeRun(\"要害打击\"); else  BeeRun(\"影袭\");\nreturn; end\n\nif BeeGetComboPoints()<=3 and BeeIsRun(\"影袭\",\"target\") then BeeRun(\"影袭\");\n    return;\nend\n\n\n",
					["Texture"] = "Interface\\Icons\\Ability_Creature_Cursed_04",
				}, -- [6]
				{
					["type"] = "script",
					["name"] = "嫁祸焦点",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "71397975776-17534.298",
					["Macro"] = "if BeeUnitPlayerControlled(\"focus\") and BeeIsRun(\"嫁祸诀窍\",\"focus\") and BeeUnitMana()<60 and BeeRange(focus)<=20 then \n    BeeRun(\"嫁祸诀窍\",\"focus\");\n    return; \nend",
					["Texture"] = "INTERFACE\\ICONS\\inv_chest_chain_06",
				}, -- [7]
				{
					["type"] = "script",
					["name"] = "嫁祸T",
					["Remarks"] = "當滿足條件時自動施放",
					["id"] = "81397975776-17534.298",
					["Macro"] = "if BeeUnitAffectingCombat() then\nif  BeeIsRun(\"嫁祸诀窍\") then \n    BeeRun(\"/cast [target=targettarget] 嫁祸诀窍\");\n    return; \nend end",
					["Texture"] = "Interface\\Icons\\Ability_Warrior_WarCry",
				}, -- [8]
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
								["id"] = "11397975776-17534.298",
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
								["id"] = "21397975776-17534.298",
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
								["id"] = "31397975776-17534.298",
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
								["id"] = "41397975776-17534.298",
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
								["id"] = "51397975776-17534.298",
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
								["id"] = "61397975776-17534.298",
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
								["id"] = "71397975776-17534.298",
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
								["id"] = "81397975776-17534.298",
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
						},
						["name"] = "战斗盗贼基础包",
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
			["name"] = "战斗盗贼基础包",
			["Import"] = true,
			["Mark"] = "632292-395855",
			["CollectionInf"] = {
				["Buff_Spell"] = {
				},
			},
			["updata"] = {
			},
			["Version"] = 502010,
		}, -- [2]
	},
	["MenusWinDows"] = true,
	["HelpNavigation"] = true,
	["SetSounds"] = {
	},
}

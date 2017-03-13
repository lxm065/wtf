
TellMeWhenDB = {
	["global"] = {
		["TextLayouts"] = {
			["icon1"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
			["bar2"] = {
				{
				}, -- [1]
				{
				}, -- [2]
			},
		},
		["Groups"] = {
			{
				["Point"] = {
					["y"] = -45.0430766148873,
					["x"] = 103.486611493324,
				},
				["Scale"] = 0.600000023841858,
				["Tree4"] = false,
				["Columns"] = 1,
				["Tree1"] = false,
				["GUID"] = "TMW:group:1L3duEcMQR24",
				["Tree3"] = false,
				["Tree2"] = false,
			}, -- [1]
			{
				["Point"] = {
					["y"] = -208.090173946893,
					["x"] = -294.431752384135,
				},
				["Scale"] = 0.883757174015045,
				["Tree4"] = false,
				["Tree2"] = false,
				["Tree1"] = false,
				["Icons"] = {
					{
						["Type"] = "conditionicon",
						["Events"] = {
							{
								["AnimColor"] = "80ff0000",
								["Type"] = "Animations",
								["Animation"] = "ACTVTNGLOW",
								["Text"] = "[爆发]",
								["Event"] = "OnShow",
								["Infinite"] = true,
							}, -- [1]
							{
								["AnimColor"] = "80ff0000",
								["Type"] = "Sound",
								["Sound"] = "War Drums",
								["Event"] = "OnShow",
							}, -- [2]
							["n"] = 2,
						},
						["SettingsPerView"] = {
							["icon"] = {
								["TextLayout"] = "icon1",
								["Texts"] = {
									"", -- [1]
								},
							},
						},
						["CustomTex"] = "113860",
						["Conditions"] = {
							{
								["Type"] = "DEBUFFDUR",
								["Checked"] = true,
								["Operator"] = ">",
								["Unit"] = "target",
								["Name"] = "痛楚",
							}, -- [1]
							{
								["Type"] = "DEBUFFDUR",
								["Checked"] = true,
								["Operator"] = ">",
								["Unit"] = "target",
								["Name"] = "腐蚀术",
							}, -- [2]
							{
								["Type"] = "DEBUFFDUR",
								["Checked"] = true,
								["Operator"] = ">",
								["Unit"] = "target",
								["Name"] = "痛苦无常",
							}, -- [3]
							{
								["Type"] = "DEBUFFDUR",
								["Checked"] = true,
								["Operator"] = ">=",
								["Unit"] = "target",
								["Name"] = "鬼影缠身",
								["Level"] = 5,
							}, -- [4]
							{
								["Type"] = "SPELLCHARGES",
								["Operator"] = ">=",
								["Name"] = "黑暗灵魂：哀难",
								["Level"] = 1,
							}, -- [5]
							{
								["Type"] = "BUFFDUR",
								["Checked"] = true,
								["Name"] = "黑暗灵魂：哀难",
							}, -- [6]
							{
								["Type"] = "SOUL_SHARDS",
								["Operator"] = ">",
							}, -- [7]
							{
								["Type"] = "ITEMCD",
								["Name"] = "113835",
							}, -- [8]
							["n"] = 8,
						},
					}, -- [1]
				},
				["GUID"] = "TMW:group:1L3e0eNfe3fr",
				["Tree3"] = false,
				["Columns"] = 1,
			}, -- [2]
		},
		["HelpSettings"] = {
			["CNDT_ANDOR_FIRSTSEE"] = true,
			["ICON_EXPORT_DOCOPY"] = true,
			["ICON_DURS_FIRSTSEE"] = true,
			["CNDT_PARENTHESES_FIRSTSEE"] = true,
			["SCROLLBAR_DROPDOWN"] = false,
			["IE_TIMERTEXTHANDLER_MISSING"] = true,
			["ICON_POCKETWATCH_FIRSTSEE"] = true,
			["SUG_FIRSTHELP"] = true,
			["SIMPLEGSTAB"] = true,
		},
		["NumGroups"] = 2,
	},
	["Version"] = 81101,
	["profileKeys"] = {
		["悠悠龟 - 暗影裂口"] = "悠悠龟 - 暗影裂口",
		["猪猪三 - 萨洛拉丝"] = "猪猪三 - 萨洛拉丝",
		["悠悠龟 - 加里索斯"] = "悠悠龟 - 加里索斯",
		["弹弹堂一号 - 回音山"] = "弹弹堂一号 - 回音山",
		["悠悠龟 - 斯克提斯"] = "悠悠龟 - 斯克提斯",
		["弹弹堂一号 - 埃霍恩"] = "弹弹堂一号 - 埃霍恩",
		["赞达拉使者 - 火羽山"] = "赞达拉使者 - 火羽山",
		["沃的悠悠龟 - 沃金"] = "沃的悠悠龟 - 沃金",
		["这次我请 - 沃金"] = "这次我请 - 沃金",
		["悠悠兔 - 伊森利恩"] = "悠悠兔 - 伊森利恩",
		["猪猪二号 - 安东尼达斯"] = "猪猪二号 - 安东尼达斯",
		["Ddtq - 海克泰尔"] = "Ddtq - 海克泰尔",
		["那总三号 - 火羽山"] = "那总三号 - 火羽山",
		["悠悠龟 - 无底海渊"] = "悠悠龟 - 无底海渊",
		["Ddtq - 凤凰之神"] = "Ddtq - 凤凰之神",
		["悠悠龟 - 迦拉克隆"] = "悠悠龟 - 迦拉克隆",
		["小学生放假了 - 火羽山"] = "小学生放假了 - 火羽山",
		["Yyga - 奥特兰克"] = "Yyga - 奥特兰克",
		["悠悠蛋 -  晴日峰(江苏)"] = "悠悠蛋 -  晴日峰(江苏)",
		["弹弹堂一号 - 神圣之歌"] = "弹弹堂一号 - 神圣之歌",
		["悠悠龟 - 冬拥湖"] = "悠悠龟 - 冬拥湖",
		["临时工四号 - 火羽山"] = "临时工四号 - 火羽山",
		["弹弹堂三号 - 亚雷戈斯"] = "弹弹堂三号 - 亚雷戈斯",
		["Ggwdtx - 海克泰尔"] = "Ggwdtx - 海克泰尔",
		["弹弹堂 - 遗忘海岸"] = "弹弹堂 - 遗忘海岸",
		["涨姿势 - 火羽山"] = "涨姿势 - 火羽山",
		["弹弹堂一号 - 伊森利恩"] = "弹弹堂一号 - 伊森利恩",
		["那总二号 - 火羽山"] = "那总二号 - 火羽山",
		["Ddtq - 晴日峰 (江苏)"] = "Ddtq - 晴日峰 (江苏)",
		["那总一号 - 火羽山"] = "那总一号 - 火羽山",
		["悠悠蛋 - 晴日峰 (江苏)"] = "悠悠蛋 - 晴日峰 (江苏)",
		["猴赛雷杀猪刀 - 火羽山"] = "猴赛雷杀猪刀 - 火羽山",
		["亦可赛艇 - 迦罗娜"] = "亦可赛艇 - 迦罗娜",
		["弹弹堂一号 - 霜之哀伤"] = "弹弹堂一号 - 霜之哀伤",
		["悠悠龟 - 火羽山"] = "戦斧 - 伊利丹",
		["猪猪一号 - 安东尼达斯"] = "猪猪一号 - 安东尼达斯",
		["悠悠龟 - 天谴之门"] = "悠悠龟 - 天谴之门",
		["弹弹堂一号 - 迦拉克隆"] = "弹弹堂一号 - 迦拉克隆",
		["最初的悠悠 - 日落沼泽"] = "最初的悠悠 - 日落沼泽",
		["弹弹堂一号 - 安东尼达斯"] = "弹弹堂一号 - 安东尼达斯",
		["哥生气了 - 火羽山"] = "哥生气了 - 火羽山",
		["悠悠龟 - 沃金"] = "悠悠龟 - 沃金",
		["猪猪三号 - 火羽山"] = "猪猪三号 - 火羽山",
		["悠悠龟 - 白银之手"] = "悠悠龟 - 白银之手",
		["悠悠龟 - 刀塔"] = "悠悠龟 - 刀塔",
		["猛牛悠悠乳 - 火羽山"] = "猛牛悠悠乳 - 火羽山",
		["悠悠龟 -  时光之穴"] = "悠悠龟 -  时光之穴",
		["悠悠兔 -  辛达苟萨"] = "悠悠兔 -  辛达苟萨",
		["杀猪刀猴赛雷 - 火羽山"] = "杀猪刀猴赛雷 - 火羽山",
		["Ggwdtx - 洛肯"] = "Ggwdtx - 洛肯",
		["最后的悠悠 - 火羽山"] = "最后的悠悠 - 火羽山",
		["Ggwdtx - 回音山"] = "Ggwdtx - 回音山",
		["悠悠龟 - 埃霍恩"] = "悠悠龟 - 埃霍恩",
		["悠悠兔 - 暗影裂口"] = "悠悠兔 - 暗影裂口",
		["Ggwdtx - 暗影裂口"] = "Ggwdtx - 暗影裂口",
		["悠悠乳 - 金色平原"] = "悠悠乳 - 金色平原",
	},
	["profiles"] = {
		["悠悠龟 - 暗影裂口"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGlfQ8peqkJ",
					["Point"] = {
						["y"] = 1034.61546388957,
						["x"] = 1112.82057719353,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["猪猪三 - 萨洛拉丝"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQC0GIDE",
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["悠悠龟 - 加里索斯"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQC7bvLR",
					["Point"] = {
						["y"] = 310.18021326079,
						["x"] = -219.494889976911,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Scale"] = 0.852307940620419,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["弹弹堂一号 - 回音山"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KW4=OtI5dqk",
					["Point"] = {
						["y"] = 449.94921875,
						["x"] = 408.10265972832,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["悠悠龟 - 斯克提斯"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCCmtxt",
					["Point"] = {
						["y"] = 1034.61550180847,
						["x"] = 1112.82061487339,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["弹弹堂一号 - 埃霍恩"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCGlf2x",
					["Point"] = {
						["y"] = 1034.61550180847,
						["x"] = 1112.82061487339,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["最后的悠悠 - 火羽山"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCKY3th",
					["Point"] = {
						["y"] = 263.964568268734,
						["x"] = -143.077160366895,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.704166800098612,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["沃的悠悠龟 - 沃金"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCOX3Xs",
					["Point"] = {
						["y"] = 328.512748319326,
						["x"] = 385.128532082234,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 71204,
		},
		["这次我请 - 沃金"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCSFErd",
					["Point"] = {
						["y"] = 1034.61550180847,
						["x"] = 1112.82061487339,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["悠悠兔 - 伊森利恩"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCWAS47",
					["Point"] = {
						["y"] = 1034.61536237013,
						["x"] = 1030.76933526508,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["弹弹堂三号 - 亚雷戈斯"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCaJDBY",
					["Point"] = {
						["y"] = 368.718388206807,
						["x"] = 488.205766163749,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["Ddtq - 海克泰尔"] = {
			["Version"] = 74003,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1MuLBcj3wPv0",
				}, -- [1]
			},
		},
		["那总三号 - 火羽山"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1MqmH=6=MA_s",
					["Point"] = {
						["y"] = 1034.61547851563,
						["x"] = 1112.82055664063,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["悠悠龟 - 无底海渊"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCdssaW",
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["戦斧 - 伊利丹"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQEfzaa1",
					["Point"] = {
						["y"] = -124.158871899627,
						["x"] = 29.3832961071431,
					},
					["Scale"] = 1.28630127543128,
					["Tree4"] = false,
					["Tree2"] = false,
					["Tree1"] = false,
					["Name"] = "双钢舞",
					["Tree3"] = false,
				}, -- [1]
				{
					["GUID"] = "TMW:group:1KGCXQEgCCJN",
					["Point"] = {
						["y"] = -91.4993302528098,
						["x"] = 23.0738612788987,
					},
					["Scale"] = 1.82160470639368,
					["Tree4"] = false,
					["OnlyInCombat"] = true,
					["Tree2"] = false,
					["EnabledSpecs"] = {
						[73] = false,
						[71] = false,
					},
					["Tree1"] = false,
					["Icons"] = {
						nil, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "buff",
							["Name"] = "绞肉机",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Enabled"] = true,
						}, -- [2]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1KGCXQEhzXVu", -- [1]
								"TMW:icon:1KGCXQEi3gDJ", -- [2]
								"TMW:icon:1KGCXQEi9C9X", -- [3]
								"TMW:icon:1KGCXQEiEfEb", -- [4]
								"TMW:icon:1KGCXQEiJfEZ", -- [5]
								"TMW:icon:1KGCXQEiOyco", -- [6]
								"TMW:icon:1KGCXQEiUUYO", -- [7]
								"TMW:icon:1KGCXQEiZsng", -- [8]
								"TMW:icon:1KGCXQEifYPr", -- [9]
								"TMW:icon:1KGCXQEikYPs", -- [10]
								"TMW:icon:1KGCXQEiqItn", -- [11]
								"TMW:icon:1KGCXQEivh6=", -- [12]
								"TMW:icon:1KGCXQEi_8C8", -- [13]
								"TMW:icon:1KGCXQEj4D2d", -- [14]
								"TMW:icon:1KGCXQEjA7D1", -- [15]
								"", -- [16]
							},
							["Enabled"] = true,
						}, -- [3]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1KGCXQEjNh4e", -- [1]
								"TMW:icon:1KGCXQEjTC_b", -- [2]
							},
							["Enabled"] = true,
						}, -- [4]
					},
					["Name"] = "整合",
					["Tree3"] = false,
				}, -- [2]
				{
					["Point"] = {
						["y"] = 81.6125191882071,
						["x"] = -124.659661275655,
					},
					["Scale"] = 1.23799753189087,
					["Rows"] = 5,
					["Tree4"] = false,
					["Tree2"] = false,
					["EnabledSpecs"] = {
						[73] = false,
					},
					["Tree1"] = false,
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "23881",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "SPELLCD",
									["Name"] = "23881",
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1KGCXQEhzXVu",
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "86346",
							["ClockGCD"] = true,
							["GUID"] = "TMW:icon:1KGCXQEi3gDJ",
							["FakeHidden"] = true,
							["Enabled"] = true,
						}, -- [2]
						{
							["ShowTimer"] = true,
							["Type"] = "reactive",
							["Name"] = "5308",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["GUID"] = "TMW:icon:1KGCXQEi9C9X",
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Unit"] = "target",
									["Operator"] = ">",
									["Name"] = "86346",
								}, -- [1]
								{
									["Type"] = "BUFFNUMBER",
									["Checked"] = true,
									["Name"] = "12880",
									["Level"] = 1,
								}, -- [2]
								{
									["Type"] = "ALIVE",
									["Unit"] = "target",
								}, -- [3]
								["n"] = 3,
							},
							["UseActvtnOverlay"] = true,
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "reactive",
							["Name"] = "5308",
							["GUID"] = "TMW:icon:1KGCXQEiEfEb",
							["ClockGCD"] = true,
							["ManaCheck"] = true,
							["CooldownCheck"] = true,
							["States"] = {
								nil, -- [1]
								nil, -- [2]
								nil, -- [3]
								{
									["Alpha"] = 0,
								}, -- [4]
							},
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "RAGE_ABS",
									["Operator"] = ">=",
									["Level"] = 110,
								}, -- [1]
								{
									["Type"] = "ALIVE",
									["Unit"] = "target",
								}, -- [2]
								["n"] = 2,
							},
							["UseActvtnOverlay"] = true,
							["Enabled"] = true,
						}, -- [4]
						{
							["ShowTimer"] = true,
							["Type"] = "buff",
							["Name"] = "131116",
							["ClockGCD"] = true,
							["GUID"] = "TMW:icon:1KGCXQEiJfEZ",
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Unit"] = "target",
									["Operator"] = ">",
									["Name"] = "86346",
								}, -- [1]
								{
									["Type"] = "BUFFNUMBER",
									["Checked"] = true,
									["Name"] = "131116",
									["Level"] = 2,
								}, -- [2]
								["n"] = 2,
							},
							["UseActvtnOverlay"] = true,
							["Enabled"] = true,
						}, -- [5]
						{
							["ShowTimer"] = true,
							["Type"] = "buff",
							["Name"] = "131116",
							["ClockGCD"] = true,
							["GUID"] = "TMW:icon:1KGCXQEiOyco",
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Unit"] = "target",
									["Operator"] = ">",
									["Name"] = "86346",
								}, -- [1]
								{
									["Type"] = "BUFFNUMBER",
									["Checked"] = true,
									["Name"] = "46916",
								}, -- [2]
								["n"] = 2,
							},
							["UseActvtnOverlay"] = true,
							["Enabled"] = true,
						}, -- [6]
						{
							["ShowTimer"] = true,
							["Type"] = "buff",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["SettingsPerView"] = {
								["icon"] = {
									["TextLayout"] = "icon1",
									["Texts"] = {
										"", -- [1]
									},
								},
							},
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEiUUYO",
							["Name"] = "131116",
							["Conditions"] = {
								{
									["Type"] = "SPELLCD",
									["Operator"] = ">",
									["Name"] = "86346",
									["Level"] = 8,
								}, -- [1]
								["n"] = 1,
							},
							["Enabled"] = true,
						}, -- [7]
						{
							["ShowTimer"] = true,
							["Type"] = "buff",
							["Name"] = "131116",
							["ClockGCD"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEiZsng",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "SPELLCD",
									["Operator"] = "<=",
									["Name"] = "86346",
									["Level"] = 8,
								}, -- [1]
								{
									["Type"] = "BUFFSTACKS",
									["Checked"] = true,
									["Name"] = "131116",
									["Level"] = 2,
								}, -- [2]
								["n"] = 2,
							},
							["Enabled"] = true,
						}, -- [8]
						{
							["Type"] = "cooldown",
							["Name"] = "18499",
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEifYPr",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Checked"] = true,
									["Name"] = "12880",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [9]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "118000",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Operator"] = "<=",
									["Name"] = "138759",
									["Level"] = 3,
								}, -- [1]
								{
									["Type"] = "TALENTLEARNED",
									["Name"] = "巨龙怒吼",
								}, -- [2]
								["n"] = 2,
							},
							["GUID"] = "TMW:icon:1KGCXQEikYPs",
						}, -- [10]
						{
							["ShowTimer"] = true,
							["Type"] = "buff",
							["Name"] = "46916",
							["ClockGCD"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEiqItn",
							["ShowTimerText"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Name"] = "86346",
								}, -- [1]
								{
									["Type"] = "BUFFNUMBER",
									["Checked"] = true,
									["Operator"] = ">=",
									["Name"] = "46916",
									["Level"] = 2,
								}, -- [2]
								["n"] = 2,
							},
							["Enabled"] = true,
						}, -- [11]
						{
							["ShowTimer"] = true,
							["Type"] = "buff",
							["Name"] = "46916",
							["ShowTimerText"] = true,
							["ClockGCD"] = true,
							["Enabled"] = true,
							["GUID"] = "TMW:icon:1KGCXQEivh6=",
							["FakeHidden"] = true,
						}, -- [12]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "100130",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "RAGE_ABS",
									["Operator"] = ">=",
									["Level"] = 110,
								}, -- [1]
								["n"] = 1,
							},
							["GUID"] = "TMW:icon:1KGCXQEi_8C8",
						}, -- [13]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "6673",
							["ClockGCD"] = true,
							["GUID"] = "TMW:icon:1KGCXQEj4D2d",
							["FakeHidden"] = true,
							["Enabled"] = true,
						}, -- [14]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "57755",
							["ClockGCD"] = true,
							["GUID"] = "TMW:icon:1KGCXQEjA7D1",
							["FakeHidden"] = true,
							["Enabled"] = true,
						}, -- [15]
						[17] = {
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "78",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEjNh4e",
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Unit"] = "target",
									["Operator"] = ">",
									["Name"] = "86346",
								}, -- [1]
								{
									["Type"] = "RAGE_ABS",
									["Operator"] = ">=",
									["Level"] = 40,
								}, -- [2]
								["n"] = 2,
							},
						},
						[18] = {
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "78",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEjTC_b",
							["Conditions"] = {
								{
									["Type"] = "RAGE_ABS",
									["Operator"] = ">=",
									["Level"] = 110,
								}, -- [1]
								{
									["Type"] = "BUFFNUMBER",
									["Checked"] = true,
									["Operator"] = ">",
									["Name"] = "31116",
								}, -- [2]
								{
									["Type"] = "BUFFNUMBER",
									["Checked"] = true,
									["Operator"] = ">",
									["Name"] = "46916",
									["AndOr"] = "OR",
								}, -- [3]
								{
									["Type"] = "RAGE_ABS",
									["Operator"] = ">=",
									["Level"] = 110,
								}, -- [4]
								["n"] = 4,
							},
						},
						[19] = {
							["Type"] = "buff",
							["Name"] = "80353",
							["Enabled"] = true,
							["FakeHidden"] = true,
						},
						[20] = {
							["Type"] = "buff",
							["Name"] = "2825",
							["Enabled"] = true,
							["FakeHidden"] = true,
						},
					},
					["GUID"] = "TMW:group:1KGCXQEgO5WU",
					["Name"] = "常用输出监视",
					["Tree3"] = false,
				}, -- [3]
				{
					["GUID"] = "TMW:group:1KGCXQEgiiHv",
					["Point"] = {
						["y"] = -51.7990875244141,
						["x"] = -34.1973266601563,
					},
					["Tree4"] = false,
					["OnlyInCombat"] = true,
					["Tree2"] = false,
					["EnabledSpecs"] = {
						[73] = false,
						[72] = false,
					},
					["Tree1"] = false,
					["Icons"] = {
						nil, -- [1]
						nil, -- [2]
						{
							["Type"] = "meta",
							["Icons"] = {
								"TMW:icon:1KGCXQEmyJVP", -- [1]
								"TMW:icon:1KGCXQEn32_P", -- [2]
								"TMW:icon:1KGCXQEn8kdj", -- [3]
								"TMW:icon:1KGCXQEnE20g", -- [4]
								"TMW:icon:1KGCXQEnJQFA", -- [5]
								"TMW:icon:1KGCXQEnOV5u", -- [6]
								"TMW:icon:1KGCXQEnTjdt", -- [7]
								"TMW:icon:1KGCXQEnYtK1", -- [8]
								"TMW:icon:1KGCXQEnf023", -- [9]
								"TMW:icon:1KGCXQEnk4tJ", -- [10]
							},
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "78",
							["ClockGCD"] = true,
							["Conditions"] = {
								{
									["Type"] = "RAGE_ABS",
									["Operator"] = ">",
									["Level"] = 100,
								}, -- [1]
								["n"] = 1,
							},
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
						}, -- [4]
					},
					["Name"] = "整合武器",
					["Tree3"] = false,
				}, -- [4]
				{
					["GUID"] = "TMW:group:1KGCXQEgqkCZ",
					["Point"] = {
						["y"] = 132.38531650197,
						["x"] = 87.1806255680112,
					},
					["Scale"] = 1.13093817234039,
					["Rows"] = 5,
					["Tree4"] = false,
					["OnlyInCombat"] = true,
					["Tree2"] = false,
					["EnabledSpecs"] = {
						[73] = false,
						[72] = false,
					},
					["Tree1"] = false,
					["Icons"] = {
						{
							["ShowTimer"] = true,
							["Type"] = "reactive",
							["Name"] = "5308",
							["ClockGCD"] = true,
							["GUID"] = "TMW:icon:1KGCXQEmyJVP",
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Unit"] = "target",
									["Operator"] = ">",
									["Name"] = "86346",
								}, -- [1]
								{
									["Type"] = "BUFFNUMBER",
									["Checked"] = true,
									["Name"] = "12880",
									["Level"] = 1,
								}, -- [2]
								{
									["Type"] = "ALIVE",
									["Unit"] = "target",
								}, -- [3]
								["n"] = 3,
							},
							["UseActvtnOverlay"] = true,
							["Enabled"] = true,
						}, -- [1]
						{
							["ShowTimer"] = true,
							["Type"] = "reactive",
							["Name"] = "5308",
							["ClockGCD"] = true,
							["GUID"] = "TMW:icon:1KGCXQEn32_P",
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["Conditions"] = {
								{
									["Type"] = "RAGE_ABS",
									["Operator"] = ">=",
									["Level"] = 90,
								}, -- [1]
								{
									["Type"] = "ALIVE",
									["Unit"] = "target",
								}, -- [2]
								["n"] = 2,
							},
							["UseActvtnOverlay"] = true,
							["Enabled"] = true,
						}, -- [2]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "12294",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["GUID"] = "TMW:icon:1KGCXQEn8kdj",
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
						}, -- [3]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "86346",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEnE20g",
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<=",
									["Unit"] = "target",
									["Name"] = "86346",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [4]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "1464",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEnYtK1",
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">=",
									["Unit"] = "target",
									["Name"] = "86346",
								}, -- [1]
								{
									["Type"] = "RAGE_ABS",
									["Operator"] = ">=",
									["Level"] = 40,
								}, -- [2]
								{
									["Type"] = "BUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Name"] = "12292",
								}, -- [3]
								["n"] = 3,
							},
						}, -- [5]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "118000",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEnOV5u",
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Operator"] = "<=",
									["Name"] = "138759",
									["Level"] = 3,
								}, -- [1]
								{
									["Type"] = "MELEEAP",
									["Operator"] = ">",
									["Level"] = 75000,
								}, -- [2]
								["n"] = 2,
							},
						}, -- [6]
						{
							["ShowTimer"] = true,
							["Type"] = "reactive",
							["Name"] = "7384",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["GUID"] = "TMW:icon:1KGCXQEnTjdt",
							["Conditions"] = {
								{
									["Type"] = "SPELLCD",
									["Operator"] = ">",
									["Name"] = "86346",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [7]
						{
							["Type"] = "cooldown",
							["Name"] = "18499",
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEnJQFA",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "BUFFDUR",
									["Name"] = "12880",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [8]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "6673",
							["ClockGCD"] = true,
							["GUID"] = "TMW:icon:1KGCXQEnk4tJ",
							["FakeHidden"] = true,
							["Enabled"] = true,
						}, -- [9]
						{
							["ShowTimer"] = true,
							["Type"] = "cooldown",
							["Name"] = "1464",
							["ClockGCD"] = true,
							["Enabled"] = true,
							["States"] = {
								[3] = {
									["Alpha"] = 0,
								},
							},
							["RangeCheck"] = true,
							["FakeHidden"] = true,
							["GUID"] = "TMW:icon:1KGCXQEnf023",
							["Conditions"] = {
								{
									["Type"] = "SPELLCD",
									["Operator"] = ">",
									["Name"] = "12294",
								}, -- [1]
								{
									["Type"] = "BUFFDUR",
									["Checked"] = true,
									["Operator"] = "<=",
									["Name"] = "7384",
								}, -- [2]
								["n"] = 2,
							},
						}, -- [10]
						[13] = {
							["Enabled"] = true,
						},
					},
					["Name"] = "武器常用监视",
					["Tree3"] = false,
				}, -- [5]
			},
			["NumGroups"] = 5,
			["Version"] = 81101,
			["Locked"] = true,
		},
		["悠悠龟 - 迦拉克隆"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQChOw8d",
					["Point"] = {
						["y"] = 1034.61536237013,
						["x"] = 1030.76933526508,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["小学生放假了 - 火羽山"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQClJMva",
					["Scale"] = 0.6,
					["Icons"] = {
						{
							["Type"] = "buff",
						}, -- [1]
					},
					["Point"] = {
						["y"] = 296.666604586776,
						["x"] = 366.666559560436,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["Ddtq - 晴日峰 (江苏)"] = {
			["Version"] = 74003,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1MuP9cGYOxIn",
					["Point"] = {
						["y"] = 1034.61547851563,
						["x"] = 1112.82055664063,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
		},
		["Yyga - 奥特兰克"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1MhqNKx7gYMf",
					["Point"] = {
						["y"] = 1034.61547851563,
						["x"] = 1112.82055664063,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["涨姿势 - 火羽山"] = {
			["Version"] = 74003,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1NZi8udKWYTe",
					["Point"] = {
						["y"] = 1034.61547851563,
						["x"] = 1112.82055664063,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
		},
		["悠悠蛋 -  晴日峰(江苏)"] = {
			["Version"] = 71204,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KTLZ9ka3j1D",
					["Point"] = {
						["y"] = -398.230183277695,
						["x"] = 542.666453466982,
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
		},
		["那总一号 - 火羽山"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1MqmFMmaFmd8",
					["Point"] = {
						["y"] = 1034.61547851563,
						["x"] = 1112.82055664063,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["弹弹堂一号 - 神圣之歌"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KabKwdIG9_d",
					["Point"] = {
						["y"] = 425.582911108906,
						["x"] = 463.045350522887,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.606154322624207,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["悠悠龟 - 刀塔"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCpzY8Z",
					["Point"] = {
						["y"] = 341.641372045999,
						["x"] = 562.358790188685,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["临时工四号 - 火羽山"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCtLgar",
					["Point"] = {
						["y"] = 386.666735482017,
						["x"] = 183.076526528493,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["悠悠龟 - 火羽山 3"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQCxhm=j",
					["Icons"] = {
						{
							["ShowTTText"] = true,
							["Type"] = "buff",
							["Name"] = "盾牌屏障",
							["Enabled"] = true,
						}, -- [1]
						{
							["ShowTTText"] = true,
							["Type"] = "buff",
							["Name"] = "盾牌格挡",
							["Enabled"] = true,
						}, -- [2]
					},
					["Point"] = {
						["y"] = -132.550863467043,
						["x"] = 182.448760382089,
					},
					["Scale"] = 1.02083477435085,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["赞达拉使者 - 火羽山"] = {
			["Locked"] = true,
			["NumGroups"] = 2,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQD_K_Xb",
					["Point"] = {
						["y"] = 64.7892795134955,
						["x"] = 33.1780139489122,
					},
					["Icons"] = {
						{
							["GUID"] = "TMW:icon:1Kj_bIq0rXrs",
							["Type"] = "conditionicon",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<=",
									["Level"] = 4.5,
									["Name"] = "鬼影缠身",
									["Unit"] = "target",
								}, -- [1]
								{
									["Type"] = "SOUL_SHARDS",
									["Level"] = 1,
									["Operator"] = ">=",
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 2.5,
									["Name"] = "痛楚",
									["Unit"] = "target",
								}, -- [3]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 2.5,
									["Name"] = "腐蚀术",
									["Unit"] = "target",
								}, -- [4]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 3.5,
									["Name"] = "痛苦无常",
									["Unit"] = "target",
								}, -- [5]
								{
									["Type"] = "HEALTH_ABS",
									["Operator"] = ">",
									["Unit"] = "target",
								}, -- [6]
								["n"] = 6,
							},
							["UnAlpha"] = 0.1,
							["CustomTex"] = "48181",
							["Enabled"] = true,
						}, -- [1]
						{
							["GUID"] = "TMW:icon:1Kj_bIpuprGg",
							["Type"] = "conditionicon",
							["BuffOrDebuff"] = "HARMFUL",
							["UnAlpha"] = 0.1,
							["Alpha"] = 0.9,
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "痛楚",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<=",
									["Level"] = 3.5,
									["Name"] = "痛苦无常",
									["Unit"] = "target",
								}, -- [1]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 2.5,
									["Name"] = "痛楚",
									["Unit"] = "target",
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 2.5,
									["Name"] = "腐蚀术",
									["Unit"] = "target",
								}, -- [3]
								{
									["Operator"] = ">",
									["Level"] = 65000,
									["Type"] = "HEALTH_ABS",
									["Unit"] = "target",
								}, -- [4]
								{
									["Type"] = "MANA_ABS",
									["Level"] = 2400,
									["Operator"] = ">=",
								}, -- [5]
								["n"] = 5,
							},
							["CustomTex"] = "30108",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [2]
						{
							["GUID"] = "TMW:icon:1Kj_bIpnIAns",
							["Type"] = "conditionicon",
							["BuffOrDebuff"] = "HARMFUL",
							["UnAlpha"] = 0.1,
							["Alpha"] = 0.9,
							["Unit"] = "target",
							["OnlyMine"] = true,
							["Name"] = "痛楚",
							["Enabled"] = true,
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<=",
									["Level"] = 2.5,
									["Name"] = "腐蚀术",
									["Unit"] = "target",
								}, -- [1]
								{
									["Operator"] = ">",
									["Level"] = 65000,
									["Type"] = "HEALTH_ABS",
									["Unit"] = "target",
								}, -- [2]
								{
									["Type"] = "MANA_ABS",
									["Level"] = 2000,
									["Operator"] = ">=",
								}, -- [3]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 2.5,
									["Name"] = "痛楚",
									["Unit"] = "target",
								}, -- [4]
								["n"] = 4,
							},
							["CustomTex"] = "172",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
						}, -- [3]
						{
							["GUID"] = "TMW:icon:1Kj_bIq976Z3",
							["Type"] = "conditionicon",
							["Events"] = {
								{
									["Infinite"] = true,
									["Type"] = "Animations",
									["Event"] = "OnShow",
									["Animation"] = "ACTVTNGLOW",
								}, -- [1]
								["n"] = 1,
							},
							["Conditions"] = {
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["PrtsBefore"] = 2,
									["Level"] = 2.5,
									["Name"] = "痛楚",
									["Unit"] = "target",
								}, -- [1]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 2.5,
									["Name"] = "腐蚀术",
									["Unit"] = "target",
								}, -- [2]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 3.5,
									["Name"] = "痛苦无常",
									["Unit"] = "target",
								}, -- [3]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Name"] = "鬼影缠身",
									["Level"] = 4.5,
									["PrtsAfter"] = 1,
									["Unit"] = "target",
								}, -- [4]
								{
									["Operator"] = ">",
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Level"] = 2.5,
									["PrtsBefore"] = 1,
									["AndOr"] = "OR",
									["Name"] = "痛楚",
									["Unit"] = "target",
								}, -- [5]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 2.5,
									["Name"] = "腐蚀术",
									["Unit"] = "target",
								}, -- [6]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 3.5,
									["Name"] = "痛苦无常",
									["Unit"] = "target",
								}, -- [7]
								{
									["PrtsAfter"] = 2,
									["Type"] = "SOUL_SHARDS",
								}, -- [8]
								{
									["PrtsBefore"] = 1,
									["Type"] = "HEALTH_ABS",
									["Operator"] = ">",
									["Unit"] = "target",
								}, -- [9]
								{
									["Level"] = 6500,
									["Type"] = "DEFAULT_ABS",
									["PrtsAfter"] = 1,
									["Operator"] = ">=",
								}, -- [10]
								{
									["Operator"] = ">",
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Level"] = 2.5,
									["PrtsBefore"] = 1,
									["AndOr"] = "OR",
									["Name"] = "痛楚",
									["Unit"] = "target",
								}, -- [11]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 2.5,
									["Name"] = "腐蚀术",
									["Unit"] = "target",
								}, -- [12]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Level"] = 3.5,
									["Name"] = "痛苦无常",
									["Unit"] = "target",
								}, -- [13]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = "<",
									["Level"] = 2,
									["Name"] = "鬼影缠身",
									["Unit"] = "target",
								}, -- [14]
								{
									["Type"] = "DEBUFFDUR",
									["Checked"] = true,
									["Operator"] = ">",
									["Name"] = "鬼影缠身",
									["Unit"] = "target",
								}, -- [15]
								{
									["Type"] = "SOUL_SHARDS",
									["PrtsAfter"] = 1,
									["Operator"] = ">",
								}, -- [16]
								{
									["Type"] = "HEALTH_ABS",
									["Operator"] = "<",
									["AndOr"] = "OR",
									["PrtsBefore"] = 1,
									["Level"] = 65000,
									["PrtsAfter"] = 1,
									["Unit"] = "target",
								}, -- [17]
								["n"] = 17,
							},
							["CustomTex"] = "103103",
							["UnAlpha"] = 0.1,
						}, -- [4]
					},
					["Scale"] = 1.92262971401215,
				}, -- [1]
				{
					["GUID"] = "TMW:group:1L3dtGnaS0iP",
					["Point"] = {
						["y"] = -13.5772414583792,
						["x"] = 66.884575550087,
					},
					["Columns"] = 1,
					["Scale"] = 2.4883861541748,
				}, -- [2]
			},
			["Version"] = 74003,
		},
		["Ggwdtx - 海克泰尔"] = {
			["Version"] = 71204,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KdXYhK8xqvn",
				}, -- [1]
			},
		},
		["弹弹堂 - 遗忘海岸"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KabMRfOmAAr",
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["弹弹堂一号 - 霜之哀伤"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KabOiEuukAG",
					["Point"] = {
						["y"] = 1034.61547851563,
						["x"] = 1112.82055664063,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["弹弹堂一号 - 伊森利恩"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQD1V2vc",
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["那总二号 - 火羽山"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1MqmGhpwYSNg",
					["Point"] = {
						["y"] = 1034.61547851563,
						["x"] = 1112.82055664063,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["悠悠蛋 - 晴日峰 (江苏)"] = {
			["Version"] = 74003,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1MawHJRfrtK7",
				}, -- [1]
			},
		},
		["悠悠龟 - 沃金"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDx_DOE",
					["Point"] = {
						["y"] = 290.704225622716,
						["x"] = 273.521165689186,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.741690746099245,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["悠悠龟 - 埃霍恩"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQD4=J5h",
					["Point"] = {
						["y"] = 1034.61550180847,
						["x"] = 1112.82061487339,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["猴赛雷杀猪刀 - 火羽山"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQD9VOXB",
					["Scale"] = 1.20000231113319,
					["Icons"] = {
						nil, -- [1]
						nil, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "永恒之火",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "复仇之力",
							["ShowTTText"] = true,
						}, -- [4]
					},
					["Point"] = {
						["y"] = -88.3330937401042,
						["x"] = 139.166533104391,
					},
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["亦可赛艇 - 迦罗娜"] = {
			["Version"] = 74003,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1NeIxFA0=en=",
					["Point"] = {
						["y"] = 446.211242675781,
						["x"] = -44.273438904493,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
		},
		["杀猪刀猴赛雷 - 火羽山"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQEDrrYV",
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "复仇之力",
							["ShowTTText"] = true,
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "永恒之火",
						}, -- [2]
					},
					["Point"] = {
						["y"] = -94.4999237401892,
						["x"] = 180.749902202036,
					},
					["Scale"] = 1.3333349080778,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["悠悠龟 - 火羽山"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDGoQpt",
					["Icons"] = {
						{
							["ShowTTText"] = true,
							["Type"] = "buff",
							["Name"] = "盾牌屏障",
							["Enabled"] = true,
						}, -- [1]
						{
							["ShowTTText"] = true,
							["Type"] = "buff",
							["Name"] = "盾牌格挡",
							["Enabled"] = true,
						}, -- [2]
					},
					["Point"] = {
						["y"] = -132.550863467043,
						["x"] = 182.448760382089,
					},
					["Scale"] = 1.02083477435085,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["悠悠龟 -  时光之穴"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KTXs=NKrQ3w",
					["Point"] = {
						["y"] = 586.629749931678,
						["x"] = 936.860254815832,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.80307537317276,
				}, -- [1]
			},
			["Version"] = 71204,
		},
		["悠悠龟 - 天谴之门"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KTcmUu0T1fc",
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["弹弹堂一号 - 迦拉克隆"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KbWjWkttGpP",
					["Point"] = {
						["y"] = 1034.61546388957,
						["x"] = 1112.82057719353,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 72415,
		},
		["最初的悠悠 - 日落沼泽"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDQ=cXk",
					["Scale"] = 1.3375005592212,
					["Point"] = {
						["y"] = -62.8505386462941,
						["x"] = 116.074834865433,
					},
					["Icons"] = {
						nil, -- [1]
						nil, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "圣洁护盾",
						}, -- [3]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "复仇之力",
							["ShowTTText"] = true,
						}, -- [4]
					},
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["弹弹堂一号 - 安东尼达斯"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDWmlkN",
					["Point"] = {
						["y"] = 314.872172628107,
						["x"] = -515.897339870077,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 71204,
		},
		["哥生气了 - 火羽山"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDZ_tDc",
					["Point"] = {
						["y"] = 361.025806203798,
						["x"] = 470.256734199248,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["猪猪二号 - 安东尼达斯"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQE9Yrw_",
					["Point"] = {
						["y"] = 281.349509087431,
						["x"] = 157.815980271741,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["猪猪三号 - 火羽山"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDdM6RC",
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["悠悠龟 - 白银之手"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDga_N2",
					["Point"] = {
						["y"] = 384.307952880859,
						["x"] = -509.949221558986,
						["point"] = "BOTTOMRIGHT",
						["relativePoint"] = "BOTTOMRIGHT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["猴赛雷杀猪刀 - 火羽山 2"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDkxnQw",
					["Icons"] = {
						nil, -- [1]
						nil, -- [2]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "永恒之火",
						}, -- [3]
						{
							["ShowTTText"] = true,
							["Type"] = "buff",
							["Name"] = "复仇之力",
							["Enabled"] = true,
						}, -- [4]
					},
					["Point"] = {
						["y"] = -88.3330937401042,
						["x"] = 139.166533104391,
					},
					["Scale"] = 1.20000231113319,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["猛牛悠悠乳 - 火羽山"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDrXg35",
					["Point"] = {
						["y"] = -80.8535564220005,
						["x"] = 179.005061276421,
					},
					["Icons"] = {
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "复仇之力",
							["ShowTTText"] = true,
						}, -- [1]
						{
							["Enabled"] = true,
							["Type"] = "buff",
							["Name"] = "永恒之火",
							["ShowTTText"] = true,
						}, -- [2]
					},
					["Scale"] = 1.36666802868772,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["悠悠兔 -  辛达苟萨"] = {
			["Version"] = 71204,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KTcp0AedTfn",
					["Point"] = {
						["y"] = 860.953115281648,
						["x"] = 926.031320454557,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.721025586128235,
				}, -- [1]
			},
		},
		["猪猪一号 - 安东尼达斯"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQDMUCkn",
					["Point"] = {
						["y"] = 445.641371666974,
						["x"] = -16.9229761547769,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.6,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["悠悠龟 - 火羽山 2"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQE3oX4Y",
					["Icons"] = {
						{
							["ShowTTText"] = true,
							["Type"] = "buff",
							["Name"] = "盾牌屏障",
							["Enabled"] = true,
						}, -- [1]
						{
							["ShowTTText"] = true,
							["Type"] = "buff",
							["Name"] = "盾牌格挡",
							["Enabled"] = true,
						}, -- [2]
					},
					["Point"] = {
						["y"] = -132.550863467043,
						["x"] = 182.448760382089,
					},
					["Scale"] = 1.02083477435085,
				}, -- [1]
			},
			["Version"] = 71101,
		},
		["Ggwdtx - 洛肯"] = {
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Kcu_QLNaVW_",
					["Point"] = {
						["y"] = 345.925275440531,
						["x"] = 564.273663006825,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["悠悠龟 - 冬拥湖"] = {
			["Locked"] = true,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KGCXQEJfQsP",
					["Point"] = {
						["y"] = 228.682798439417,
						["x"] = -195.808541695976,
						["point"] = "BOTTOM",
						["relativePoint"] = "BOTTOM",
					},
					["Scale"] = 0.695833173715569,
				}, -- [1]
			},
			["Version"] = 74003,
		},
		["Ggwdtx - 回音山"] = {
			["Version"] = 72415,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KxlqZLNJwv1",
				}, -- [1]
			},
		},
		["悠悠兔 - 暗影裂口"] = {
			["Version"] = 71204,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1KV4lrZMYC31",
					["Point"] = {
						["y"] = 1034.61546388957,
						["x"] = 1112.82057719353,
						["point"] = "TOPLEFT",
						["relativePoint"] = "BOTTOMLEFT",
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
		},
		["Ggwdtx - 暗影裂口"] = {
			["Version"] = 72415,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1Kxlp2068Ler",
				}, -- [1]
			},
		},
		["Ddtq - 凤凰之神"] = {
			["Version"] = 74003,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1MuLNcMj_T2Y",
					["Point"] = {
						["y"] = -103.384552001953,
						["x"] = -117.169342041016,
					},
				}, -- [1]
			},
		},
		["悠悠乳 - 金色平原"] = {
			["Locked"] = true,
			["Version"] = 74003,
			["Groups"] = {
				{
					["GUID"] = "TMW:group:1NFTPM2EdeMD",
					["Point"] = {
						["y"] = -309.159348587544,
						["x"] = 97.0374741814445,
					},
					["Scale"] = 0.600000023841858,
				}, -- [1]
			},
		},
	},
}

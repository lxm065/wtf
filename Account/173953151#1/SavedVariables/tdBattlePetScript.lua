
TD_DB_BATTLEPETSCRIPT_GLOBAL = {
	["global"] = {
		["scripts"] = {
			["Base"] = {
				["456;1662:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 43",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(燃烬狼崽).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1921:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 61",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(自由的浮龙宝宝).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1687:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 63",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(离群的小鲨鱼).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;650:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 46",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(吓人芜菁).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1471:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 90",
					["code"] = "change(next) [ self.dead ]\nif [self(唱歌的向日葵).active ]\nchange(next) [weather(晴天)]\nability(太阳光)\nendif\nif [ self(钢铁星弹).active ]\n    ability(自爆)\nendif\n\n\n\nchange(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(鲜果猎手).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["1387;85;1538:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 29",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["1266:1508;1509;1510"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 72",
					["code"] = "quit",
				},
				["456;190:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 76",
					["code"] = "quit",
				},
				["291;1387;1387:1191"] = {
					["author"] = "最初的悠悠-日落沼泽",
					["name"] = "新建脚本 66",
					["code"] = "change(next) [ self.dead ]\nif [self(唱歌的向日葵).active ]\nchange(next) [weather(晴天)]\nability(太阳光)\nendif\nif [ self(钢铁星弹).active ]\n    ability(自爆)\nendif",
				},
				["557;456;675:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 64",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(暴风城老鼠).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;254:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 80",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(蓝色发条战士).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["1387;1537:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 14",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["1387;1885:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 5",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;458:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 78",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(洛丹伦迷途者).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["293:1508;1509;1510"] = {
					["author"] = "云飞-迦罗娜",
					["name"] = "新建脚本 32",
					["code"] = "quit",
				},
				["1387;1387;1537:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 15",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;255:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 49",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(星界灵龙).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1387;1634:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 8",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["1387;1387;1538:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 28",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;277:1400;1401;1402"] = {
					["author"] = "云飞-迦罗娜",
					["name"] = "新建脚本 36",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(发条侏儒).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1238;1532;1532:1191"] = {
					["author"] = "最初的悠悠-日落沼泽",
					["name"] = "新建脚本 65",
					["code"] = "change(next) [ self.dead ]\nif [self(幼年瓦格里).active ]\nability(鬼影缠身)\nendif\nif [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				["291;1387;1387:1187"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 70",
					["code"] = "change(next) [ self.dead ]\nif [self(唱歌的向日葵).active ]\nchange(next) [weather(晴天)]\nability(太阳光)\nendif\nif [ self(钢铁星弹).active ]\n    ability(自爆)\nendif",
				},
				["557;456;1153:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 37",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(死爪龙人护卫).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1928:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 57",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(火蝠幼崽).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;117:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 87",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(雪孩子).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["1387;85;1634:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 12",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["1387;456:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 23",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["291;1387;1387:1188"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 67",
					["code"] = "change(next) [ self.dead ]\nif [self(唱歌的向日葵).active ]\nchange(next) [weather(晴天)]\nability(太阳光)\nendif\nif [ self(钢铁星弹).active ]\n    ability(自爆)\nendif",
				},
				["1387;1387;456:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 22",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;514:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 77",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(剥石者幼崽).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["557;456;1213:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 59",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(赞达拉啮趾者).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;72:1400;1401;1402"] = {
					["author"] = "云飞-迦罗娜",
					["name"] = "新建脚本 34",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [ self(虚空精灵龙).active ]\n    ability(月火术) [ self.round = 1 ]\n    ability(奥术冲击) [ self.round = 2 ]\n    ability(奥术冲击) [ self.round = 3 ]\n    ability(奥术冲击) [ self.round = 4 ]\n    ability(奥术冲击) [ self.round = 5 ]\n    ability(生命交换) [ self.round = 6 ]\n    ability(月火术) [ self.round = 7 ]\nendif\nability(幽魂之咬)\nchange(#3)\nif [ self(雪兔).active ]\nchange(#2)\nability(染疫之爪)\nability(幽魂之咬)\nendif",
				},
				["557;456;1569:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 53",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(熔炉之魂).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1387;1387;1211:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 3",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;1662:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 44",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(燃烬狼崽).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1532;1537;1538:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 27",
					["code"] = "change(next) [ self.dead ]\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nability(自爆)",
				},
				["557;456;1237:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 39",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(加兹洛奇).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1332:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 60",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(黏稠的小煞魔).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1178:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 82",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(夺日者微型哨兵).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["557;456;1331:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 54",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(亚煞极余孽).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1276:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 84",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(月月).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["310;293:1508;1509;1510"] = {
					["author"] = "云飞-迦罗娜",
					["name"] = "新建脚本 33",
					["code"] = "quit",
				},
				["85;1537:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 17",
					["code"] = "if [ self(步行炸弹).active ]\n    ability(毒烟) [ self.round = 1 ]\n    ability(猛击) [ self.round = 2 ]\n    ability(猛击) [ self.round = 3 ]\n    ability(猛击) [ self.round = 4 ]\n    ability(自爆) [ self.round = 5 ]\nendif",
				},
				["557;456;320:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 38",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(小泰蕾苟萨).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1567:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 62",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(哨兵之友).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1532;1537;627:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 20",
					["code"] = "change(next) [ self.dead ]\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nability(自爆)",
				},
				["557;456;378:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 85",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(兔子).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["489;310;293:1508;1509;1510"] = {
					["author"] = "云飞-迦罗娜",
					["name"] = "新建脚本 31",
					["code"] = "change(next) [ self.dead ]\nif [ self(奥妮克希亚的雏龙).active ]\n    ability(扫尾) [ weather(灼燃大地) ]\n    ability(灼燃大地)\nendif\nif [ self(巫毒雕像).active ]\n    ability(狂野魔法) [ self.round = 1 ]\n    ability(烈焰吐息) [ self.round = 2 ]\n    ability(烈焰吐息) [ self.round = 3 ]\n    ability(狂野魔法) [ self.round = 4 ]\n    ability(烈焰吐息) [ self.round = 5 ]\n    ability(烈焰吐息) [ self.round = 6 ]\nendif",
				},
				["557;456;309:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 55",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(翼手龙宝宝).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1532;1537;1211:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 19",
					["code"] = "change(next) [ self.dead ]\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nability(自爆)",
				},
				["557;456;175:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 51",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(凤凰宝宝).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1238;1532;1532:1187"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 73",
					["code"] = "change(next) [ self.dead ]\nif [self(幼年瓦格里).active ]\nability(鬼影缠身)\nendif\nif [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				["1238;1532;1532:1195"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 69",
					["code"] = "change(next) [ self.dead ]\nif [self(幼年瓦格里).active ]\nability(鬼影缠身)\nendif\nif [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				["557;456;437:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 79",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(小黑山羊).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["557;456;1238:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 50",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(幼年瓦格里).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1632:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 40",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(微型炎刃防御者).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1387;1387;1634:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 9",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;1802:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 52",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(腐臭小水花).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;1212:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 58",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(赞达拉裂足者).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["456;374:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 89",
					["code"] = "quit",
				},
				["85;1634:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 13",
					["code"] = "if [ self(步行炸弹).active ]\n    ability(毒烟) [ self.round = 1 ]\n    ability(猛击) [ self.round = 2 ]\n    ability(猛击) [ self.round = 3 ]\n    ability(猛击) [ self.round = 4 ]\n    ability(自爆) [ self.round = 5 ]\nendif",
				},
				["557;456;1931:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 47",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(宫廷书记).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1532;1537;456:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 21",
					["code"] = "change(next) [ self.dead ]\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nability(自爆)",
				},
				["85;1211:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 4",
					["code"] = "if [ self(步行炸弹).active ]\n    ability(毒烟) [ self.round = 1 ]\n    ability(猛击) [ self.round = 2 ]\n    ability(猛击) [ self.round = 3 ]\n    ability(猛击) [ self.round = 4 ]\n    ability(自爆) [ self.round = 5 ]\nendif",
				},
				["557;456;1890:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 41",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(矮脚幼犬).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;441:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 83",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(高山野兔).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["557;456;190:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 75",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(魅影精灵).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["85;1387;1885:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 7",
					["code"] = "if [ self(步行炸弹).active ]\n    ability(毒烟) [ self.round = 1 ]\n    ability(猛击) [ self.round = 2 ]\n    ability(猛击) [ self.round = 3 ]\n    ability(猛击) [ self.round = 4 ]\n    ability(自爆) [ self.round = 5 ]\nendif",
				},
				["1387;85;1885:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 11",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;1147:1400;1401;1402"] = {
					["author"] = "云飞-迦罗娜",
					["name"] = "新建脚本 35",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [ self(虚空精灵龙).active ]\n    ability(月火术) [ self.round = 1 ]\n    ability(奥术冲击) [ self.round = 2 ]\n    ability(奥术冲击) [ self.round = 3 ]\n    ability(奥术冲击) [ self.round = 4 ]\n    ability(奥术冲击) [ self.round = 5 ]\n    ability(生命交换) [ self.round = 6 ]\n    ability(月火术) [ self.round = 7 ]\nendif\nability(幽魂之咬)\nchange(#3)\nif [ self(烈焰先驱者).active ]\nchange(#2)\nability(染疫之爪)\nability(幽魂之咬)\nendif",
				},
				["1387;1387;627:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 1",
					["code"] = "if [self(钢铁星弹).active]\nability(旋紧发条)\nability(毒烟)\nability(旋紧发条)\nability(自爆)\nendif",
				},
				["1387;1211:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 2",
					["code"] = "if [self(钢铁星弹).active]\nability(旋紧发条) [self.round = 1]\nability(毒烟) [self.round = 2]\nability(旋紧发条) [self.round = 3]\nability(自爆) [self.round = 4]\nendif",
				},
				["85;456:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 25",
					["code"] = "if [ self(步行炸弹).active ]\n    ability(毒烟) [ self.round = 1 ]\n    ability(猛击) [ self.round = 2 ]\n    ability(猛击) [ self.round = 3 ]\n    ability(猛击) [ self.round = 4 ]\n    ability(自爆) [ self.round = 5 ]\nendif",
				},
				["557;456;325:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 45",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(艳羽卡利鸟).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["85;1538:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 30",
					["code"] = "if [ self(步行炸弹).active ]\n    ability(毒烟) [ self.round = 1 ]\n    ability(猛击) [ self.round = 2 ]\n    ability(猛击) [ self.round = 3 ]\n    ability(猛击) [ self.round = 4 ]\n    ability(自爆) [ self.round = 5 ]\nendif",
				},
				["1387;85;1537:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 16",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["1387;1538:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 26",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;467:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 56",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(蜣螂).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["85;1885:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 6",
					["code"] = "if [ self(步行炸弹).active ]\n    ability(毒烟) [ self.round = 1 ]\n    ability(猛击) [ self.round = 2 ]\n    ability(猛击) [ self.round = 3 ]\n    ability(猛击) [ self.round = 4 ]\n    ability(自爆) [ self.round = 5 ]\nendif",
				},
				["1238;1532;1532:1189"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 68",
					["code"] = "change(next) [ self.dead ]\nif [self(幼年瓦格里).active ]\nability(鬼影缠身)\nendif\nif [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				["1532;1537;1537:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 18",
					["code"] = "change(next) [ self.dead ]\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nif [ self(伊奇).active ]\nability(黑爪) [ self.round = 1 ]\nability(黑爪) [ self.round = 2]\nability(群殴) [ self.round = 3 ]\nendif\nability(自爆)",
				},
				["489;310;1266:1508;1509;1510"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 71",
					["code"] = "change(next) [ self.dead ]\nif [ self(奥妮克希亚的雏龙).active ]\n    ability(扫尾) [ weather(灼燃大地) ]\n    ability(灼燃大地)\nendif\nif [ enemy(哈诺斯).active & self(巫毒雕像).active]\n    ability(烈焰吐息) [ enemy.aura(狂野魔法).exists ]\n    ability(狂野魔法)\nendif\n\nif [ enemy(法托斯).active & self(巫毒雕像).active]\n    ability(烈焰吐息) [ enemy.aura(狂野魔法).exists ]\n    ability(狂野魔法)\nendif\n\nif [ self(雪福，雪怒的幼崽).active ]\nquit\nendif",
				},
				["291;85;844:1192"] = {
					["author"] = "最初的悠悠-日落沼泽",
					["name"] = "新建脚本 74",
					["code"] = "change(next) [ self.dead ]\nif [self(唱歌的向日葵).active ]\nchange(next) [weather(晴天)]\nability(太阳光)\nendif\n\n    ability(自爆)",
				},
				["1387;85;456:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 24",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;1511:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 42",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(爱情鸟雏鸟).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["1387;1387;1885:1866"] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "新建脚本 10",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				["557;456;383:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 81",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(锦绣阔步者).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["557;456;339:1400;1401;1402"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 48",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(暗月飞艇).active ]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\n\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nendif",
				},
				["557;456;266:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 86",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(化石幼兽).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["557;456;374:1400;1401;1402"] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "新建脚本 88",
					["code"] = "change(next) [ self.dead ]\nchange(next) [self.aura(昏迷).exists]\nif [enemy(迪波斯).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\nif [enemy(泰莉).active]\n    ability(生命交换) \n    ability(月火术)\n    ability(奥术冲击)\nendif\n\nif [enemy(泰莉).active & self(凋零雄鹰).active]\nability(幽魂之咬) [ self.round = 1 ]\nability(染疫之爪) [ self.round = 2 ]\nendif\n\nif [self(黑羔羊).active]\nchange(凋零雄鹰)\nability(染疫之爪)\nability(幽魂之咬)\nendif\nif [enemy(帕兹尔).active & self(凋零雄鹰).active]\nability(染疫之爪) [ self.round = 1 ]\nability(幽魂之咬) [ self.round = 2 ]\nability(染疫之爪) [ self.round = 3 ]\nendif",
				},
				["1387;1387;1387:1479;1482"] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "新建脚本 91",
					["code"] = "change(#2) [enemy(鲁库斯).active]\nuse(旋紧发条) [self.aura(增压).exists]\nuse(增压) [self.aura(旋紧发条).exists]\nuse(旋紧发条)",
				},
			},
			["Rematch"] = {
				[72285] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "二：赤芝，赤精的雏鸟",
					["code"] = "change(next) [ self.dead ]\nif [self(幼年瓦格里).active ]\nability(鬼影缠身)\nendif\nif [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				[85519] = {
					["author"] = "小学生放假了-火羽山",
					["name"] = "克里斯托弗·冯·费瑟尔",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(希德).active ]\n  ability(原始嗥叫)\n  ability(狩猎小队) [ enemy.aura(黑爪).exists ]\n  ability(黑爪)\nendif\n\nif [ enemy(尖头先生).active ]\n  ability(原始嗥叫)\n  ability(黑爪)\n  ability(雷区)\n  ability(猛击)\nendif\n\nif [ enemy(奥图).active ]\n  ability(自爆) [ enemy.hpp<34 ]\n  ability(猛击)\nendif",
				},
				[68462] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "6熊猫人流水之灵",
					["code"] = "change(next) [ self.dead ]\nif [ self(熊猫人水灵).active ]\nstandby [enemy.hp<539 ]\nability(空袭)\nendif\nif [ self(恐爪鸟幼崽).active ]\n    ability(空袭) [ self.round = 1 ]\n    ability(空袭) [ self.round = 2 ]\n    ability(躲闪) [ self.round = 3 ]\n    ability(空袭) [ self.round = 4 ]\n\n    ability(空袭) [ self.round = 6 ]\n    ability(空袭) [ self.round = 7 ]    \nability(空袭)\nendif\nability(自爆) [ self(赤红孢子).active & enemy.hpp<44 ]",
				},
				[85626] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "7虫，掠食者，飞萤",
					["code"] = "change(next) [self.dead]\nif [self(步行炸弹).active]\nuse(雷区)\nuse(自爆)\nendif\nif [self(节点雏龙).active]\nuse(扫尾) [self.round = 1]\nuse(奥术风暴) [self.round =2]\nuse(扫尾) [round = 8]\nendif\nuse(法力澎湃)",
				},
				[66730] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "3圣地的俞娜",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(塑风者).active ]\n    ability(翡翠之咬) [ self.aura(翡翠灵气).exists ]\n    ability(翡翠灵气)\nendif\nif [ enemy(方戈).active ]\nability(原始之击) [self.aura(减速).exists]\nability(翡翠之咬)\nendif\nif [ enemy(铁壁龟).active & self(翡翠始祖龙宝宝).active ]\nstandby\nendif\n\nif [ enemy(方戈).active & self(伊奇).active ]\nability(飞羽)\nendif\n\nchange(#3) [ !self(#3).played ]\n\nif [ enemy(铁壁龟).active ]\nchange(#2)\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				[66734] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "5农夫倪石",
					["code"] = "change(next) [ self.dead ]\nif [self(锦绣阔步者).active]\n\nability(抽水) [ self.round = 1 ]\nability(净化之雨) [ self.round = 2 ]\nability(抽水) [ self.round = 3 ]\nability(抽水) [ self.round = 4 ]\nability(水流喷射) [ self.round = 5 ]\n\nability(抽水) [ self.round = 7 ]\nability(净化之雨) [ self.round = 8 ]\nability(抽水) [ self.round = 9 ]\nability(水流喷射) [ self.round = 10 ]\n\nability(抽水) [ self.round = 12 ]\nendif\n\nchange(#3) [ !self(#3).played ]\nif [ enemy(魔丝勒斯的子嗣).active]\nchange(暗月飞艇) \nability(飞弹) [ self.round = 1 ]\nability(自爆) [ self.round = 2 ]\nendif",
				},
				[66738] = {
					["author"] = "最初的悠悠-日落沼泽",
					["name"] = "9勇敢的尹勇",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(皮拳).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(增压) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(强力球) [ self.round = 4 ]\nendif\nif [ enemy(兔兔).active ]\n    use(旋紧发条) [ self.aura(增压).exists ]\n    use(增压) [ self.aura(旋紧发条).exists ]\n    use(旋紧发条)\nendif\nuse(旋紧发条) [ enemy(咩咩).active ]\nability(自爆) [ enemy.hpp<44 ]",
				},
				[72290] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "叁：皂皂，砮皂的幼犊",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(皂皂，砮皂的幼犊).active]\n    ability(狩猎小队) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif\nability(自我复制)",
				},
				[79858] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "萨拉",
					["code"] = "if [self(伊奇).active]\nability(群殴) [enemy.aura(黑爪).exists]\nability(黑爪)\nendif\nif [self(赞达拉袭胫者).active]\nability(狩猎小队)\nability(血牙)\nendif\nchange(next)\nif [self(克洛玛尼斯).active]\nability(嚎叫)\nability(能量涌动)\nendif",
				},
				[68463] = {
					["author"] = "最初的悠悠-日落沼泽",
					["name"] = "~10熊猫人烈焰之灵",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(赤红幼龙).active ]\nability(甲壳护盾) [ self.round = 1 ]\nability(湍流旋涡) [ self.round = 2 ]\nability(猛咬) [ self.round = 3 ]\nability(猛咬) [ self.round = 4 ]\nability(猛咬) [ self.round = 5 ]\nability(猛咬) [ self.round = 6 ]\nendif\n\nif [ enemy(熊猫人火灵).active ]\nability(湍流旋涡)\nability(猛咬)\nability(猛咬)\nendif\n\nif [ enemy(熊猫人火灵).active & self(克洛玛尼斯).active ]\nability(撕咬)\nendif\n\nchange(#3) [ !self(#3).played ]\n\nif [ enemy(荧荧).active]\nchange(克洛玛尼斯) \nability(嚎叫)\nability(能量涌动)\nendif",
				},
				[71932] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "～6贤者马里",
					["code"] = "if [enemy(神仙鱼).active]\n    ability(黑爪) [ self.round = 1 ]\n    ability(狩猎小队) [ self.round = 2 ]\n    ability(血牙) [ self.round = 4 ]\nendif\nchange(#2)\nif [ self(机械熊猫人幼龙).active & enemy(思络).active]\n    ability(自爆) [ enemy.hp<190 ]\n    ability(诱饵)\n    ability(吐息)\nendif\nif [ self(机械熊猫人幼龙).active & enemy(小溪).active]\n    ability(诱饵)\n    ability(吐息)\nendif\nchange(#1)\nif [ self(赞达拉袭胫者).active ]\n    ability(狩猎小队) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				[85627] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "挑战木桩",
					["code"] = "change(next) [self.dead]\nif [self(迷你斩灵者).active]\nability(#1)\nendif\nability(#2)\nability(#3)\nability(#1)",
				},
				[68558] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "7血刺",
					["code"] = "change(next) [ self.dead ]\nif [ self(唱歌的向日葵).active ]\n    change(next) [ weather(晴天) ]\n    ability(太阳光)\nendif\nability(致盲粉) [ enemy.aura(筑堤).exists ]\nstandby [ enemy.aura(筑堤).exists ]\nability(自爆)\nability(日光术)",
				},
				[68566] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "6飞掠者溪雅",
					["code"] = "change(next) [ self.dead ]\nif [ self(唱歌的向日葵).active ]\n    change(next) [ weather(晴天) ]\n    ability(太阳光)\nendif\nability(致盲粉) [ enemy.aura(筑堤).exists ]\nstandby [ enemy.aura(筑堤).exists ]\nability(自爆)\nability(日光术)",
				},
				[72291] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "四：玉兰，玉珑的子嗣",
					["code"] = "change(next) [ self.dead ]\nif [ self(唱歌的向日葵).active ]\n    change(next) [ weather(晴天) ]\n    ability(太阳光)\nendif\nability(自爆)\nability(日光术) [ self.aura(光合作用).exists ]\nability(光合作用)",
				},
				[85659] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "4大嘴鸟",
					["code"] = "change(next) [ self.dead ]\nif [enemy(大嘴鸟).active]\nability(奥术风暴)\nability(法力澎湃)\nability(扫尾)\nendif\nability(自爆)",
				},
				[68464] = {
					["author"] = "悠悠骑-末日祷告祭坛",
					["name"] = "2熊猫人微风之灵",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(灰翅蛾).active ]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [ enemy(哨尾).active ]\n    ability(生命交换)\n    ability(奥术冲击)\n    ability(奥术冲击)\nability(奥术冲击)\nendif\n\nif [ enemy(熊猫人风灵).active & self(节点雏龙).active]\n\nability(奥术风暴) [ self.round = 1 ]\nability(法力澎湃) [ self.round = 2 ]\nendif\n\nif [ enemy(熊猫人风灵).active ]\nchange(#3)\nchange(节点雏龙)\nendif",
				},
				[71933] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "～4布林顿4000",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(阿怒).active ]\nability(汹涌) [ self.round = 1 ]\nability(湍流旋涡) [ self.round = 2 ]\nability(汹涌) [ self.round = 3 ]\nability(汹涌) \nendif\n\n\nif [ enemy(存钱罐).active ]\nability(汹涌) \n        ability(黑爪) [ self.round = 1 ]\n    ability(狩猎小队) [ self.round = 2 ]   \nability(原始嗥叫)\nendif\nability(原始嗥叫)\nability(黑爪)\n\nif [ enemy(小布).active ]\n    ability(燃烧) [ enemy.aura(献祭).exists ]\n    ability(献祭)\nendif",
				},
				[87124] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "影月谷：阿什雷",
					["code"] = "if [ self(步行炸弹).active ]\n  ability(猛击) [ enemy.aura(雷区).exists ]\n  ability(雷区)\nendif",
				},
				[68561] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "4幸运的小艺",
					["code"] = "change(next) [ self.dead ]\nif [self(幼年瓦格里).active ]\nability(鬼影缠身)\nendif\nif [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				[105386] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "5风暴峡湾：瑞迪尔",
					["code"] = "if [ self(钢铁星弹).active ]\n    ability(旋紧发条) [ self.round = 1 ]\n    ability(毒烟) [ self.round = 2 ]\n    ability(旋紧发条) [ self.round = 3 ]\n    ability(自爆) [ self.round = 4 ]\nendif",
				},
				[85624] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "5王后与大王",
					["code"] = "if [self(伊奇).active]\nability(群殴) [enemy.aura(黑爪).exists]\nability(黑爪)\nendif\nif [self(赞达拉袭胫者).active]\nability(狩猎小队)\nability(血牙)\nendif\nchange(next)\nif [self(克洛玛尼斯).active]\nability(嚎叫)\nability(能量涌动)\nendif",
				},
				[68555] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "3贪吃的卡瓦",
					["code"] = "change(next) [ self.dead ]  \n  ability(狩猎小队) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nability(自爆)",
				},
				[68559] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "8诺诺",
					["code"] = "change(next) [ self.dead ]\nif [ self(唱歌的向日葵).active ]\n    change(next) [ weather(晴天) ]\n    ability(太阳光)\nendif\nability(致盲粉) [ enemy.aura(筑堤).exists ]\nstandby [ enemy.aura(筑堤).exists ]\nstandby [ enemy.aura(潜水).exists ]\nability(自爆)\nability(日光术)",
				},
				[68563] = {
					["author"] = "最初的悠悠-日落沼泽",
					["name"] = "~10咖菲",
					["code"] = "change(next) [ self.dead ]\n    standby [ self.aura(昏迷).exists ]\nif [ self(唱歌的向日葵).active ]\n    change(next) [ weather(晴天) ]\n    ability(太阳光)\nendif\nability(自爆)\nability(日光术) [ self.aura(光合作用).exists ]\nability(光合作用)",
				},
				[67370] = {
					["author"] = "小学生放假了-火羽山",
					["name"] = "杰里米·费舍尔",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(审判).active ]\n  ability(雷霆之箭)\n  ability(吐息)\nendif\n\nif [ enemy(叮当坦克).active ]\n  ability(雷霆之箭)\n  ability(吐息)\nendif",
				},
				[66733] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "4莫鲁克",
					["code"] = "if [ enemy(雕木者).active ]\n    ability(蠕行真菌) [ self.round = 1 ]\n    ability(奔踏) [ self.round = 2 ]\n    ability(奔踏) [ self.round = 3 ]\n    ability(奔踏) [ self.round = 4 ]\n    ability(吞噬) [ self.round = 5 ]\n    ability(奔踏) [ self.round = 6 ]\nendif\nability(奔踏) [ enemy(光之行者).active & self(被感染的松鼠).active ]\nchange(#3) [ !self(#3).played ]\nif [ enemy(光之行者).active ]\n    change(虚空精灵龙)\n    ability(奥术冲击)\nendif\nif [ enemy(针背龟).active ]\n    standby [ self.aura(昏迷).exists ]\n    ability(月火术)\n    ability(生命交换)\n    ability(奥术冲击) [ weather(月光) ]\nendif",
				},
				[66918] = {
					["author"] = "最初的悠悠-日落沼泽",
					["name"] = "~11探索者祖什",
					["code"] = "if [ enemy(金刚钻).active ]\nability(湍流旋涡)\nability(猛咬)\nendif\n\nif [ enemy(莫乐斯).active ]\nability(治疗波)\nability(湍流旋涡) [ enemy.aura(潜水).exists ]\nability(猛咬)\nendif\nchange(#3) [ !self(#3).played ]\nif [ enemy(莫乐斯).active ]\nchange(#2)\nability(诱饵)\nability(空袭)\nendif\n\nif [ enemy(掠影者).active ]\nability(空袭)\nendif",
				},
				[66739] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "7废土行者苏游",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(碎石蟹).active]\nability(月火术) [ self.round = 1 ]\nability(奥术冲击) [ self.round = 2 ]\nability(隐没) [ self.round = 3 ]\nability(奥术冲击) [ self.round = 4 ]\nability(奥术冲击) [ self.round = 5 ]\nability(奥术冲击) [ self.round = 6 ]\nability(奥术冲击) [ self.round = 7 ]\nendif\n\nif [ enemy(磨杵).active]\nability(隐没)\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nendif\n\nif [ enemy(损毁者).active]\n    ability(奥术冲击) [weather(月光)]\n    ability(月火术)\nability(自爆) [ enemy.hpp<44 ]\nendif",
				},
				[66741] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "8天选者亚济",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(唧唧).active]\nability(旋紧发条) [ self.round = 1 ]\nability(强力球) [ self.round = 2 ]\nability(增压) [ self.round = 3 ]\nability(旋紧发条) [ self.round = 4 ]\nendif\n\nif [ enemy(鞭风者).active]\nability(旋紧发条)\nendif\n\nif [ enemy(晶须猫).active]\nability(自爆) [ enemy.hpp<44 ]\n\nability(旋紧发条)\nendif",
				},
				[71926] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "3游学者周卓",
					["code"] = "change(next) [ self.dead ]\nif [ enemy(智慧).active ]\nchange(next)\nability(奥术冲击) [ weather(月光) ]\n  ability(月火术)\nendif\nif [ enemy(耐心).active ]\n ability(生命交换)\n ability(奥术冲击)\n ability(脚踢)\n ability(迅猛突袭)\nendif",
				},
				[71930] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "～1匿踪大师琪麟",
					["code"] = "change(next) [ self.dead ]\nif [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif\n\nability(自爆) [ self(步行炸弹).active & enemy(夏天).active]\n\nif [ self(步行炸弹).active ]\n    ability(雷区)\n    ability(猛击)\nendif\n\nif [ self(暗月坦克).active ]\n    ability(震慑)\n    ability(离子炮)\nendif",
				},
				[71934] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "2艾恩·戈德布鲁姆博士",
					["code"] = "change(#1) [ self.dead ]\n\nif [ enemy(三角小龙).active &  self(节点雏龙).active]\nability(扫尾)\nendif\nif [ enemy(尖啸龙).active &  self(节点雏龙).active]\nability(法力澎湃) [ weather(奥术之风) ]\nability(奥术风暴)\nendif\nif [ enemy(尖啸龙).active ]\nability(诱饵)\nchange(节点雏龙)\nendif\n\n\nif [ enemy(三角小龙).active &  self(暗月飞艇).active]\nability(飞弹)\nendif",
				},
				[68565] = {
					["author"] = "悠悠骑-末日祷告祭坛",
					["name"] = "2尼顿",
					["code"] = "change(next) [ self.dead ]\nif [self(唱歌的向日葵).active ]\nchange(next) [weather(晴天)]\nability(太阳光)\nendif\nif [ self(赤红孢子).active ]\n    ability(自爆)\nendif",
				},
				[68465] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "1熊猫人雷霆之灵",
					["code"] = "change(next) [ self.dead ]\nif [self(高山野兔).active]\n    ability(乱舞) [ self.round = 1 ]\n    ability(躲闪) [ self.round = 2 ]\n    ability(奔踏) [ self.round = 3 ]\n    ability(奔踏) [ self.round = 4 ]\n    ability(奔踏) [ self.round = 5 ]\n    ability(乱舞) [ self.round = 6 ]\n    ability(乱舞) [ self.round = 7 ]\n    \n    ability(躲闪) [ self.round = 9 ]\n    ability(奔踏) [ self.round = 10 ]\n    ability(奔踏) [ self.round = 11 ]\n    ability(乱舞) [ self.round = 13 ]\nendif\nif [enemy(泥团).active & self(暗月飞艇).active]\n    ability(飞弹)\nendif \n    \nif [enemy(钻地鼠达纳克).active & self(暗月飞艇).active] \nability(自爆) [ enemy.hpp<44 ]\nability(诱饵) [enemy.aura(石肤术).exists]\n    ability(飞弹)\n   \nendif",
				},
				[72009] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "一：雪福，雪怒的幼崽",
					["code"] = "change(next) [ self.dead ]\nif [ self(赞达拉袭胫者).active ]\n    ability(狩猎小队) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif\n\nif [ self(小布).active ]\n    ability(金币雨) [ self.round = 1 ]\n    ability(自我复制) [ self.round = 2 ]\nendif",
				},
				[105387] = {
					["author"] = "悠悠龟-火羽山",
					["name"] = "5风暴峡湾：安杜斯",
					["code"] = "if [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				[85625] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "6(两个戈隆小巨人)",
					["code"] = "standby [self.aura(昏迷).exists]\nif [enemy(考姆利).active]\nuse(血牙) [enemy.hpp<44]\nuse(狩猎小队) [enemy.aura(黑爪).exists]\nuse(黑爪)\nendif\nif [enemy(高姆利).active]\nchange(#1) [self.dead]\nchange(#2) [enemy.aura(黑爪).exists]\nuse(血牙) [enemy.hpp<36]\nuse(狩猎小队) [enemy.aura(黑爪).exists]\nuse(黑爪)\nendif",
				},
				[85629] = {
					["author"] = "最后的悠悠-迦罗娜",
					["name"] = "~10冰与火之歌",
					["code"] = "if [ enemy.aura(嚎叫).exists ]\nchange(明镜水黾)\nability(抽水)\nendif\nquit [self(克洛玛尼斯).dead]\nchange(克洛玛尼斯) [self.aura(抽水).exists]\nability(嚎叫)\nif [self(明镜水黾).active]\nability(抽水)\nendif",
				},
				[68560] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "5灰蹄",
					["code"] = "change(next) [ self.dead ]\nif [ self(唱歌的向日葵).active ]\n    change(next) [ weather(晴天) ]\n    ability(太阳光)\nendif\nability(自爆)\nability(日光术)",
				},
				[68564] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "1多斯里加",
					["code"] = "change(next) [ self.dead ]\nif [self(幼年瓦格里).active ]\nability(鬼影缠身)\nendif\nif [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
				[71929] = {
					["author"] = "兮兮妹-末日祷告祭坛",
					["name"] = "1“腌菜”苏利·麦克莱利",
					["code"] = "if [ enemy(袜子).active ]\nuse(旋紧发条) [self.aura(增压).exists]\nuse(增压) [self.aura(旋紧发条).exists]\nuse(旋紧发条)\nendif\n\nif [ enemy(莫特).active ]\nuse(旋紧发条) [self.aura(增压).exists]\nuse(增压) [self.aura(加速).exists]\nuse(强力球)\nendif\nif [ enemy(里奇).active &  self(钢铁星弹).active ]\nstandby\nendif\n\nchange(#3) [ !self(#3).played ]\n\nif [ self(伊奇).active ]\n    ability(群殴) [ enemy.aura(黑爪).exists ]\n    ability(黑爪)\nendif",
				},
			},
		},
	},
	["profileKeys"] = {
		["海上五月花 - 火羽山"] = "Default",
		["悠悠战 - 末日祷告祭坛"] = "Default",
		["厦门妇幼 - 末日祷告祭坛"] = "Default",
		["帅帅爹 - 末日祷告祭坛"] = "Default",
		["最后的悠悠 - 火羽山"] = "Default",
		["亦可赛艇 - 迦罗娜"] = "Default",
		["悠悠龟 - 火羽山"] = "Default",
		["妈蛋 - 末日祷告祭坛"] = "Default",
		["最初的悠悠 - 日落沼泽"] = "Default",
		["赞达拉使者 - 火羽山"] = "Default",
		["最后的悠悠 - 迦罗娜"] = "Default",
		["Bbxl - 迦罗娜"] = "Default",
		["猛牛悠悠乳 - 火羽山"] = "Default",
		["小学生放假了 - 火羽山"] = "Default",
		["搞个大新闻 - 迦罗娜"] = "Default",
		["悠悠骑 - 末日祷告祭坛"] = "Default",
		["梁帅 - 迦罗娜"] = "Default",
		["杀猪刀猴赛雷 - 火羽山"] = "Default",
		["云飞 - 迦罗娜"] = "Default",
		["兮兮妹 - 末日祷告祭坛"] = "Default",
		["悠悠龟 - 冬拥湖"] = "Default",
		["打小怪的 - 迦罗娜"] = "Default",
		["Dxnbz - 安东尼达斯"] = "Default",
		["猴赛雷杀猪刀 - 火羽山"] = "Default",
		["悠悠龟 - 迦罗娜"] = "Default",
		["最初的悠悠 - 迦罗娜"] = "Default",
	},
	["profiles"] = {
		["Default"] = {
			["position"] = {
				["y"] = -177.412811279297,
				["x"] = 62.769287109375,
				["point"] = "LEFT",
				["scale"] = 1,
			},
		},
	},
}

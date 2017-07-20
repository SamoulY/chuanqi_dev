-- 自动生成，请勿修改 
-- 时间：2016/10/12
-- 21102585@qq.com

local world_bossConfig = class("world_bossConfig")
function world_bossConfig:ctor()
	self.fields = {"id", "scene_id", "boss_id", "refresh_time", "desc", "drop_list", "point", "lv_limit"}
	self.datas = {
		[1] = {1, 20201, 6900, "30分钟", "矿洞1层", {200050,201050,202050,110010,110050}, "9,6", 5},
		[2] = {2, 20207, 6907, "30分钟", "蜈蚣洞1层", {200022,201022,202022,200023,201023}, "44,6", 5},
		[3] = {3, 20208, 6908, "30分钟", "蜈蚣洞2层", {200021,201021,202021,200027,201027}, "50,9", 5},
		[4] = {4, 20203, 6901, "60分钟", "尸王大殿", {200035,201035,202035,110024,110031}, "10,12", 5},
		[5] = {5, 20206, 6902, "60分钟", "奥玛大殿", {200039,201039,202039,110025,110040}, "24,41", 10},
		[6] = {6, 20209, 6903, "90分钟", "死亡之地", {200031,201031,202031,110013,110090}, "28,9", 5},
		[7] = {7, 20212, 6904, "90分钟", "猪洞大殿", {200032,201032,202032,200033,201033}, "20,19", 40},
		[8] = {8, 20215, 6905, "90分钟", "祖玛大殿", {200030,201030,202030,200035,201035}, "6,35", 40},
		[9] = {9, 20217, 6909, "120分钟", "赤月1层", {200061,201061,202061,200062,201062}, "19,7", 40},
		[10] = {10, 20218, 6906, "180分钟", "赤月老巢", {305000,305001,305002,200060,201060}, "18,19", 40},
		[11] = {11, 20235, 6910, "180分钟", "深海迷宫2层", {200075,201075,110163,305013,110222}, "6,23", 65},
		[12] = {12, 20236, 6911, "240分钟", "深海迷宫3层", {200071,201071,202071,200072,201072}, "7,41", 65},
		[13] = {13, 20238, 6912, "240分钟", "牛魔寺庙2层", {200073,201073,202073,305016,305017}, "26,37", 65},
		[14] = {14, 20239, 6913, "360分钟", "牛魔寺庙3层", {200070,201070,202070,200076,201076}, "24,34", 65},
		[15] = {15, 20244, 6916, "360分钟", "雪域魔境2层", {110294,305021,305023,200070,201070}, "27,53", 80},
		[16] = {16, 20245, 6917, "480分钟", "雪域魔境3层", {110294,305025,305024,201070,202070}, "41,43", 80},
		[17] = {17, 32119, 6919, "480分钟", "魔龙岭2层", {110320,110294,305025,305024,201070}, "16,9", 95},
		[18] = {18, 32120, 6920, "540分钟", "魔龙岭3层", {110320,110294,305025,201070,202070}, "37,13", 95},

	}
end
return world_bossConfig
--
-- Author:zhangshunqiu   21102585@qq.com
-- 地图配置
local M20210 = class("M20210")
function M20210:ctor()
	self.gridColume = 48
	self.gridRow = 48
	self.height = 3072
	self.width = 3072
	self.mapId = 20210
	self.mapName = ""
	self.grids = {
		[1] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[2] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[3] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[4] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[5] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[6] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[7] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[8] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[9] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[10] = {1,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,1,1,0,0,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,2,1,1,1,1,1,1,1,1,1,1,1,1},
		[11] = {1,1,1,1,1,1,2,2,0,2,2,2,0,0,0,1,0,0,0,0,0,0,2,1,1,1,0,0,0,0,0,0,0,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1},
		[12] = {1,1,1,1,1,1,2,2,2,2,2,2,0,0,0,0,0,0,0,0,2,2,1,1,1,0,0,0,0,0,0,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[13] = {1,1,1,1,1,1,1,1,2,1,1,2,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[14] = {1,1,1,1,1,1,1,1,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[15] = {1,1,1,1,1,1,1,1,1,1,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[16] = {1,1,1,1,1,1,1,1,1,1,2,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0,0,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[17] = {1,1,1,1,1,1,1,1,1,2,0,0,0,0,2,2,2,2,2,2,2,0,0,0,0,0,2,0,1,1,1,2,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,1},
		[18] = {1,1,1,1,1,1,1,1,1,2,0,0,0,0,2,1,1,1,1,2,2,2,2,0,2,2,2,2,0,2,2,2,1,1,1,1,1,1,1,1,1,1,0,1,1,1,1,1},
		[19] = {1,1,1,1,1,1,1,1,0,0,0,0,0,0,2,1,1,1,1,1,1,1,2,2,1,1,1,1,2,2,2,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1},
		[20] = {1,1,1,2,2,2,2,2,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1},
		[21] = {1,1,1,1,1,2,2,2,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,1,1,1,1,1},
		[22] = {1,1,1,1,1,1,2,2,2,2,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,1,1,1,1},
		[23] = {1,1,1,1,1,1,1,2,2,2,2,2,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,1,1},
		[24] = {1,1,1,1,1,1,1,2,2,2,1,2,2,2,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,2,2,0,0,0,0,1,1},
		[25] = {1,1,1,1,1,1,1,2,2,1,1,1,2,2,2,2,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,2,2,2,2,0,0,0,0,0,1},
		[26] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,2,2,2,2,1,2,0,0,0,0,0,1},
		[27] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,1,1,1,1,0,0,0,0,0,1},
		[28] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,1,1,1,1,2,2,2,0,0,0,1},
		[29] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,1,1,1,1,1,2,2,2,0,0,0,1},
		[30] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,0,1,1,1,1,2,2,2,0,0,1},
		[31] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,2,0,0,1},
		[32] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,0,1,1,1,1,0,0,1},
		[33] = {1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,0,0,0,0,0,0,2,2,1,1,1,1,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
		[34] = {1,1,1,1,1,1,1,1,1,2,2,2,0,0,0,0,0,0,0,0,0,0,2,2,1,1,1,1,1,1,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1},
		[35] = {1,1,1,1,1,1,1,1,1,1,2,2,2,0,0,0,0,0,0,0,0,0,2,2,1,1,1,1,1,1,1,2,2,2,2,0,0,2,2,0,0,0,0,0,2,2,2,1},
		[36] = {1,1,1,1,1,1,1,1,1,1,1,2,2,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,0,2,2,2,2,1},
		[37] = {1,1,1,1,1,1,1,1,1,1,1,1,2,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,2,2,1,2,2,2,2,2,1},
		[38] = {1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,1,1,1,1,1},
		[39] = {1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[40] = {1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[41] = {1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[42] = {1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,0,0,0,0,0,0,0,2,2,1,1,1,1,1,1,1,1,1,1,1,1},
		[43] = {1,1,1,2,2,0,0,1,1,0,0,1,1,0,0,0,0,2,2,2,2,1,1,1,1,2,2,2,2,0,0,0,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1},
		[44] = {1,1,1,2,2,2,2,0,0,1,1,1,1,0,0,0,2,2,2,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[45] = {1,1,1,1,2,2,2,2,2,1,1,1,1,0,2,2,2,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[46] = {1,1,1,1,1,1,1,2,2,2,0,0,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[47] = {1,1,1,1,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
		[48] = {1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1},
	}
end
return M20210

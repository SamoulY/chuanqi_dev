-- 自动生成，请勿修改 
-- 时间：2015-1-19  11:29:30
-- ming <553500639@qq.com>

local aiconfigs = class("aiconfigs")

function aiconfigs:ctor()

    -- aiconfigs.super.ctor(self)

    self.fields = {"id", "desc", "aiType", "condType", "condValue", "actionType", "actionValue", "isAuto"}
    self.datas = {
        [10101] = {10101, "机枪兵兴奋剂", 1, 2, 20000, 1, 10012, 0},
        [10201] = {10201, "火枪兵兴奋剂", 1, 2, 20000, 1, 10022, 0},
        [10202] = {10202, "火枪兵自动技 火焰灼烧", 1, 2, 6000, 1, 10024, 0},
        [10401] = {10401, "特工隐形", 1, 2, 20000, 1, 10042, 0},
        [10402] = {10402, "特工锁定", 1, 2, 20000, 1, 10043, 0},
        [10403] = {10403, "特工核弹", 1, 2, 50000, 1, 10044, 0},
        [10801] = {10801, "瓦格雷导弹齐射", 1, 2, 26000, 1, 10082, 0},
        [11201] = {11201, "狂战士能量之刃", 1, 2, 20000, 1, 10123, 0},
        [11301] = {11301, "高阶圣堂闪电", 1, 2, 15000, 1, 10132, 0},
        [11801] = {11801, "海盗船分裂网", 1, 2, 24000, 1, 10182, 0},
        [11802] = {11802, "海盗船海盗旗", 1, 2, 10000, 1, 10184, 0},
        [11901] = {11901, "执政者电能脉冲", 1, 2, 18000, 1, 10192, 0},
        [10102] = {10102, "机枪兵身先士卒", 2, 1, 5000, 1, 10013, 0},
        [10] = {10, "", "", "", "", "", "", ""}
    }
end

return aiconfigs
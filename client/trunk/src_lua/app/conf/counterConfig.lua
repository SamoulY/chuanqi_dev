-- 自动生成，请勿修改 
-- 时间：2016/10/10
-- 21102585@qq.com

local counterConfig = class("counterConfig")
function counterConfig:ctor()
	self.fields = {"counter_id", "period_unit", "period", "limit_value", "base_time"}
	self.datas = {
		[10001] = {10001, "day", 1, 3, "{{2015,1,1},{0,0,0}}"},
		[10002] = {10002, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10003] = {10003, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10004] = {10004, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10005] = {10005, "hour", 3, 1, "{{2015,1,1},{0,0,0}}"},
		[10006] = {10006, "day", 1, 999, "{{2015,1,1},{0,0,0}}"},
		[10007] = {10007, "day", 1, 5, "{{2015,1,1},{0,0,0}}"},
		[10008] = {10008, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10009] = {10009, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10010] = {10010, "day", 1, 99, "{{2015,1,1},{0,0,0}}"},
		[10011] = {10011, "day", 1, 99, "{{2015,1,1},{0,0,0}}"},
		[10012] = {10012, "day", 1, 99, "{{2015,1,1},{0,0,0}}"},
		[10013] = {10013, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10014] = {10014, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10015] = {10015, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10016] = {10016, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10017] = {10017, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10018] = {10018, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10019] = {10019, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10020] = {10020, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10021] = {10021, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10022] = {10022, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10023] = {10023, "day", 1, 99999999, "{{2015,1,1},{0,0,0}}"},
		[10024] = {10024, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10025] = {10025, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10026] = {10026, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10027] = {10027, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10028] = {10028, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10029] = {10029, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10030] = {10030, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10031] = {10031, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10032] = {10032, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10033] = {10033, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10034] = {10034, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10035] = {10035, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10036] = {10036, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10037] = {10037, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10038] = {10038, "month", 1, 31, "{{2015,1,1},{0,0,0}}"},
		[10039] = {10039, "day", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10040] = {10040, "day", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10041] = {10041, "day", 1, 99, "{{2015,1,1},{0,0,0}}"},
		[10042] = {10042, "day", 1, 99, "{{2015,1,1},{0,0,0}}"},
		[10043] = {10043, "day", 1, 99, "{{2015,1,1},{0,0,0}}"},
		[10044] = {10044, "week", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10045] = {10045, "day", 1, 5, "{{2015,1,1},{0,0,0}}"},
		[10046] = {10046, "day", 1, 5, "{{2015,1,1},{0,0,0}}"},
		[10047] = {10047, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10048] = {10048, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10049] = {10049, "forever", 1, 99999, "{{2015,1,1},{0,0,0}}"},
		[10050] = {10050, "day", 30, 1, "{{2015,1,1},{0,0,0}}"},
		[10051] = {10051, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10052] = {10052, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10053] = {10053, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10054] = {10054, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10055] = {10055, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10056] = {10056, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10057] = {10057, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10058] = {10058, "day", 1, 500, "{{2015,1,1},{0,0,0}}"},
		[10059] = {10059, "day", 1, 40, "{{2015,1,1},{0,0,0}}"},
		[10060] = {10060, "day", 1, 40, "{{2015,1,1},{0,0,0}}"},
		[10061] = {10061, "day", 1, 40, "{{2015,1,1},{0,0,0}}"},
		[10062] = {10062, "day", 1, 40, "{{2015,1,1},{0,0,0}}"},
		[10063] = {10063, "day", 1, 20, "{{2015,1,1},{0,0,0}}"},
		[10064] = {10064, "day", 1, 20, "{{2015,1,1},{0,0,0}}"},
		[10065] = {10065, "day", 1, 50, "{{2015,1,1},{0,0,0}}"},
		[10066] = {10066, "day", 1, 2, "{{2015,1,1},{0,0,0}}"},
		[10067] = {10067, "day", 1, 2, "{{2015,1,1},{0,0,0}}"},
		[10068] = {10068, "day", 1, 5, "{{2015,1,1},{0,0,0}}"},
		[10069] = {10069, "day", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10070] = {10070, "day", 1, 99, "{{2015,1,1},{0,0,0}}"},
		[10071] = {10071, "week", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10072] = {10072, "week", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10073] = {10073, "week", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10074] = {10074, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10075] = {10075, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10076] = {10076, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10077] = {10077, "forever", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10078] = {10078, "forever", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10079] = {10079, "forever", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10080] = {10080, "forever", 1, 5, "{{2015,1,1},{0,0,0}}"},
		[10081] = {10081, "forever", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10082] = {10082, "forever", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10083] = {10083, "forever", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10084] = {10084, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10085] = {10085, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10086] = {10086, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10087] = {10087, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10088] = {10088, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10089] = {10089, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10090] = {10090, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10091] = {10091, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10092] = {10092, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10093] = {10093, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10094] = {10094, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10095] = {10095, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10096] = {10096, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10097] = {10097, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10098] = {10098, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10099] = {10099, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10100] = {10100, "forever", 1, 9999999, "{{2015,1,1},{0,0,0}}"},
		[10101] = {10101, "day", 1, 9999999, "{{2015,1,1},{0,0,0}}"},
		[10102] = {10102, "forever", 1, 9999999, "{{2015,1,1},{0,0,0}}"},
		[10103] = {10103, "day", 1, 9999999, "{{2015,1,1},{0,0,0}}"},
		[10104] = {10104, "forever", 1, 9999999, "{{2015,1,1},{0,0,0}}"},
		[10105] = {10105, "day", 1, 9999999, "{{2015,1,1},{0,0,0}}"},
		[10106] = {10106, "forever", 1, 9999999, "{{2015,1,1},{0,0,0}}"},
		[10107] = {10107, "day", 1, 9999999, "{{2015,1,1},{0,0,0}}"},
		[10108] = {10108, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10109] = {10109, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10110] = {10110, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10111] = {10111, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10112] = {10112, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10113] = {10113, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10114] = {10114, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10115] = {10115, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10116] = {10116, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10117] = {10117, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10118] = {10118, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10119] = {10119, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10120] = {10120, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10121] = {10121, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10122] = {10122, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10123] = {10123, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10124] = {10124, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10125] = {10125, "forever", 1, 1, "{{2015,1,1},{0,0,0}}"},
		[10126] = {10126, "day", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10127] = {10127, "day", 1, 10, "{{2015,1,1},{0,0,0}}"},
		[10128] = {10128, "day", 1, 20, "{{2015,1,1},{0,0,0}}"},
		[10129] = {10129, "day", 1, 10, "{{2015,1,1},{0,0,0}}"},

	}
end
return counterConfig
ALTER TABLE `player_goods` ADD COLUMN `bless` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '祝福值' AFTER `secure`, CHANGE COLUMN `update_time` `update_time` int(11) NOT NULL DEFAULT 0 COMMENT '更新时间' AFTER `bless`, CHANGE COLUMN `expire_time` `expire_time` bigint(19) UNSIGNED NOT NULL DEFAULT 0 COMMENT '时效道具过期时间' AFTER `update_time`;
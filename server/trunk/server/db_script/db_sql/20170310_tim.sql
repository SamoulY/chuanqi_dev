ALTER TABLE `player_base` ADD COLUMN `ring_transfer_cd` int(11) UNSIGNED DEFAULT 0 COMMENT '传送戒指使用cd' AFTER `fh_cd`;
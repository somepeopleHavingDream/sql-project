create table t_level(
    id bigint unsigned primary key auto_increment comment '主键',
    level varchar(200) not null comment '等级',
    discount decimal(10, 2) unsigned not null comment '折扣'
) comment = '会员登记表';

INSERT INTO `t_level` VALUES (1, '铜牌会员', 0.99);
INSERT INTO `t_level` VALUES (2, '银牌会员', 0.98);
INSERT INTO `t_level` VALUES (3, '金牌会员', 0.97);
INSERT INTO `t_level` VALUES (4, '白金会员', 0.95);
INSERT INTO `t_level` VALUES (5, '钻石会员', 0.92);
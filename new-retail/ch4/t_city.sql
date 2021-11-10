create table t_city(
    id bigint unsigned primary key auto_increment comment '主键',
    city varchar(200) not null comment '城市',
    province_id bigint unsigned not null comment '省份Id'
) comment = '城市表';

INSERT INTO `t_city` VALUES (1, '沈阳', 5);
INSERT INTO `t_city` VALUES (2, '大连', 5);
INSERT INTO `t_city` VALUES (3, '鞍山', 5);
INSERT INTO `t_city` VALUES (4, '长春', 6);
INSERT INTO `t_city` VALUES (5, '吉林', 6);
INSERT INTO `t_city` VALUES (6, '哈尔滨', 7);
INSERT INTO `t_city` VALUES (7, '齐齐哈尔', 7);
INSERT INTO `t_city` VALUES (8, '牡丹江', 7);
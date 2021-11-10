create table t_province(
    id bigint unsigned primary key auto_increment comment '主键',
    province varchar(200) not null comment '省份',
    unique uk_province(province)
) comment = '省份表';

INSERT INTO `t_province` VALUES (1, '北京');
INSERT INTO `t_province` VALUES (2, '上海');
INSERT INTO `t_province` VALUES (3, '天津');
INSERT INTO `t_province` VALUES (4, '重庆');
INSERT INTO `t_province` VALUES (5, '辽宁');
INSERT INTO `t_province` VALUES (6, '吉林');
INSERT INTO `t_province` VALUES (7, '黑龙江');
INSERT INTO `t_province` VALUES (8, '山东');
INSERT INTO `t_province` VALUES (9, '江苏');
INSERT INTO `t_province` VALUES (10, '浙江');
INSERT INTO `t_province` VALUES (11, '安徽');
INSERT INTO `t_province` VALUES (12, '福建');
INSERT INTO `t_province` VALUES (13, '江西');
INSERT INTO `t_province` VALUES (14, '广东');
INSERT INTO `t_province` VALUES (15, '广西');
INSERT INTO `t_province` VALUES (16, '海南');
INSERT INTO `t_province` VALUES (17, '河南');
INSERT INTO `t_province` VALUES (18, '湖南');
INSERT INTO `t_province` VALUES (19, '湖北');
INSERT INTO `t_province` VALUES (20, '河北');
INSERT INTO `t_province` VALUES (21, '山西');
INSERT INTO `t_province` VALUES (22, '内蒙古');
INSERT INTO `t_province` VALUES (23, '宁夏');
INSERT INTO `t_province` VALUES (24, '青海');
INSERT INTO `t_province` VALUES (25, '陕西');
INSERT INTO `t_province` VALUES (26, '甘肃');
INSERT INTO `t_province` VALUES (27, '新疆');
INSERT INTO `t_province` VALUES (28, '四川');
INSERT INTO `t_province` VALUES (29, '贵州');
INSERT INTO `t_province` VALUES (30, '云南');
INSERT INTO `t_province` VALUES (31, '西藏');
INSERT INTO `t_province` VALUES (32, '香港');
INSERT INTO `t_province` VALUES (33, '澳门');
INSERT INTO `t_province` VALUES (34, '台湾');
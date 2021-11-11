create table t_role(
    id bigint unsigned primary key auto_increment comment '主键',
    role varchar(20) not null comment '角色名称',
    unique uk_role(role)
) comment = '角色表';

INSERT INTO `t_role` VALUES (6, '保管员');
INSERT INTO `t_role` VALUES (3, '售货员');
INSERT INTO `t_role` VALUES (5, '客服');
INSERT INTO `t_role` VALUES (2, '管理员');
INSERT INTO `t_role` VALUES (7, '质检员');
INSERT INTO `t_role` VALUES (1, '超级管理员');
INSERT INTO `t_role` VALUES (4, '零售店长');
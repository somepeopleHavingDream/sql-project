create table t_dept(
    id bigint unsigned primary key auto_increment comment '主键',
    dname varchar(20) not null comment '部门名称',
    unique uk_dname(dname)
) comment = '部门表';

INSERT INTO `t_dept` VALUES (1, '董事会');
INSERT INTO `t_dept` VALUES (2, '总裁办');
INSERT INTO `t_dept` VALUES (3, '零售部');
INSERT INTO `t_dept` VALUES (4, '网商部');
INSERT INTO `t_dept` VALUES (5, '技术部');
INSERT INTO `t_dept` VALUES (6, '售后部');
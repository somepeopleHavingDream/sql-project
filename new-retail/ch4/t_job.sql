create table t_job(
    id bigint unsigned primary key auto_increment comment '主键',
    job varchar(20) not null comment '职位名称',
    unique uk_job(job)
) comment = '职位表';

INSERT INTO `t_job` VALUES (1, '董事长');
INSERT INTO `t_job` VALUES (2, '总经理');
INSERT INTO `t_job` VALUES (3, '部门经理');
INSERT INTO `t_job` VALUES (4, '主管');
INSERT INTO `t_job` VALUES (5, '店长');
INSERT INTO `t_job` VALUES (6, '售货员');
INSERT INTO `t_job` VALUES (7, '保安');
INSERT INTO `t_job` VALUES (8, '保管员');
INSERT INTO `t_job` VALUES (9, '实习生');

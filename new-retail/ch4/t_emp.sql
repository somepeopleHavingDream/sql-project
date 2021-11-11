create table t_emp(
    id bigint unsigned primary key auto_increment comment '主键',
    wid varchar(20) not null comment '工号',
    ename varchar(20) not null comment '姓名',
    sex char(1) not null comment '性别',
    married boolean not null comment '婚否',
    education tinyint not null comment '学历：1大专，2本科，3研究生，4博士，5其他',
    tel char(11) not null comment '电话',
    email varchar(200) comment '邮箱',
    address varchar(200) comment '住址',
    job_id int unsigned not null comment '职务Id',
    dept_id int unsigned not null comment '部门Id',
    mgr_id int unsigned comment '上司Id',
    hiredate date not null comment '入职日期',
    termdate date comment '离职日期',
    status tinyint unsigned not null comment '状态：1在职，2休假，3离职，4死亡',
    index idx_job_id(job_id),
    index idx_dept_id(dept_id),
    index idx_status(status),
    index idx_mgr_id(mgr_id),
    index idx_wid(wid),
    unique uk_wid(wid)
) comment = '员工表';

INSERT INTO `t_emp` VALUES (1, 'S10010E', '李娜', '女', 1, 2, '18912345678', NULL, NULL, 5, 3, NULL, '2018-12-06', NULL, 1);
INSERT INTO `t_emp` VALUES (2, 'S10014A', '刘畅', '女', 1, 2, '13312345678', NULL, NULL, 6, 3, 1, '2019-04-11', NULL, 1);
INSERT INTO `t_emp` VALUES (3, 'TE0023', '陈婷婷', '女', 0, 1, '13322334545', NULL, NULL, 9, 3, NULL, '2019-05-16', NULL, 1);
INSERT INTO `t_emp` VALUES (4, 'TE0024', '徐刚', '男', 0, 1, '13322334545', NULL, NULL, 9, 4, NULL, '2019-05-16', NULL, 1);
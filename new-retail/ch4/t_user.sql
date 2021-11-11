create table t_user(
    id bigint unsigned primary key auto_increment comment '主键',
    username varchar(200) not null comment '用户名',
    password varchar(2000) not null comment '密码（AES加密）',
    emp_id bigint unsigned not null comment '员工Id',
    role_id bigint unsigned not null comment '角色Id',
    status tinyint unsigned not null comment '状态：1可用，2禁用',
    create_time datetime not null default now() comment '添加时间',
    last_update_time datetime not null default now() comment '最后修改时间',
    unique uk_username(username),
    index idx_username(username),
    index idx_emp_id(emp_id),
    index idx_role_id(role_id),
    index idx_status(status)
) comment = '用户表';

INSERT INTO `t_user` VALUES (1, 'demo123', 'C55E8E99B7745306F1B30AE2C8C8D54B', 1, 4, 1, '2019-04-11 15:26:33', '2019-04-11 15:26:33');
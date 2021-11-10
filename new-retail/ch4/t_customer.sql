create table t_customer(
    id bigint unsigned primary key auto_increment comment '主键',
    username varchar(200) not null comment '用户名',
    password varchar(2000) not null comment '密码（AES加密）',
    wechat varchar(200) comment '微信号',
    tel char(11) comment '手机号',
    level_id bigint unsigned comment '会员等级',
    create_time datetime not null default now() comment '添加时间',
    last_update_time timestamp not null default now() comment '最后修改时间',
    index idx_username(username),
    unique uk_username(username)
) comment = '客户表';

INSERT INTO `t_customer` VALUES (1, 'scott123', 'BDC0253EF1EFF8B5D6D62F5073972493', NULL, NULL, 1, '2019-04-06 22:50:50', '2019-04-06 22:50:50');
INSERT INTO `t_customer` VALUES (2, 'jack123', 'CBB577666CE2963533369D1AA9D229D5', 'jack123', '15912345678', NULL, '2019-04-06 23:06:50', '2019-04-06 23:06:50');
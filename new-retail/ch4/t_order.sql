create table t_order(
    id int unsigned primary key auto_increment comment '主键',
    code varchar(200) not null comment '流水号',
    type tinyint unsigned not null comment '订单类型：1实体销售,2网络销售',
    shop_id bigint unsigned comment '零售店Id',
    customer_id bigint unsigned comment '会员Id',
    amount decimal(10, 2) unsigned not null comment '总金额',
    payment_type tinyint unsigned not null comment '支付方式：1借记卡，2信用卡，3微信，4支付，5现金',
    status tinyint unsigned not null comment '状态：1未付款，2已付款，3已发货，4已签收',
    postage decimal(10, 2) unsigned comment '邮费',
    weight int unsigned comment '重量（克）',
    voucher_id bigint unsigned comment '购物券Id',
    create_time datetime not null default now() comment '创建时间',
    index idx_code(code),
    index idx_customer_id(customer_id),
    index idx_status(status),
    index idx_create_time(create_time),
    index idx_type(type),
    index idx_shop_id(shop_id),
    unique uk_code(code)
) comment = '订单表';

INSERT INTO `t_order` VALUES (1, 'CX0000000120160522', 1, 3, 1, 5998.00, 5, 2, NULL, NULL, NULL, '2019-04-11 01:07:05');
INSERT INTO `t_order` VALUES (2, 'CX0000000120160523', 2, NULL, 1, 5998.00, 1, 2, 60.00, 530, NULL, '2019-04-11 21:22:37');
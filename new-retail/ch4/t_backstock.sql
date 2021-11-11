create table t_backstock(
    id bigint unsigned primary key auto_increment comment '主键',
    order_id bigint unsigned not null comment '订单Id',
    sku json not null comment '退货商品',
    reason varchar(200) not null comment '退货原因',
    qa_id bigint unsigned not null comment '质检员Id',
    payment decimal(10, 2) unsigned not null comment '退款金额',
    payment_type tinyint unsigned not null comment '退款方式：1借记卡，2信用卡，3微信，4支付宝，5现金',
    status tinyint unsigned not null comment '状态：1退货成功，2无法退货',
    create_time datetime not null default now() comment '添加时间',
    index idx_order_id(order_id),
    index idx_qa_id(qa_id),
    index idx_status(status)
) comment = '退货表';

INSERT INTO `t_backstock` VALUES (1, 2, '[3]', '质量问题', 15, 2999.00, 5, 1, '2019-04-11 21:18:06');
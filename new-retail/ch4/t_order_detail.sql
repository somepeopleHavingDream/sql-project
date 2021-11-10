create table t_order_detail(
    order_id bigint unsigned not null comment '订单Id',
    sku_id bigint unsigned not null comment '商品Id',
    price decimal(10, 2) unsigned not null comment '原价格',
    actual_price decimal(10, 2) unsigned not null comment '实际购买价',
    num int unsigned not null comment '购买数量',
    primary key (order_id, sku_id)
) comment = '订单详情表';

INSERT INTO `t_order_detail` VALUES (1, 3, 2999.00, 2999.00, 1);
INSERT INTO `t_order_detail` VALUES (1, 4, 2999.00, 2999.00, 1);
INSERT INTO `t_order_detail` VALUES (2, 3, 2999.00, 2999.00, 2);
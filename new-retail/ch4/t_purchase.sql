create table t_purchase(
    id bigint unsigned primary key auto_increment comment '主键',
    sku_id bigint unsigned not null comment '商品Id',
    num bigint unsigned not null comment '数量',
    warehouse_id bigint unsigned not null comment '仓库Id',
    in_price decimal(10, 2) unsigned not null comment '采购价格',
    out_price decimal(10, 2) unsigned comment '建议零售价',
    buyer_id bigint unsigned not null comment '采购员Id',
    status tinyint unsigned not null comment '状态：1未完成，2已完成',
    create_time datetime not null default now() comment '添加时间',
    index idx_sku_id(sku_id),
    index idx_warehouse_id(warehouse_id),
    index idx_buyer_id(buyer_id),
    index idx_status(status),
    index idx_create_time(create_time)
) comment = '采购表';

INSERT INTO `t_purchase` VALUES (1, 1, 50, 1, 3000.00, 3299.00, 20, 2, '2019-04-12 19:16:03');
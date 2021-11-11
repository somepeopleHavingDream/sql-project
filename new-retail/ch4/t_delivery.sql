create table t_delivery(
    id bigint unsigned primary key auto_increment comment '主键',
    order_id bigint unsigned not null comment '订单Id',
    sku json not null comment '商品',
    qa_id bigint unsigned not null comment '质检员Id',
    de_id bigint unsigned not null comment '发货员Id',
    postid bigint unsigned not null comment '快递单号',
    price decimal unsigned not null comment '快递费',
    ecp tinyint unsigned not null comment '快递公司编号',
    address_id bigint unsigned not null comment '收货地址Id',
    warehouse_id bigint unsigned not null comment '仓库Id',
    create_time datetime not null default now() comment '添加时间',
    index idx_order_id(order_id),
    index idx_qa_id(qa_id),
    index idx_de_id(de_id),
    index idx_postid(postid),
    index idx_warehouse_id(warehouse_id),
    index idx_address_id(address_id),
    index idx_ecp(ecp)
) comment = '快递表';

INSERT INTO `t_delivery` VALUES (1, 2, '[3, 3]', 15, 17, '125488611212545', 60, 1, 1, 1, '2019-04-11 21:14:38');
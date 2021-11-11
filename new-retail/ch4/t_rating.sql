create table t_rating(
    id bigint unsigned primary key auto_increment comment '评价Id',
    order_id bigint unsigned not null comment '订单Id',
    sku_id bigint unsigned not null comment '商品Id',
    img json comment '买家晒图',
    rating tinyint unsigned not null comment '评分',
    comment varchar(200) comment '评论',
    create_time datetime not null default now() comment '添加时间',
    index idx_order_id(order_id),
    index idx_sku_id(sku_id),
    index idx_create_time(create_time)
) comment = '评价表';

INSERT INTO `t_rating` VALUES (1, 2, 3, '[\"http://192.168.99.184/1.jpg\"]', 5, '很好用，很漂亮', '2019-04-12 00:17:40');
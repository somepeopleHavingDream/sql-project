create table t_shop_sku(
    shop_id bigint unsigned comment '零售店Id',
    sku_id bigint unsigned comment '商品Id',
    num int unsigned not null comment '库存数量',
    unit varchar(20) not null comment '库存单位',
    primary key (shop_id, sku_id)
) comment = '零售店商品库存表';

INSERT INTO `t_shop_sku` VALUES (1, 1, 3, '部');
INSERT INTO `t_shop_sku` VALUES (1, 2, 3, '部');
INSERT INTO `t_shop_sku` VALUES (1, 3, 1, '部');
INSERT INTO `t_shop_sku` VALUES (1, 4, 0, '部');
INSERT INTO `t_shop_sku` VALUES (2, 1, 3, '部');
INSERT INTO `t_shop_sku` VALUES (2, 2, 0, '部');
INSERT INTO `t_shop_sku` VALUES (2, 3, 0, '部');
INSERT INTO `t_shop_sku` VALUES (2, 4, 1, '部');
create table t_warehouse_sku(
    warehouse_id bigint unsigned comment '仓库Id',
    sku_id bigint unsigned comment '商品Id',
    num int unsigned not null comment '库存数量',
    unit varchar(20) not null comment '库存单位',
    primary key (warehouse_id, sku_id)
) comment = '仓库商品库存表';

INSERT INTO `t_warehouse_sku` VALUES (1, 1, 20, '部');
INSERT INTO `t_warehouse_sku` VALUES (1, 2, 15, '部');
INSERT INTO `t_warehouse_sku` VALUES (1, 3, 40, '部');
INSERT INTO `t_warehouse_sku` VALUES (1, 4, 0, '部');
INSERT INTO `t_warehouse_sku` VALUES (2, 1, 0, '部');
INSERT INTO `t_warehouse_sku` VALUES (2, 2, 0, '部');
INSERT INTO `t_warehouse_sku` VALUES (2, 3, 5, '部');
INSERT INTO `t_warehouse_sku` VALUES (2, 4, 19, '部');
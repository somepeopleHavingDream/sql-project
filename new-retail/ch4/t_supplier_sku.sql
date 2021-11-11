create table t_supplier_sku(
    supplier_id bigint unsigned not null comment '供货商Id',
    sku_id bigint unsigned not null comment '商品Id',
    primary key (supplier_id, sku_id)
) comment = '供货商关联商品表';

INSERT INTO `t_supplier_sku` VALUES (1, 1);
INSERT INTO `t_supplier_sku` VALUES (1, 2);
INSERT INTO `t_supplier_sku` VALUES (1, 3);
create table t_production_purchase(
    production_id bigint unsigned not null comment '入库Id',
    purchase_id bigint unsigned not null comment '采购Id',
    primary key (production_id, purchase_id)
) comment = '入库商品表';

INSERT INTO `t_production_purchase` VALUES (1, 1);
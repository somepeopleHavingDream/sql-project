create table t_production(
    id bigint unsigned primary key auto_increment comment '主键',
    storekeeper_id bigint unsigned not null comment '保管员Id',
    amount decimal(15, 2) unsigned not null comment '总金额',
    supplier_id bigint unsigned not null comment '供应商Id',
    payment decimal(15, 2) unsigned not null comment '实付金额',
    payment_type tinyint unsigned not null comment '支付方式',
    invoice boolean not null comment '是否开票',
    remark varchar(200) comment '备注',
    create_time datetime not null default now() comment '添加时间',
    index idx_storekeeper_id(storekeeper_id),
    index idx_supplier_id(supplier_id),
    index idx_payment_type(payment_type),
    index idx_create_time(create_time)
) comment = '入库信息表';

INSERT INTO `t_production` VALUES (1, 42, 150000.00, 1, 150000.00, 1, 1, NULL, '2019-04-12 19:17:10');
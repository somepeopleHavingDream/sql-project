create table t_voucher_customer(
    id bigint unsigned primary key auto_increment comment '主键',
    voucher_id bigint unsigned not null comment '购物券Id',
    customer_id bigint unsigned not null comment '客户Id'
) comment = '客户关联购物券数据表';

INSERT INTO `t_voucher_customer` VALUES (1, 1, 1);
INSERT INTO `t_voucher_customer` VALUES (2, 1, 1);
INSERT INTO `t_voucher_customer` VALUES (3, 1, 1);
INSERT INTO `t_voucher_customer` VALUES (4, 2, 1);
INSERT INTO `t_voucher_customer` VALUES (5, 2, 1);
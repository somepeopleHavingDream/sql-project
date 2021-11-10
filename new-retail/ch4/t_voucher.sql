create table t_voucher(
    id bigint unsigned primary key auto_increment comment '主键',
    deno decimal(10, 2) unsigned not null comment '面值',
    `condition` decimal(10, 2) unsigned not null comment '订单满多少钱可以使用',
    start_date date comment '起始日期',
    end_date date comment '截止日期',
    max_num int comment '代金券发放最大数量'
) comment = '购物券表';

INSERT INTO `t_voucher` VALUES (1, 50.00, 1000.00, '2019-04-25', '2019-05-25', 1000);
INSERT INTO `t_voucher` VALUES (2, 20.00, 500.00, '2019-04-25', '2019-05-25', NULL);
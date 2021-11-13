drop table if exists t_customer_address;
create table t_customer_address(
    id bigint unsigned primary key auto_increment comment '主键',
    customer_id bigint unsigned not null comment '客户Id',
    name varchar(200) not null comment '收货人姓名',
    tel char(11) not null comment '收货人电话',
    address varchar(200) not null comment '收货地址',
    prime boolean not null comment '是否为缺省收货地址',
    index idx_customer_id(customer_id)
) comment = '收货地址表';

INSERT INTO `t_customer_address` VALUES (1, 1, '陈浩', '13312345678', '辽宁省大连市高新园区6号9#11-1', 0);
INSERT INTO `t_customer_address` VALUES (2, 1, '李娜', '18912345678', '辽宁省大连市沙河口区星月街17号2#1-3', 0);
INSERT INTO `t_customer_address` VALUES (3, 1, '徐亮', '13723567412', '辽宁省营口市盼盼工业园1-1', 1);
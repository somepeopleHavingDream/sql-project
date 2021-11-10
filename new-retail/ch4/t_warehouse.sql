create table t_warehouse(
    id bigint unsigned primary key auto_increment comment '主键',
    city_id bigint unsigned not null comment '城市Id',
    address varchar(200) not null comment '地址',
    tel varchar(20) not null comment '电话',
    index idx_city_id(city_id)
) comment = '仓库表';

INSERT INTO `t_warehouse` VALUES (1, 1, '辽宁省沈阳市沈河区青年大街100号', '024-12345678');
INSERT INTO `t_warehouse` VALUES (2, 1, '辽宁省沈阳市皇姑区崇山路41号', '024-22331234');
INSERT INTO `t_warehouse` VALUES (3, 2, '辽宁省大连市西岗区五四路38号', '0411-12345678');
INSERT INTO `t_warehouse` VALUES (4, 2, '辽宁省大连市沙河口区星云街1号', '0411-98213210');
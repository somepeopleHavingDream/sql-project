create table t_shop(
    id bigint unsigned primary key auto_increment comment '主键',
    city_id bigint unsigned not null comment '城市Id',
    address varchar(200) not null comment '地址',
    tel varchar(20) not null comment '电话',
    index idx_city_id(city_id)
) comment = '零售店表';

INSERT INTO `t_shop` VALUES (1, 1, '辽宁省沈阳市黄河北大街12号', '024-11112222');
INSERT INTO `t_shop` VALUES (2, 1, '辽宁省沈阳市皇姑区长江街40号', '024-12341234');
INSERT INTO `t_shop` VALUES (3, 1, '辽宁省沈阳市铁西区卫工街19号', '024-12312345');
INSERT INTO `t_shop` VALUES (4, 2, '大连市西岗区五四路38号', '0411-12345678');
INSERT INTO `t_shop` VALUES (5, 2, '大连市沙河口区星云街1号', '0411-98213210');
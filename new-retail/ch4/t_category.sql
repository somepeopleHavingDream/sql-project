create table t_category(
    id bigint unsigned primary key auto_increment comment '主键',
    name varchar(200) not null comment '分类名称',
    parent_id bigint unsigned comment '上级分类Id',
    if_parent boolean not null comment '是否含有下级分类',
    sort int unsigned not null comment '排名指数',
    index idx_parent_id(parent_id),
    index idx_sort(sort)
) comment = '商品分类表';

insert into t_category(name, parent_id, if_parent, sort)
values ('手机/数码/配件', null, 1, 1),
       ('手机通讯', 1, 1, 1),
       ('手机', 2, 0, 1),
       ('手机配件', 1, 1, 2),
       ('移动电源', 4, 0, 2),
       ('蓝牙耳机', 4, 0, 5),
       ('保护壳', 4, 0, 2),
       ('数码配件', 1, 1, 3),
       ('存储卡', 8, 0, 10),
       ('读卡器', 8, 0, 10),
       ('电脑/办公/外设', null, 1, 1),
       ('电脑整机', 11, 1, 1),
       ('笔记本', 12, 0, 1),
       ('台式电脑', 12, 0, 1),
       ('平板电脑', 12, 0, 1);
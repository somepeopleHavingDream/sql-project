create table t_category_brand(
    category_id bigint unsigned comment '分类Id',
    brand_id bigint unsigned comment '品牌Id',
    primary key (category_id, brand_id)
) comment = '分类与品牌关联表';

insert into t_category_brand
values (3, 1),
       (3, 2),
       (3, 3),
       (3, 4),
       (3, 5),
       (3, 6),
       (3, 8),
       (3, 10),
       (13, 1),
       (13, 2),
       (13, 12);
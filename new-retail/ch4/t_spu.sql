create table t_spu(
    id bigint unsigned primary key auto_increment comment '主键',
    title varchar(200) not null comment '标题',
    sub_title varchar(200) comment '副标题',
    category_id bigint unsigned not null comment '分类Id',
    brand_id bigint unsigned comment '品牌Id',
    spg_id bigint unsigned not null comment '品类Id',
    saleable boolean not null comment '是否上架',
    valid boolean not null comment '是否有效',
    create_time datetime not null default now() comment '添加时间',
    last_update_time datetime not null default now() comment '最后修改时间',
    index idx_brand_id(brand_id),
    index idx_category_id(category_id),
    index idx_spg_id(spg_id),
    index idx_saleable(saleable),
    index idx_valid(valid)
) comment = '产品表';
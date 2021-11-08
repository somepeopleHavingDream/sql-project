create table t_spec_group
(
    id     bigint unsigned primary key auto_increment comment '主键',
    spg_id int unsigned not null comment '品类编号',
    name   varchar(200) not null comment '品类名称',
    unique index uk_spg_id (spg_id),
    unique index uk_name (name),
    index idx_spg_id (spg_id)
) comment = '品类表';

insert into t_spec_group(spg_id, name)
values (10001, '手机'),
       (10002, '手机线'),
       (10003, '手机电池'),
       (11001, '液晶电视'),
       (11002, '投影电视');
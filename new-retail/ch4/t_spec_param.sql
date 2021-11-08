create table t_spec_param(
    id bigint unsigned primary key auto_increment comment '主键',
    spg_id int unsigned not null comment '品类编号',
    spp_id int unsigned not null comment '参数编号',
    name varchar(200) not null comment '参数名称',
    `numeric` boolean not null comment '是否为数字参数',
    unit varchar(200) comment '单位（量词）',
    generic boolean not null comment '是否为通用参数',
    searching boolean not null comment '是否用于通用搜索',
    segments varchar(500) comment '参数值',
    index idx_spg_id(spg_id),
    index idx_spp_id(spp_id)
) comment = '参数表';

insert into t_spec_param(spg_id, spp_id, name, `numeric`, unit, generic, searching, segments)
values (10001, 1, 'CPU', 0, null, 1, 0, null),
       (10001, 2, '运存', 1, 'GB', 1, 1, null),
       (10001, 3, '内存', 1, 'GB', 1, 1, null),
       (10001, 4, '屏幕尺寸', 1, '英寸', 1, 1, null),
       (10001, 5, '电池', 1, '毫安时', 1, 0, null),
       (11001, 1, '屏幕尺寸', 1, '英寸', 1, 1, null),
       (11001, 2, '长度', 1, '厘米', 1, 0, null),
       (11001, 3, '高度', 1, '厘米', 1, 0, null),
       (11001, 4, '宽度', 1, '厘米', 1, 0, null),
       (11001, 5, '分辨率', 0, '像素', 1, 1, '720P\\1080P\\4K\\8K');
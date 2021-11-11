create table t_supplier(
    id bigint unsigned primary key auto_increment comment '主键',
    code varchar(200) not null comment '供货商编号',
    name varchar(200) not null comment '供货商名称',
    type tinyint unsigned not null comment '类型：1厂家，2代理商，3个人',
    link_man varchar(20) not null comment '联系人',
    tel varchar(20) not null comment '联系电话',
    address varchar(200) not null comment '联系地址',
    bank_name varchar(200) comment '开户银行名称',
    bank_account varchar(200) comment '银行账号',
    status tinyint unsigned not null comment '状态：1可用，2不可用',
    index idx_code(code),
    index idx_type(type),
    index idx_status(status),
    unique uk_code(code)
) comment = '供货商表';

INSERT INTO `t_supplier` VALUES (1, '2394125', 'A供货商', 1, '李强', '13312345678', '辽宁省大连市高新园区121号', NULL, NULL, 1);
create table t_brand(
    id bigint unsigned primary key auto_increment comment '主键',
    name varchar(200) not null comment '名称',
    image varchar(500) comment '图片网址',
    letter char(1) not null comment '品牌首字母',
    unique uk_name(name),
    index idx_letter(letter)
) comment = '品牌表';

insert into t_brand(name, letter)
values ('联想', 'L'),
       ('华为', 'H'),
       ('小米', 'X'),
       ('苹果', 'A'),
       ('OPPO', 'O'),
       ('三星', 'S'),
       ('LG', 'L'),
       ('vivo', 'V'),
       ('飞利浦', 'F'),
       ('红米', 'H'),
       ('IBM', 'I'),
       ('戴尔', 'D');
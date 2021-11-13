create database big_test;

use big_test;

create table t_big_table
(
    id  bigint unsigned not null primary key auto_increment comment '主键',
    val varchar(255)    not null comment '值'
) comment = '大表，用于分页';

-- 6s442ms
select count(*)
from t_big_table;

select *
from t_big_table
order by id desc
limit 1;

insert into t_big_table
values (10000000, 'ad59c98a-cb29-468a-ac3b-859a98337d30');

-- 主键连续的分页查询
-- 141ms
select *
from t_big_table
limit 100,10;

-- 86ms
select *
from t_big_table
limit 10000,10;

-- 882ms
select *
from t_big_table
limit 1000000,10;

-- 4s899ms
select *
from t_big_table
limit 5000000,10;

-- 4s689ms
select *
from t_big_table
limit 9000000,10;

-- 210ms
select *
from t_big_table
where id >= 9000000
limit 10;

-- 133ms
select *
from t_big_table
where id >= 9000000
  and id <= 9000010;

-- 主键不连续的分页查询
-- 5s305ms
select bt.*
from t_big_table bt
         inner join (select id from t_big_table limit 9000000, 10) tmp
                    on bt.id = tmp.id;
-- 11s152ms
select bt.*
from t_big_table bt
         join (select id from t_big_table limit 9000000, 10) tmp
              on bt.id = tmp.id;

-- 业务限定不可以查询早期数据
-- 行级排他锁，记录上锁之后，只可以查看该条记录
-- select显式带上for update可以上排他锁
begin;
update t_big_table set val = 'ACD' where id <= 10;
commit ;

select * from t_big_table where id <= 10;
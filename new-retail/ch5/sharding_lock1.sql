-- 共享锁一般不常用，且用于事务隔离级别为串行化时
begin;
select * from t_big_table where id <= 10 lock in share mode ;
commit ;
rollback ;

select * from t_big_table where id <= 10;
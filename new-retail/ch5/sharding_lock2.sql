begin;
update t_big_table set val = 'ABC' where id <= 10;
rollback ;

select * from t_big_table where id <= 10;
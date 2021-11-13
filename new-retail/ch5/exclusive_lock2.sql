begin;
update t_big_table set val = 'AEF' where id <= 10;

select * from t_big_table where id <= 10;
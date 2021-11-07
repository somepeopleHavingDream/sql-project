# 1,PRIMARY,t_emp,range,PRIMARY,PRIMARY,4,,13,Using where
# 2,SUBQUERY,t_emp,const,PRIMARY,PRIMARY,4,const,1,""

# 7566,JONES
# 7698,BLAKE
# 7782,CLARK
# 7788,SCOTT
# 7839,KING
# 7902,FORD
explain select empno, ename
from t_emp
where sal > (
    select sal
    from t_emp
    where empno = 7499
    )
and empno != 7499;

# 7566,JONES
# 7698,BLAKE
# 7782,CLARK
# 7788,SCOTT
# 7839,KING
# 7902,FORD

# 1,SIMPLE,e,range,PRIMARY,PRIMARY,4,,13,Using where
explain select e.empno, e.ename
from t_emp e
join (select sal from t_emp where empno = 7499) t
on e.sal > t.sal and e.empno != 7499;

select * from t_emp;

select e.ename, d.dname, d.deptno
from t_emp e
left join t_dept d on e.deptno = d.deptno
and d.deptno = 10;

select e.ename, d.dname, d.deptno
from t_emp e
         left join t_dept d on e.deptno = d.deptno
    where d.deptno = 10;
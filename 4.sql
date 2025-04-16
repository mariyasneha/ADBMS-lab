set serveroutput on;
declare
	n number;
	i number:=1;
	tot number:=0;
	cursor emp is select emp_salary from employee_45;
	cemp emp%rowtype;
begin
	n:=&n;
	open emp;
	while(i<=n)
	loop
		fetch emp into cemp;
		tot:=tot+cemp.emp_salary;
		i:=i+1;
	end loop;
	dbms_output.put_line('Total salary of '||n||' is '||tot);
	close emp;
end;
/

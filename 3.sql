set serveroutput on;
declare
	v_emp employee_45%rowtype;
begin
	select * into v_emp from employee_45 where emp_id=2;
	dbms_output.put_line('****************************');
	dbms_output.put_line('Employee name:'||v_emp.emp_name);
	dbms_output.put_line('Joining date:'||v_emp.emp_join_date);
	dbms_output.put_line('Salary:'||v_emp.emp_salary);
	dbms_output.put_line('*****************************');
end;
/

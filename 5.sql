accept v_id prompt 'Enter employee id to search:';
declare
	v_emp employee_45%rowtype;
	v_id number;
begin
	v_id:=&v_id;
	select * into v_emp from employee_45 where emp_id=v_id;
	dbms_output.put_line('******************');
	dbms_output.put_line('Name: '||v_emp.emp_name);
	dbms_output.put_line('Join Date: '||v_emp.emp_join_date);
	dbms_output.put_line('Salary: '||v_emp.emp_salary);
	dbms_output.put_line('******************');
	exception
		when no_data_found then
		dbms_output.put_line('There is no employee with id '||v_id);
end;
/

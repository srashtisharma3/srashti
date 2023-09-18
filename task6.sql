
begin tran
try
begin
	delete from tblemployee where emp_id= 4
	--	update tblemployee set emp_fname = 'habu' where emp_id= 4
commit
end

begin catch
	rollback
end catch

select * from tblemployee where emp_id = 4

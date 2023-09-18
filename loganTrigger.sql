use mydatabase;

select * from sys.dm_exec_sessions;

select is_user_process, original_login_name, * from sys.dm_exec_sessions order by login_name;

create trigger trgchecklogin
on all server
for logon
as
begin
	declare @login varchar(100)
	set @login = ORIGINAL_LOGIN()
	if(select count(*) from sys.dm_exec_sessions where is_user_process = 1 and original_login_name = @login) > 3
	begin
		print 'No allowed' + @login;
		rollback;
	end
end

select count(*) from sys.dm_exec_sessions where is_user_process = 1;
use mydatabase;

create table tblusers ( us_id int primary key identity(1, 1), 
us_name varchar(20) not null, us_salary int not null, us_address varchar(50) default 'jaipur'
)

insert into tblusers (us_name, us_salary, us_address)
 values ('Sem', 80000, 'kota'), ('simmy', 90000, 'ajmer'), ('kinnu', 50000, 'jaipur' ), ('shivi', 60000, 'delhi');

select * from tblusers;

-- 1. Static cursor

set nocount on
	declare @id int, @name varchar(20), @salary int
	declare cur_users cursor
	static for 
		select us_id, us_name, us_salary from tblusers
		open cur_users
			if @@CURSOR_ROWS > 0
				begin
					fetch next from cur_users into @id, @name, @salary
					while @@FETCH_STATUS = 0
						begin
							print 'ID: ' + convert (varchar(20), @id) + ', Name: ' + @name + ', Salary: ' + convert (varchar(20), @salary)
							fetch next from cur_users into @id, @name, @salary
						end
				end
		close cur_users
	deallocate cur_users
set nocount off


-- 2. Dynamic cursor

set nocount on
	declare @id int, @name varchar(20)
	declare dynamic_cur_users cursor
	dynamic for 
		select us_id, us_name from tblusers order by us_name
		open dynamic_cur_users
			if @@CURSOR_ROWS > 0
				begin
					fetch next from dynamic_cur_users into @id, @name
					while @@FETCH_STATUS = 0
						begin
							if @name ='simmy'
								update tblusers set us_salary = 95000 where current of dynamic_cur_users
								-- DELETE tblusers where current of dynamic_cur_users
							fetch next from dynamic_cur_users into @id, @name
						end
				end
		close dynamic_cur_users
	deallocate dynamic_cur_users
set nocount off


-- 3. Forward only cursor

set nocount on
	declare @id int, @name varchar(20)
	declare forward_cur_users cursor
	forward_only for 
		select us_id, us_name from tblusers order by us_name
		open forward_cur_users
			if @@CURSOR_ROWS > 0
				begin
					fetch next from forward_cur_users into @id, @name
					while @@FETCH_STATUS = 0
						begin
							if @name ='simmy'
								update tblusers set us_salary = 100000 where current of forward_cur_users
								-- DELETE tblusers where current of forward_cur_users
							fetch next from forward_cur_users into @id, @name
						end
				end	
		close forward_cur_users
	deallocate forward_cur_users
set nocount off


-- 4. Keyset cursor

set nocount on
	declare @id int, @name varchar(20)
	declare keyset_cur_users cursor
	keyset for 
		select us_id, us_name from tblusers order by us_name
		open keyset_cur_users
			if @@CURSOR_ROWS > 0
				begin
					fetch next from keyset_cur_users into @id, @name
					while @@FETCH_STATUS = 0
						begin
							if @name ='simmy'
								update tblusers set us_salary = 150000 where current of keyset_cur_users
								-- DELETE tblusers where current of keyset_cur_users
							fetch next from keyset_cur_users into @id, @name
						end
				end	
		close keyset_cur_users
	deallocate keyset_cur_users
set nocount off

select * from tblusers;

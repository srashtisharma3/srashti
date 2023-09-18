create table tblActivityTrack(
act_id int identity(101,2) primary key,
act_name varchar(20) not null,
act_desc varchar(200),
act_date datetime
);

select * from tblActivityTrack

insert into tblActivityTrack (act_name, act_desc, act_date) values ('INSERT', '', GETDATE()) 
insert into tblActivityTrack (act_name, act_desc, act_date) values ('UPDATE', '', GETDATE()) 
insert into tblActivityTrack (act_name, act_desc, act_date) values ('DELETE', '', GETDATE()) 


-- INSERT action
alter trigger trgInsertClient 
on tblClient
for INSERT 
AS
begin
	declare @cl_id int
	select @cl_id  = cl_id from inserted
	insert into tblActivityTrack (act_name, act_desc, act_date) values ('INSERT', cast(@cl_id as varchar(20)), GETDATE()) 
end

-- DELETE action

create trigger trgDeleteClient 
on tblClient
for DELETE 
AS
begin
	declare @cl_id int
	select @cl_id  = cl_id from deleted
		insert into tblActivityTrack (act_name, act_desc, act_date) values ('DELETE', cast(@cl_id as varchar(20)), GETDATE()) 
end

delete from tblClient where cl_id = 22

-- UPDATE action

alter trigger trgUpdateClient 
on tblClient
for UPDATE 
AS
begin
	declare @cl_id int
	select @cl_id  = cl_id from inserted
		insert into tblActivityTrack (act_name, act_desc, act_date) values ('UPDATE', cast(@cl_id as varchar(20)), GETDATE()) 
end

update tblClient set cl_name = 'jio'  where cl_id = 20

select * from tblClient
select * from tblActivityTrack

-- to get current datetime
select getdate()

insert into tblClient (cl_name, cl_city, cl_code)
values('reliance', 'mp', 99)



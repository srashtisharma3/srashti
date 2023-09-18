-- to check column data type : alt+f1
-- comment : atrl+k+c
-- uncomment : atrl+k+u

use mydatabase

alter procedure [dbo].[usp_empManagement]
(
	@action_type varchar(20), 
	@emp_id int = 0,
	@emp_fname varchar(50) = default,
	@emp_lname varchar(50) = default,
	@emp_dob datetime = null, 
	@emp_mob varchar(20) = default, 
	@emp_des_id int = null, 
	@emp_status tinyint = null,
	@ret_msg varchar(50) output
)
AS
begin
	if(@action_type = 'select_emp')
	begin
	select * from tblemployee order by emp_fname asc
	end

	if(@action_type = 'select_empById')
	begin
	select * from tblemployee where emp_id=@emp_id
	end

	if(@action_type = 'insert')
	begin
	insert into tblemployee ( emp_fname, emp_lname, emp_dob, emp_mob, emp_des_id, emp_status) 
	values( @emp_fname, @emp_lname, @emp_dob, @emp_mob, @emp_des_id, @emp_status) 
	select @ret_msg = @emp_fname + ' Added successfully! '
	return 0
	end

	if(@action_type = 'update_name')
	begin
	update tblemployee set emp_fname = @emp_fname where emp_id=@emp_id
	end

end;

exec usp_empManagement @action_type ='select_emp'

--exec usp_empManagement @action_type ='select_empById', @emp_id = 5

--exec usp_empManagement @action_type ='insert', @emp_fname = 'sem', @emp_lname ='sh', 
--@emp_dob='2000-12-12', @emp_mob='6549845612', @emp_des_id=2, @emp_status=0

-- exec usp_empManagement @action_type ='update_name', @emp_id = 5, @emp_fname = 'tod'


declare @ret_msgg varchar(50) ;
exec usp_empManagement @action_type ='insert', @emp_fname = 'kinnu', @emp_lname ='sh', 
@emp_dob='2012-12-12', @emp_mob='8558265612', @emp_des_id=1, @emp_status=1, @ret_msg = @ret_msgg output;

select @ret_msgg;

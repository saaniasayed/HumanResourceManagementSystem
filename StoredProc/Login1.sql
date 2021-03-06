USE [HumanResource]
GO
/****** Object:  StoredProcedure [dbo].[SPAddEmployee]    Script Date: 05/23/2014 06:35:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SPAddEmployee](@empid int, @efname nchar(50),@elname nchar(50),@cname nchar(50),@doj datetime,@dob datetime,
@gen nchar(10),@addr nvarchar(50),@city nchar(50), @state nchar(50),@phne numeric(18,0),@email nvarchar(50),@phot image,@role int,@pass nvarchar(50))	
As
begin
begin try
begin tran
insert into dbo.AddEmployee(EmpID,EFname,ELname,Cname,DOJ,DOB,Gen,Addr,City,State,Phone,Email,Photo,RoleID)Values (@empid,@efname,@elname,@cname,@doj,@dob,
@gen,@addr,@city,@state,@phne,@email,@phot,@role)
declare @EmpyID int	
set @EmpyID=@empid
insert dbo.Login values(@EmpyID,@pass,@email)
commit tran
end try
begin catch
declare @ex int
set @ex=ERROR_NUMBER()
raiserror(@ex,16,1)
rollback tran

end catch
end
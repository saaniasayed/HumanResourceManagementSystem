USE [HumanResource]
GO
/****** Object:  StoredProcedure [dbo].[SPSearchEmployee]    Script Date: 06/11/2014 09:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[SPSearchEmployee](@empid int)
as
select EmpID,EFname,Cname,DOJ,City,State,Email from AddEmployee where EmpID=@empid
--execute [SPSearchEmployee] 5454
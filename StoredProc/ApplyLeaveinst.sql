USE [HumanResource]
GO
/****** Object:  StoredProcedure [dbo].[SPApplyLeave]    Script Date: 05/23/2014 06:00:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SPApplyLeave](@EmpName nchar(20),@FromDate datetime, @ToDate datetime, @NoofDays int, @ContactNo  numeric(18,0),@Reason nvarchar(max),@EmpID int)
as 
insert into ApplyLeave(EmpName,FromDate,ToDate,NoofDays,ContctNo,Reason,EmpID) values (@EmpName,@FromDate,@ToDate,@NoofDays,@ContactNo,@Reason,@EmpID)
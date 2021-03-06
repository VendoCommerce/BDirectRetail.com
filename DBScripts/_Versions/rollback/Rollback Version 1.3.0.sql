USE [CSBaseECommerce]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*

Rollback
CS Base Cart Changes - Version 1.3.0

*/

/************************************************************************************************************/
/************************************************************************************************************/
/* Create [ShippingCharges] */
/************************************************************************************************************/
/************************************************************************************************************/

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'U' AND [name] = 'ShippingCharges') BEGIN
	DROP TABLE [dbo].[ShippingCharges]
END

GO

/************************************************************************************************************/
/************************************************************************************************************/
/* pr_remove_shipping_charge */
/************************************************************************************************************/
/************************************************************************************************************/

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_remove_shipping_charge') BEGIN
	DROP PROCEDURE [dbo].[pr_remove_shipping_charge]
END

GO

/************************************************************************************************************/
/************************************************************************************************************/
/* 
Order table changes
*/
/************************************************************************************************************/
/************************************************************************************************************/
ALTER TABLE dbo.[Order]
DROP COLUMN [Total] 

GO

if exists(select * from sys.columns 
            where Name = 'AdditionalShippingCharge' and Object_ID = Object_ID('Order'))    
begin
	ALTER TABLE dbo.[Order]
	DROP COLUMN [AdditionalShippingCharge] 
end

GO

if exists(select * from sys.columns 
            where Name = 'AdditionalShippingCharge' and Object_ID = Object_ID('OrderArchive'))    
begin
	ALTER TABLE dbo.[OrderArchive]
	DROP COLUMN [AdditionalShippingCharge] 
end

GO

-- Alter order table's Total column

ALTER TABLE dbo.[Order]
ADD [Total]  AS (((([SubTotal]+[ShippingCost])+[RushShippingCost])+[Tax])-[DiscountAmount]) PERSISTED

GO

/************************************************************************************************************/
/************************************************************************************************************/
/* Rollback procs */
/************************************************************************************************************/
/************************************************************************************************************/

DECLARE @Version varchar(10)
DECLARE @Script nvarchar(max)
DECLARE @SqlDrop nvarchar(max)
DECLARE @ObjectName nvarchar(500)
DECLARE @ObjectType nvarchar(2)

SET @Version = '1.3.0'

DECLARE ObjectsCursor CURSOR FOR SELECT Name, [Type], Script FROM dbo.[_BackupObjects]
	WHERE [PreVersion] = @Version
	AND [BackupObjectID] = 16
	ORDER BY [CreateDate]

OPEN ObjectsCursor
FETCH NEXT FROM ObjectsCursor INTO @ObjectName, @ObjectType, @Script
WHILE @@FETCH_STATUS = 0
BEGIN
	SET @SqlDrop = 'DROP PROCEDURE [dbo].[' + @ObjectName + ']'
		
	/* Drop if already exists */
	IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = @ObjectType AND [name] = @ObjectName) BEGIN	
		EXEC sp_executesql @SqlDrop		
	END

	EXEC sp_executesql @Script
	
	FETCH NEXT FROM ObjectsCursor INTO @ObjectName, @ObjectType, @Script
END

CLOSE ObjectsCursor
DEALLOCATE ObjectsCursor

/************************************************************************************************************/
/************************************************************************************************************/
/* 
Alter SitePref table to add CSCartVersion column
*/
/************************************************************************************************************/
/************************************************************************************************************/

if exists(select * from sys.columns 
            where Name = 'CSCartVersion' and Object_ID = Object_ID('SitePref'))    
begin
	ALTER TABLE dbo.[SitePref]
	DROP COLUMN [CSCartVersion] 
end

/*

End

*/
USE [CSBaseECommerce]
GO
/****** Object:  StoredProcedure [dbo].[pr_save_attribute_values]    Script Date: 12/28/2012 09:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_save_attribute_values') BEGIN
	DROP PROCEDURE [dbo].[pr_save_attribute_values]
END

GO

/*

Name: pr_save_attribute_values

Description: saves attribute values given xml block and object name.
 
History:
Date		User		Change
7/11/2012	jzaman		Creation
12/28/2012	jzaman		Added support for attribute delete

Example:
exec pr_save_attribute_values 'sku', 30, '<AttributeValues><title>This Sku<title><color>red</color></AttributeValues><DeleteAttributes><weight/><size/></DeleteAttributes>'
*/

CREATE PROCEDURE [dbo].[pr_save_attribute_values]
	@ObjectName nvarchar(50),
	@ObjectItemId int,
	@AttributeValuesXml xml
AS
BEGIN

	DECLARE @AttributesTable TABLE (AttributeName NVARCHAR(50), Value NVARCHAR(MAX))
	DECLARE @AttributeName NVARCHAR(50)
	DECLARE @AttributeValue NVARCHAR(MAX)
	DECLARE @OAVID INT
	DECLARE @DeleteAttributeXml XML

	-- Save attributes
	INSERT INTO @AttributesTable
	SELECT 
		x.n.value('fn:local-name(.)', 'nvarchar(50)'), 
		x.n.value('.', 'nvarchar(max)')
	FROM @AttributeValuesXml.nodes ('//AttributeValues/*') as x(n)

	DECLARE AttributeCursor CURSOR FOR SELECT AttributeName, Value FROM @AttributesTable
	OPEN AttributeCursor
	FETCH NEXT FROM AttributeCursor INTO @AttributeName, @AttributeValue
	WHILE @@FETCH_STATUS = 0
	BEGIN
		EXEC dbo.[pr_save_attribute_value] @ObjectName, @AttributeName, @ObjectItemId, @AttributeValue, @ObjectAttributeValueID = @OAVID OUTPUT
		
		FETCH NEXT FROM AttributeCursor INTO @AttributeName, @AttributeValue
	END

	CLOSE AttributeCursor
	DEALLOCATE AttributeCursor
	
	-- Delete attributes
	SET @DeleteAttributeXml = (SELECT @AttributeValuesXml.query ('//DeleteAttributes'))
	
	IF @DeleteAttributeXml IS NOT NULL	
	BEGIN
		EXEC dbo.[pr_remove_single_item_attribute_value] @ObjectName, @ObjectItemId, @DeleteAttributeXml
	END
	
END


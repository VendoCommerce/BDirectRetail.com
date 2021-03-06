USE [CSBaseECommerce]
GO
/****** Object:  StoredProcedure [dbo].[pr_get_attribute_objects]    Script Date: 01/02/2013 17:13:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/* Drop if already exists */
IF EXISTS (SELECT 1 FROM sys.objects WHERE [type] = 'P' AND [name] = 'pr_get_attribute_objects') BEGIN
	DROP PROCEDURE [dbo].[pr_get_attribute_objects]
END

GO

/*

Name: pr_get_attribute_objects

Description: Gets attribute's associations to objects.
 
History:
Date		User		Change
1/7/2013	jzaman		Creation

EX:
exec [pr_get_attribute_objects] 'title'

*/

CREATE PROCEDURE [dbo].[pr_get_attribute_objects]
	@AttributeName nvarchar(50)	
AS
BEGIN

SET NOCOUNT ON;
		
	SELECT 
		oa.ObjectAttributeId, o.ObjectId, a.AttributeId, oat.ObjectAttributeTypeId, oa.Description, oa.DisplayLabel
	FROM dbo.[ObjectAttributes] oa
	INNER JOIN dbo.[Objects] o
	ON oa.ObjectID = o.ObjectID
	INNER JOIN dbo.[Attributes] a
	ON oa.AttributeID = a.AttributeID
	INNER JOIN dbo.[ValueTypes] vt
	ON a.DefaultValueTypeID = vt.ValueTypeID
	INNER JOIN dbo.[ObjectAttributeTypes] oat
	ON oa.ObjectAttributeTypeID = oat.ObjectAttributeTypeID
	WHERE a.Name = @AttributeName
	ORDER BY a.Name
END

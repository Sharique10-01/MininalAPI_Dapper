/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
-- this pieces of code runs on the sqlserver not c#

IF Not Exists (SELECT 1 FROM dbo.[User])
BEGIN
    INSERT INTO dbo.[User] ( FirstName,LastName)
    VALUES ( 'Sharique' , 'Khan') ,
           ('Sumit' , 'Rai'),
           ('Kiran' ,'Matta');
END
GO

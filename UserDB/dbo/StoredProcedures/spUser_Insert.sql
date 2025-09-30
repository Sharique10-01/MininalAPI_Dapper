CREATE PROCEDURE [dbo].[spUser_Insert]
	@FirstName nVarchar(50) ,
	@LastName nVarchar(50)
AS
BEGIN
	Insert into dbo.[User]
	(FirstName , LastName)
	VALUES(@FirstName , @LastName);
END

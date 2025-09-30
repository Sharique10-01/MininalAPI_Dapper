CREATE PROCEDURE [dbo].[spUser_Update]
	@Id int,
	@FirstName nVarchar(50) ,
	@LastName nVarchar(50)
AS
BEGIN
	UPDATE dbo.[User]
	SET FirstName = @FirstName , LastName = @LastName
	WHERE Id = @Id;
END
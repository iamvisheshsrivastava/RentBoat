IF ( OBJECT_ID('SP_RentOutBoat',N'P') IS NOT NULL)
DROP PROC dbo.SP_RentOutBoat
go

CREATE PROCEDURE [dbo].[SP_RentOutBoat]          
@BoatNumber VARCHAR(200),          
@CustomerName VARCHAR(200) 

AS    
BEGIN  
SET NOCOUNT ON;
 BEGIN TRY      
     DECLARE @Message VARCHAR(200)
	 IF NOT EXISTS(SELECT [PKEY_BOATID] FROM [TABLE_BOAT] WHERE [PKEY_BOATID] = CAST(@BoatNumber AS BIGINT))
	 BEGIN
		  SET @Message = 'Boat with the ID: '+ @BoatNumber +' does not exist';
		  RETURN;
	 END

	 IF((SELECT IS_RENTED FROM [TABLE_BOAT] WHERE PKEY_BOATID = CAST(@BoatNumber AS BIGINT)) = 1)
	 BEGIN
		SET @Message = 'Boat is already Rented, Try after sometime.'
	 END

	 INSERT INTO TABLE_CUSTOMER(CUSTOMER_NAME, BOAT_ID)
	 SELECT @CustomerName, @BoatNumber

	 --UPDATE THE STATUS OF BOAT AS RENTED
	 UPDATE TABLE_BOAT
	 SET [IS_RENTED] = 1
	 WHERE [PKEY_BOATID] = @BoatNumber

    SET @Message = 'You Successfully rented the boat' 
   END TRY
   
BEGIN CATCH   	
SET @Message = 'Error in the Request.'  
END CATCH 

Select @Message AS [MESSAGE]

SET NOCOUNT OFF    
END



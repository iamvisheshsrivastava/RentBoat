IF ( OBJECT_ID('SP_AddNewBoatToInventory',N'P') IS NOT NULL)
DROP PROC dbo.SP_AddNewBoatToInventory
go

CREATE PROCEDURE [dbo].[SP_AddNewBoatToInventory]          
@BoatName VARCHAR(200) ,          
@HourlyRate VARCHAR(200) 

AS    
BEGIN  
SET NOCOUNT ON;
 BEGIN TRY      
     DECLARE @Message VARCHAR(200)
	 INSERT INTO TABLE_BOAT(BOAT_NAME, HOURLY_RATE,IS_RENTED)
	 SELECT @BoatName, CAST(@HourlyRate AS INT),0
 
    SET @Message = 'Boat added to the Inventory successfully with ID ' + CAST(SCOPE_IDENTITY() AS VARCHAR)  
   END TRY

BEGIN CATCH   	
SET @Message = 'Error'  
END CATCH 

Select @Message AS [MESSAGE]

SET NOCOUNT OFF    
END



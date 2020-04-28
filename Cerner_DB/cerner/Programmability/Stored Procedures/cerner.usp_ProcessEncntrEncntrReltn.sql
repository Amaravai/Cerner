

 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 04-APR-2020 
-- Description: Process the Insert and Updates for   [cerner].[ENCNTR_ENCNTR_RELTN]
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessEncntrEncntrReltn]
AS
BEGIN
     DECLARE @Rows int
	 DECLARE @InsertRows Int
	 DECLARE @UpdatedRows Int

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
    -- Update statements for procedure here
	Update Dest
	    SET [ENCNTR_ID] = Source.ENCNTR_ID
      ,[RELATED_ENCNTR_ID] = Source.RELATED_ENCNTR_ID
      ,[ENCNTR_RELTN_TYPE_CD] = Source.ENCNTR_RELTN_TYPE_CD
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX
      ,[UPDT_CNT] = Source.UPDT_CNT
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM
      ,[UPDT_ID] = Source.UPDT_ID
      ,[UPDT_TASK] = Source.UPDT_TASK
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[ENCNTR_ENCNTR_RELTN]  Dest
	INNER JOIN [stage].[ENCNTR_ENCNTR_RELTN] Source ON Source.[ENCNTR_ENCNTR_RELTN_ID]  = Dest.[ENCNTR_ENCNTR_RELTN_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[ENCNTR_ENCNTR_RELTN]
           ([ENCNTR_ENCNTR_RELTN_ID]
           ,[ENCNTR_ID]
           ,[RELATED_ENCNTR_ID]
           ,[ENCNTR_RELTN_TYPE_CD]
           ,[UPDT_APPLCTX]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[LAST_UTC_TS]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [ENCNTR_ENCNTR_RELTN_ID]
           ,[ENCNTR_ID]
           ,[RELATED_ENCNTR_ID]
           ,[ENCNTR_RELTN_TYPE_CD]
           ,[UPDT_APPLCTX]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[LAST_UTC_TS]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[ENCNTR_ENCNTR_RELTN] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[ENCNTR_ENCNTR_RELTN]  Dest with (nolock)
		                  where Dest.[ENCNTR_ENCNTR_RELTN_ID]  = Source.[ENCNTR_ENCNTR_RELTN_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('ENCNTR_ENCNTR_RELTN',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
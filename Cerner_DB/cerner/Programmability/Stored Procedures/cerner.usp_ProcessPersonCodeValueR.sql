
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for [cerner].[PERSON_CODE_VALUE_R] 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPersonCodeValueR]
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
	  SET [PERSON_ID] = Source.PERSON_ID
      ,[CODE_SET] = Source.CODE_SET
      ,[CODE_VALUE] = Source.CODE_VALUE
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[UPDT_CNT] = Source.UPDT_CNT
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM
      ,[UPDT_ID] = Source.UPDT_ID
      ,[UPDT_TASK] = Source.UPDT_TASK
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX
      ,[ACTIVE_IND] = Source.ACTIVE_IND
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PERSON_CODE_VALUE_R]  Dest
	INNER JOIN [stage].[PERSON_CODE_VALUE_R] Source ON Source.[PERSON_CODE_VALUE_R_ID] = Dest.[PERSON_CODE_VALUE_R_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PERSON_CODE_VALUE_R]
           ([PERSON_CODE_VALUE_R_ID]
           ,[PERSON_ID]
           ,[CODE_SET]
           ,[CODE_VALUE]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ACTIVE_STATUS_DT_TM]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PERSON_CODE_VALUE_R_ID]
           ,[PERSON_ID]
           ,[CODE_SET]
           ,[CODE_VALUE]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ACTIVE_STATUS_DT_TM]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PERSON_CODE_VALUE_R] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PERSON_CODE_VALUE_R]  Dest with (nolock)
		                  where Dest.[PERSON_CODE_VALUE_R_ID]  = Source.[PERSON_CODE_VALUE_R_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PERSON_CODE_VALUE_R',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
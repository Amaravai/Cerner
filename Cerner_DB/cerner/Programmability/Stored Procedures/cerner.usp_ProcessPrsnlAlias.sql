 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for [cerner].[PRSNL_ALIAS]
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPrsnlAlias]
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
      ,[UPDT_CNT] = Source.UPDT_CNT
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM
      ,[UPDT_ID] = Source.UPDT_ID
      ,[UPDT_TASK] = Source.UPDT_TASK
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX
      ,[ACTIVE_IND] = Source.ACTIVE_IND
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID
      ,[ALIAS_POOL_CD] = Source.ALIAS_POOL_CD
      ,[PRSNL_ALIAS_TYPE_CD] = Source.PRSNL_ALIAS_TYPE_CD
      ,[ALIAS] = Source.ALIAS 
      ,[PRSNL_ALIAS_SUB_TYPE_CD] = Source.PRSNL_ALIAS_SUB_TYPE_CD
      ,[CHECK_DIGIT] = Source.CHECK_DIGIT
      ,[CHECK_DIGIT_METHOD_CD] = Source.CHECK_DIGIT_METHOD_CD
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PRSNL_ALIAS]    Dest
	INNER JOIN [stage].[PRSNL_ALIAS]   Source ON Source.[PRSNL_ALIAS_ID] = Dest.[PRSNL_ALIAS_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PRSNL_ALIAS]  
           ([PRSNL_ALIAS_ID]
           ,[PERSON_ID]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ALIAS_POOL_CD]
           ,[PRSNL_ALIAS_TYPE_CD]
           ,[ALIAS]
           ,[PRSNL_ALIAS_SUB_TYPE_CD]
           ,[CHECK_DIGIT]
           ,[CHECK_DIGIT_METHOD_CD]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PRSNL_ALIAS_ID]
           ,[PERSON_ID]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ALIAS_POOL_CD]
           ,[PRSNL_ALIAS_TYPE_CD]
           ,[ALIAS]
           ,[PRSNL_ALIAS_SUB_TYPE_CD]
           ,[CHECK_DIGIT]
           ,[CHECK_DIGIT_METHOD_CD]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PRSNL_ALIAS]   Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PRSNL_ALIAS]    Dest with (nolock)
		                  where Dest.[PRSNL_ALIAS_ID]  = Source.[PRSNL_ALIAS_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PRSNL_ALIAS',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
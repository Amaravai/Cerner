

-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 04-APR-2020 
-- Description: Process the Insert and Updates for ENCNTR_ALIAS 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessEncntrAlias]
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
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD 
      ,[UPDT_CNT] = Source.UPDT_CNT 
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM 
      ,[UPDT_ID] = Source.UPDT_ID 
      ,[UPDT_TASK] = Source.UPDT_TASK 
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX 
      ,[ACTIVE_IND] = Source.ACTIVE_IND 
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD 
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID 
      ,[ALIAS_POOL_CD] = Source.ALIAS_POOL_CD 
      ,[ENCNTR_ALIAS_TYPE_CD] = Source.ENCNTR_ALIAS_TYPE_CD 
      ,[ALIAS] = Source.ALIAS 
      ,[ENCNTR_ALIAS_SUB_TYPE_CD] = Source.ENCNTR_ALIAS_SUB_TYPE_CD 
      ,[CHECK_DIGIT] = Source.CHECK_DIGIT 
      ,[CHECK_DIGIT_METHOD_CD] = Source.CHECK_DIGIT_METHOD_CD 
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM 
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM 
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD 
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM 
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID 
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM 
      ,[ASSIGN_AUTHORITY_SYS_CD] = Source.ASSIGN_AUTHORITY_SYS_CD 
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[INST_ID] = Source.INST_ID 
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[ENCNTR_ALIAS]  Dest
	INNER JOIN [stage].[ENCNTR_ALIAS] Source ON Source.[ENCNTR_ALIAS_ID] = Dest.[ENCNTR_ALIAS_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[ENCNTR_ALIAS]
           ([ENCNTR_ALIAS_ID]
           ,[ENCNTR_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ALIAS_POOL_CD]
           ,[ENCNTR_ALIAS_TYPE_CD]
           ,[ALIAS]
           ,[ENCNTR_ALIAS_SUB_TYPE_CD]
           ,[CHECK_DIGIT]
           ,[CHECK_DIGIT_METHOD_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[END_EFFECTIVE_DT_TM]
           ,[ASSIGN_AUTHORITY_SYS_CD]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [ENCNTR_ALIAS_ID]
           ,[ENCNTR_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[ALIAS_POOL_CD]
           ,[ENCNTR_ALIAS_TYPE_CD]
           ,[ALIAS]
           ,[ENCNTR_ALIAS_SUB_TYPE_CD]
           ,[CHECK_DIGIT]
           ,[CHECK_DIGIT_METHOD_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[END_EFFECTIVE_DT_TM]
           ,[ASSIGN_AUTHORITY_SYS_CD]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[ENCNTR_ALIAS] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[ENCNTR_ALIAS]  Dest with (nolock)
		                  where Dest.[ENCNTR_ALIAS_ID] = Source.[ENCNTR_ALIAS_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('ENCNTR_ALIAS',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
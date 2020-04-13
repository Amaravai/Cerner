

-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 04-APR-2020 
-- Description: Process the Insert and Updates for CodeValue 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessCodeValue]
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
	 SET    [CODE_SET] = Source.CODE_SET 
      ,[CDF_MEANING] = Source.CDF_MEANING 
      ,[DISPLAY] = Source.DISPLAY 
      ,[DISPLAY_KEY] = Source.DISPLAY_KEY 
      ,[DESCRIPTION] = Source.DESCRIPTION 
      ,[DEFINITION] = Source.DEFINITION 
      ,[COLLATION_SEQ] = Source.COLLATION_SEQ 
      ,[ACTIVE_TYPE_CD] = Source.ACTIVE_TYPE_CD 
      ,[UPDT_CNT] = Source.UPDT_CNT 
      ,[ACTIVE_DT_TM] = Source.ACTIVE_DT_TM 
      ,[INACTIVE_DT_TM] = Source.INACTIVE_DT_TM 
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM 
      ,[UPDT_ID] = Source.UPDT_ID 
      ,[UPDT_TASK] = Source.UPDT_TASK 
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX 
      ,[ACTIVE_IND] = Source.ACTIVE_IND 
      ,[BEGIN_EFFECTIVE_DT_TM] = Source.BEGIN_EFFECTIVE_DT_TM
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID 
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM 
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD 
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM 
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID 
      ,[CKI] = Source.CKI 
      ,[DISPLAY_KEY_NLS] = Source.DISPLAY_KEY_NLS 
      ,[CONCEPT_CKI] = Source.CONCEPT_CKI 
      ,[DISPLAY_KEY_A_NLS] = Source.DISPLAY_KEY_A_NLS 
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[CLU_SUBKEY1_FLAG] = Source.CLU_SUBKEY1_FLAG 
      ,[INST_ID] = Source.INST_ID 
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[CODE_VALUE] Dest
	INNER JOIN [stage].[CODE_VALUE] Source ON Source.[CODE_VALUE] = Dest.[CODE_VALUE]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[CODE_VALUE]
           ([CODE_VALUE]
           ,[CODE_SET]
           ,[CDF_MEANING]
           ,[DISPLAY]
           ,[DISPLAY_KEY]
           ,[DESCRIPTION]
           ,[DEFINITION]
           ,[COLLATION_SEQ]
           ,[ACTIVE_TYPE_CD]
           ,[UPDT_CNT]
           ,[ACTIVE_DT_TM]
           ,[INACTIVE_DT_TM]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[BEGIN_EFFECTIVE_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[END_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CKI]
           ,[DISPLAY_KEY_NLS]
           ,[CONCEPT_CKI]
           ,[DISPLAY_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[CLU_SUBKEY1_FLAG]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [CODE_VALUE]
           ,[CODE_SET]
           ,[CDF_MEANING]
           ,[DISPLAY]
           ,[DISPLAY_KEY]
           ,[DESCRIPTION]
           ,[DEFINITION]
           ,[COLLATION_SEQ]
           ,[ACTIVE_TYPE_CD]
           ,[UPDT_CNT]
           ,[ACTIVE_DT_TM]
           ,[INACTIVE_DT_TM]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[BEGIN_EFFECTIVE_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[END_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CKI]
           ,[DISPLAY_KEY_NLS]
           ,[CONCEPT_CKI]
           ,[DISPLAY_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[CLU_SUBKEY1_FLAG]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[CODE_VALUE] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[CODE_VALUE]  Dest with (nolock)
		                  where Dest.[CODE_VALUE] = Source.[CODE_VALUE] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('CODE_VALUE',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
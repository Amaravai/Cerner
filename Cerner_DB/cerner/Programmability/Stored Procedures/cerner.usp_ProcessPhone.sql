
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for [cerner].[PHONE]
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPhone]
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
	      SET [PARENT_ENTITY_NAME] = Source.PARENT_ENTITY_NAME
      ,[PARENT_ENTITY_ID] = Source.PARENT_ENTITY_ID
      ,[PHONE_TYPE_CD] = Source.PHONE_TYPE_CD
      ,[UPDT_CNT] = Source.UPDT_CNT
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM
      ,[UPDT_ID] = Source.UPDT_ID
      ,[UPDT_TASK] = Source.UPDT_TASK
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX
      ,[ACTIVE_IND] = Source.ACTIVE_IND
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID
      ,[PHONE_FORMAT_CD] = Source.PHONE_FORMAT_CD
      ,[PHONE_NUM] = Source.PHONE_NUM
      ,[PHONE_TYPE_SEQ] = Source.PHONE_TYPE_SEQ
      ,[DESCRIPTION] = Source.DESCRIPTION
      ,[CONTACT] = Source.CONTACT
      ,[CALL_INSTRUCTION] = Source.CALL_INSTRUCTION
      ,[MODEM_CAPABILITY_CD] = Source.MODEM_CAPABILITY_CD
      ,[EXTENSION] = Source.EXTENSION
      ,[PAGING_CODE] = Source.PAGING_CODE
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[BEG_EFFECTIVE_MM_DD] = Source.BEG_EFFECTIVE_MM_DD
      ,[END_EFFECTIVE_MM_DD] = Source.END_EFFECTIVE_MM_DD
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[OPERATION_HOURS] = Source.OPERATION_HOURS
      ,[LONG_TEXT_ID] = Source.LONG_TEXT_ID
      ,[CONTACT_METHOD_CD] = Source.CONTACT_METHOD_CD
      ,[SOURCE_IDENTIFIER] = Source.SOURCE_IDENTIFIER
      ,[PHONE_NUM_KEY] = Source.PHONE_NUM_KEY
      ,[PHONE_NUM_KEY_NLS] = Source.PHONE_NUM_KEY_NLS 
      ,[PHONE_NUM_KEY_A_NLS] = Source.PHONE_NUM_KEY_A_NLS 
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS
      ,[TEXTING_PERMISSION_CD] = Source.TEXTING_PERMISSION_CD
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PHONE]    Dest
	INNER JOIN [stage].[PHONE]   Source ON Source.[PHONE_ID] = Dest.[PHONE_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PHONE]  
           ([PHONE_ID]
           ,[PARENT_ENTITY_NAME]
           ,[PARENT_ENTITY_ID]
           ,[PHONE_TYPE_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[PHONE_FORMAT_CD]
           ,[PHONE_NUM]
           ,[PHONE_TYPE_SEQ]
           ,[DESCRIPTION]
           ,[CONTACT]
           ,[CALL_INSTRUCTION]
           ,[MODEM_CAPABILITY_CD]
           ,[EXTENSION]
           ,[PAGING_CODE]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[BEG_EFFECTIVE_MM_DD]
           ,[END_EFFECTIVE_MM_DD]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[OPERATION_HOURS]
           ,[LONG_TEXT_ID]
           ,[CONTACT_METHOD_CD]
           ,[SOURCE_IDENTIFIER]
           ,[PHONE_NUM_KEY]
           ,[PHONE_NUM_KEY_NLS]
           ,[PHONE_NUM_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[TEXTING_PERMISSION_CD]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PHONE_ID]
           ,[PARENT_ENTITY_NAME]
           ,[PARENT_ENTITY_ID]
           ,[PHONE_TYPE_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[PHONE_FORMAT_CD]
           ,[PHONE_NUM]
           ,[PHONE_TYPE_SEQ]
           ,[DESCRIPTION]
           ,[CONTACT]
           ,[CALL_INSTRUCTION]
           ,[MODEM_CAPABILITY_CD]
           ,[EXTENSION]
           ,[PAGING_CODE]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[BEG_EFFECTIVE_MM_DD]
           ,[END_EFFECTIVE_MM_DD]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[OPERATION_HOURS]
           ,[LONG_TEXT_ID]
           ,[CONTACT_METHOD_CD]
           ,[SOURCE_IDENTIFIER]
           ,[PHONE_NUM_KEY]
           ,[PHONE_NUM_KEY_NLS]
           ,[PHONE_NUM_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[TEXTING_PERMISSION_CD]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PHONE]   Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PHONE]    Dest with (nolock)
		                  where Dest.[PHONE_ID]  = Source.[PHONE_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PHONE',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
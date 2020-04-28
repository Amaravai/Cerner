
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for  [cerner].[PERSON_NAME]
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPersonName]
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
      ,[NAME_TYPE_CD] = Source.NAME_TYPE_CD
      ,[UPDT_CNT] = Source.UPDT_CNT
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM
      ,[UPDT_ID] = Source.UPDT_ID
      ,[UPDT_TASK] = Source.UPDT_TASK
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX
      ,[ACTIVE_IND] = Source.ACTIVE_IND
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[NAME_ORIGINAL] = Source.NAME_ORIGINAL
      ,[NAME_FORMAT_CD] = Source.NAME_FORMAT_CD
      ,[NAME_FULL] = Source.NAME_FULL
      ,[NAME_FIRST] = Source.NAME_FIRST
      ,[NAME_MIDDLE] = Source.NAME_MIDDLE
      ,[NAME_LAST] = Source.NAME_LAST
      ,[NAME_DEGREE] = Source.NAME_DEGREE
      ,[NAME_TITLE] = Source.NAME_TITLE
      ,[NAME_PREFIX] = Source.NAME_PREFIX
      ,[NAME_SUFFIX] = Source.NAME_SUFFIX
      ,[NAME_INITIALS] = Source.NAME_INITIALS
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[NAME_FIRST_KEY] = Source.NAME_FIRST_KEY
      ,[NAME_LAST_KEY] = Source.NAME_LAST_KEY
      ,[NAME_MIDDLE_KEY] = Source.NAME_MIDDLE_KEY
      ,[NAME_FIRST_KEY_NLS] = Source.NAME_FIRST_KEY_NLS
      ,[NAME_LAST_KEY_NLS] = Source.NAME_LAST_KEY_NLS
      ,[NAME_MIDDLE_KEY_NLS] = Source.NAME_MIDDLE_KEY_NLS
      ,[SOURCE_IDENTIFIER] = Source.SOURCE_IDENTIFIER
      ,[NAME_TYPE_SEQ] = Source.NAME_TYPE_SEQ
      ,[NAME_FIRST_KEY_A_NLS] = Source.NAME_FIRST_KEY_A_NLS 
      ,[NAME_LAST_KEY_A_NLS] = Source.NAME_LAST_KEY_A_NLS 
      ,[NAME_MIDDLE_KEY_A_NLS] = Source.NAME_MIDDLE_KEY_A_NLS 
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PERSON_NAME]  Dest
	INNER JOIN [stage].[PERSON_NAME] Source ON Source.[PERSON_NAME_ID]  = Dest.[PERSON_NAME_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PERSON_NAME]
           ([PERSON_NAME_ID]
           ,[PERSON_ID]
           ,[NAME_TYPE_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[NAME_ORIGINAL]
           ,[NAME_FORMAT_CD]
           ,[NAME_FULL]
           ,[NAME_FIRST]
           ,[NAME_MIDDLE]
           ,[NAME_LAST]
           ,[NAME_DEGREE]
           ,[NAME_TITLE]
           ,[NAME_PREFIX]
           ,[NAME_SUFFIX]
           ,[NAME_INITIALS]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[NAME_FIRST_KEY]
           ,[NAME_LAST_KEY]
           ,[NAME_MIDDLE_KEY]
           ,[NAME_FIRST_KEY_NLS]
           ,[NAME_LAST_KEY_NLS]
           ,[NAME_MIDDLE_KEY_NLS]
           ,[SOURCE_IDENTIFIER]
           ,[NAME_TYPE_SEQ]
           ,[NAME_FIRST_KEY_A_NLS]
           ,[NAME_LAST_KEY_A_NLS]
           ,[NAME_MIDDLE_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PERSON_NAME_ID]
           ,[PERSON_ID]
           ,[NAME_TYPE_CD]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[NAME_ORIGINAL]
           ,[NAME_FORMAT_CD]
           ,[NAME_FULL]
           ,[NAME_FIRST]
           ,[NAME_MIDDLE]
           ,[NAME_LAST]
           ,[NAME_DEGREE]
           ,[NAME_TITLE]
           ,[NAME_PREFIX]
           ,[NAME_SUFFIX]
           ,[NAME_INITIALS]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[NAME_FIRST_KEY]
           ,[NAME_LAST_KEY]
           ,[NAME_MIDDLE_KEY]
           ,[NAME_FIRST_KEY_NLS]
           ,[NAME_LAST_KEY_NLS]
           ,[NAME_MIDDLE_KEY_NLS]
           ,[SOURCE_IDENTIFIER]
           ,[NAME_TYPE_SEQ]
           ,[NAME_FIRST_KEY_A_NLS]
           ,[NAME_LAST_KEY_A_NLS]
           ,[NAME_MIDDLE_KEY_A_NLS]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PERSON_NAME] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PERSON_NAME]  Dest with (nolock)
		                  where Dest.[PERSON_NAME_ID]  = Source.[PERSON_NAME_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PERSON_NAME',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
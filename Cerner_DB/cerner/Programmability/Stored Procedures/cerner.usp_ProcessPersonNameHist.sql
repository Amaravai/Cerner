
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for  [cerner].[PERSON_NAME_HIST]
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPersonNameHist]
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
	  SET [PM_HIST_TRACKING_ID] = Source.PM_HIST_TRACKING_ID
      ,[TRANSACTION_DT_TM] = Source.TRANSACTION_DT_TM
      ,[CHANGE_BIT] = Source.CHANGE_BIT
      ,[TRACKING_BIT] = Source.TRACKING_BIT
      ,[PERSON_ID] = Source.PERSON_ID
      ,[PERSON_NAME_ID] = Source.PERSON_NAME_ID
      ,[NAME_TYPE_CD] = Source.NAME_TYPE_CD
      ,[NAME_FIRST] = Source.NAME_FIRST
      ,[NAME_FIRST_KEY] = Source.NAME_FIRST_KEY
      ,[NAME_FIRST_KEY_NLS] = Source.NAME_FIRST_KEY_NLS
      ,[NAME_LAST] = Source.NAME_LAST
      ,[NAME_LAST_KEY] = Source.NAME_LAST_KEY
      ,[NAME_LAST_KEY_NLS] = Source.NAME_LAST_KEY_NLS
      ,[NAME_MIDDLE] = Source.NAME_MIDDLE
      ,[NAME_MIDDLE_KEY] = Source.NAME_MIDDLE_KEY
      ,[NAME_MIDDLE_KEY_NLS] = Source.NAME_MIDDLE_KEY_NLS
      ,[NAME_FULL] = Source.NAME_FULL
      ,[NAME_DEGREE] = Source.NAME_DEGREE
      ,[NAME_INITIALS] = Source.NAME_INITIALS
      ,[NAME_PREFIX] = Source.NAME_PREFIX
      ,[NAME_SUFFIX] = Source.NAME_SUFFIX
      ,[NAME_TITLE] = Source.NAME_TITLE
      ,[UPDT_CNT] = Source.UPDT_CNT
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM
      ,[UPDT_ID] = Source.UPDT_ID
      ,[UPDT_TASK] = Source.UPDT_TASK
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX
      ,[ACTIVE_IND] = Source.ACTIVE_IND
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID
      ,[NAME_MIDDLE_KEY_A_NLS] = Source.NAME_MIDDLE_KEY_A_NLS
      ,[NAME_LAST_KEY_A_NLS] = Source.NAME_LAST_KEY_A_NLS
      ,[NAME_FIRST_KEY_A_NLS] = Source.NAME_FIRST_KEY_A_NLS
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[NAME_TYPE_SEQ] = Source.NAME_TYPE_SEQ
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[SOURCE_IDENTIFIER] = Source.SOURCE_IDENTIFIER 
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PERSON_NAME_HIST]  Dest
	INNER JOIN [stage].[PERSON_NAME_HIST] Source ON Source.[PERSON_NAME_HIST_ID] = Dest.[PERSON_NAME_HIST_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PERSON_NAME_HIST]
           ([PERSON_NAME_HIST_ID]
           ,[PM_HIST_TRACKING_ID]
           ,[TRANSACTION_DT_TM]
           ,[CHANGE_BIT]
           ,[TRACKING_BIT]
           ,[PERSON_ID]
           ,[PERSON_NAME_ID]
           ,[NAME_TYPE_CD]
           ,[NAME_FIRST]
           ,[NAME_FIRST_KEY]
           ,[NAME_FIRST_KEY_NLS]
           ,[NAME_LAST]
           ,[NAME_LAST_KEY]
           ,[NAME_LAST_KEY_NLS]
           ,[NAME_MIDDLE]
           ,[NAME_MIDDLE_KEY]
           ,[NAME_MIDDLE_KEY_NLS]
           ,[NAME_FULL]
           ,[NAME_DEGREE]
           ,[NAME_INITIALS]
           ,[NAME_PREFIX]
           ,[NAME_SUFFIX]
           ,[NAME_TITLE]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[NAME_MIDDLE_KEY_A_NLS]
           ,[NAME_LAST_KEY_A_NLS]
           ,[NAME_FIRST_KEY_A_NLS]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[NAME_TYPE_SEQ]
           ,[END_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[SOURCE_IDENTIFIER]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PERSON_NAME_HIST_ID]
           ,[PM_HIST_TRACKING_ID]
           ,[TRANSACTION_DT_TM]
           ,[CHANGE_BIT]
           ,[TRACKING_BIT]
           ,[PERSON_ID]
           ,[PERSON_NAME_ID]
           ,[NAME_TYPE_CD]
           ,[NAME_FIRST]
           ,[NAME_FIRST_KEY]
           ,[NAME_FIRST_KEY_NLS]
           ,[NAME_LAST]
           ,[NAME_LAST_KEY]
           ,[NAME_LAST_KEY_NLS]
           ,[NAME_MIDDLE]
           ,[NAME_MIDDLE_KEY]
           ,[NAME_MIDDLE_KEY_NLS]
           ,[NAME_FULL]
           ,[NAME_DEGREE]
           ,[NAME_INITIALS]
           ,[NAME_PREFIX]
           ,[NAME_SUFFIX]
           ,[NAME_TITLE]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[NAME_MIDDLE_KEY_A_NLS]
           ,[NAME_LAST_KEY_A_NLS]
           ,[NAME_FIRST_KEY_A_NLS]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[NAME_TYPE_SEQ]
           ,[END_EFFECTIVE_DT_TM]
           ,[DATA_STATUS_CD]
           ,[SOURCE_IDENTIFIER]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PERSON_NAME_HIST] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PERSON_NAME_HIST]  Dest with (nolock)
		                  where Dest.[PERSON_NAME_HIST_ID]  = Source.[PERSON_NAME_HIST_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PERSON_NAME_HIST',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
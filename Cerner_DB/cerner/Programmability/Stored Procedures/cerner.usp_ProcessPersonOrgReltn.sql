
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for [cerner].[PERSON_ORG_RELTN]  
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPersonOrgReltn]
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
      ,[PERSON_ORG_RELTN_CD] = Source.PERSON_ORG_RELTN_CD
      ,[ORGANIZATION_ID] = Source.ORGANIZATION_ID
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
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[SOURCE_IDENTIFIER] = Source.SOURCE_IDENTIFIER
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[PERSON_ORG_NBR] = Source.PERSON_ORG_NBR
      ,[PERSON_ORG_ALIAS] = Source.PERSON_ORG_ALIAS
      ,[EMPL_TYPE_CD] = Source.EMPL_TYPE_CD
      ,[EMPL_STATUS_CD] = Source.EMPL_STATUS_CD
      ,[EMPL_OCCUPATION_TEXT] = Source.EMPL_OCCUPATION_TEXT
      ,[EMPL_OCCUPATION_CD] = Source.EMPL_OCCUPATION_CD
      ,[EMPL_TITLE] = Source.EMPL_TITLE
      ,[EMPL_POSITION] = Source.EMPL_POSITION
      ,[EMPL_CONTACT] = Source.EMPL_CONTACT
      ,[EMPL_CONTACT_TITLE] = Source.EMPL_CONTACT_TITLE
      ,[FREE_TEXT_IND] = Source.FREE_TEXT_IND
      ,[FT_ORG_NAME] = Source.FT_ORG_NAME
      ,[PRIORITY_SEQ] = Source.PRIORITY_SEQ
      ,[INTERNAL_SEQ] = Source.INTERNAL_SEQ
      ,[EMPL_RETIRE_DT_TM] = Source.EMPL_RETIRE_DT_TM
      ,[EMPL_HIRE_DT_TM] = Source.EMPL_HIRE_DT_TM
      ,[EMPL_TERM_DT_TM] = Source.EMPL_TERM_DT_TM
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[EMPL_TITLE_CD] = Source.EMPL_TITLE_CD
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PERSON_ORG_RELTN]    Dest
	INNER JOIN [stage].[PERSON_ORG_RELTN]   Source ON Source.[PERSON_ORG_RELTN_ID] = Dest.[PERSON_ORG_RELTN_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PERSON_ORG_RELTN]  
           ([PERSON_ORG_RELTN_ID]
           ,[PERSON_ID]
           ,[PERSON_ORG_RELTN_CD]
           ,[ORGANIZATION_ID]
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
           ,[DATA_STATUS_CD]
           ,[SOURCE_IDENTIFIER]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[PERSON_ORG_NBR]
           ,[PERSON_ORG_ALIAS]
           ,[EMPL_TYPE_CD]
           ,[EMPL_STATUS_CD]
           ,[EMPL_OCCUPATION_TEXT]
           ,[EMPL_OCCUPATION_CD]
           ,[EMPL_TITLE]
           ,[EMPL_POSITION]
           ,[EMPL_CONTACT]
           ,[EMPL_CONTACT_TITLE]
           ,[FREE_TEXT_IND]
           ,[FT_ORG_NAME]
           ,[PRIORITY_SEQ]
           ,[INTERNAL_SEQ]
           ,[EMPL_RETIRE_DT_TM]
           ,[EMPL_HIRE_DT_TM]
           ,[EMPL_TERM_DT_TM]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LAST_UTC_TS]
           ,[EMPL_TITLE_CD]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PERSON_ORG_RELTN_ID]
           ,[PERSON_ID]
           ,[PERSON_ORG_RELTN_CD]
           ,[ORGANIZATION_ID]
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
           ,[DATA_STATUS_CD]
           ,[SOURCE_IDENTIFIER]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[PERSON_ORG_NBR]
           ,[PERSON_ORG_ALIAS]
           ,[EMPL_TYPE_CD]
           ,[EMPL_STATUS_CD]
           ,[EMPL_OCCUPATION_TEXT]
           ,[EMPL_OCCUPATION_CD]
           ,[EMPL_TITLE]
           ,[EMPL_POSITION]
           ,[EMPL_CONTACT]
           ,[EMPL_CONTACT_TITLE]
           ,[FREE_TEXT_IND]
           ,[FT_ORG_NAME]
           ,[PRIORITY_SEQ]
           ,[INTERNAL_SEQ]
           ,[EMPL_RETIRE_DT_TM]
           ,[EMPL_HIRE_DT_TM]
           ,[EMPL_TERM_DT_TM]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LAST_UTC_TS]
           ,[EMPL_TITLE_CD]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PERSON_ORG_RELTN]   Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PERSON_ORG_RELTN]    Dest with (nolock)
		                  where Dest.[PERSON_ORG_RELTN_ID]  = Source.[PERSON_ORG_RELTN_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PERSON_ORG_RELTN',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
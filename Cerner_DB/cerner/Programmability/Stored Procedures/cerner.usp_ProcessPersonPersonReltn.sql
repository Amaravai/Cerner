
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for [cerner].[PERSON_PERSON_RELTN] 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPersonPersonReltn]
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
	  SET [PERSON_RELTN_TYPE_CD] = Source.PERSON_RELTN_TYPE_CD
      ,[PERSON_ID] = Source.PERSON_ID
      ,[PERSON_RELTN_CD] = Source.PERSON_RELTN_CD
      ,[RELATED_PERSON_RELTN_CD] = Source.RELATED_PERSON_RELTN_CD
      ,[RELATED_PERSON_ID] = Source.RELATED_PERSON_ID
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
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[CONTACT_ROLE_CD] = Source.CONTACT_ROLE_CD
      ,[GENETIC_RELATIONSHIP_IND] = Source.GENETIC_RELATIONSHIP_IND
      ,[LIVING_WITH_IND] = Source.LIVING_WITH_IND
      ,[VISITATION_ALLOWED_CD] = Source.VISITATION_ALLOWED_CD
      ,[PRIORITY_SEQ] = Source.PRIORITY_SEQ
      ,[FREE_TEXT_CD] = Source.FREE_TEXT_CD
      ,[FT_REL_PERSON_NAME] = Source.FT_REL_PERSON_NAME 
      ,[INTERNAL_SEQ] = Source.INTERNAL_SEQ
      ,[COPY_CORRESPONDENCE_CD] = Source.COPY_CORRESPONDENCE_CD
      ,[FAMILY_RELTN_SUB_TYPE_CD] = Source.FAMILY_RELTN_SUB_TYPE_CD
      ,[DEFAULT_RELTN_IND] = Source.DEFAULT_RELTN_IND
      ,[SOURCE_IDENTIFIER] = Source.SOURCE_IDENTIFIER 
      ,[RELATION_SEQ] = Source.RELATION_SEQ
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PERSON_PERSON_RELTN]    Dest
	INNER JOIN [stage].[PERSON_PERSON_RELTN]   Source ON Source.[PERSON_PERSON_RELTN_ID] = Dest.[PERSON_PERSON_RELTN_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PERSON_PERSON_RELTN]  
           ([PERSON_PERSON_RELTN_ID]
           ,[PERSON_RELTN_TYPE_CD]
           ,[PERSON_ID]
           ,[PERSON_RELTN_CD]
           ,[RELATED_PERSON_RELTN_CD]
           ,[RELATED_PERSON_ID]
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
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[CONTACT_ROLE_CD]
           ,[GENETIC_RELATIONSHIP_IND]
           ,[LIVING_WITH_IND]
           ,[VISITATION_ALLOWED_CD]
           ,[PRIORITY_SEQ]
           ,[FREE_TEXT_CD]
           ,[FT_REL_PERSON_NAME]
           ,[INTERNAL_SEQ]
           ,[COPY_CORRESPONDENCE_CD]
           ,[FAMILY_RELTN_SUB_TYPE_CD]
           ,[DEFAULT_RELTN_IND]
           ,[SOURCE_IDENTIFIER]
           ,[RELATION_SEQ]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PERSON_PERSON_RELTN_ID]
           ,[PERSON_RELTN_TYPE_CD]
           ,[PERSON_ID]
           ,[PERSON_RELTN_CD]
           ,[RELATED_PERSON_RELTN_CD]
           ,[RELATED_PERSON_ID]
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
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[CONTACT_ROLE_CD]
           ,[GENETIC_RELATIONSHIP_IND]
           ,[LIVING_WITH_IND]
           ,[VISITATION_ALLOWED_CD]
           ,[PRIORITY_SEQ]
           ,[FREE_TEXT_CD]
           ,[FT_REL_PERSON_NAME]
           ,[INTERNAL_SEQ]
           ,[COPY_CORRESPONDENCE_CD]
           ,[FAMILY_RELTN_SUB_TYPE_CD]
           ,[DEFAULT_RELTN_IND]
           ,[SOURCE_IDENTIFIER]
           ,[RELATION_SEQ]
           ,[LAST_UTC_TS]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PERSON_PERSON_RELTN]   Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PERSON_PERSON_RELTN]    Dest with (nolock)
		                  where Dest.[PERSON_PERSON_RELTN_ID]  = Source.[PERSON_PERSON_RELTN_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PERSON_PERSON_RELTN',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
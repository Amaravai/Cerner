
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for  Person
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPerson]
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
	    SET [UPDT_CNT] = Source.UPDT_CNT
      ,[UPDT_DT_TM] = Source.UPDT_DT_TM
      ,[UPDT_ID] = Source.UPDT_ID
      ,[UPDT_TASK] = Source.UPDT_TASK
      ,[UPDT_APPLCTX] = Source.UPDT_APPLCTX
      ,[ACTIVE_IND] = Source.ACTIVE_IND
      ,[ACTIVE_STATUS_CD] = Source.ACTIVE_STATUS_CD
      ,[ACTIVE_STATUS_DT_TM] = Source.ACTIVE_STATUS_DT_TM
      ,[ACTIVE_STATUS_PRSNL_ID] = Source.ACTIVE_STATUS_PRSNL_ID
      ,[CREATE_DT_TM] = Source.CREATE_DT_TM
      ,[CREATE_PRSNL_ID] = Source.CREATE_PRSNL_ID
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[PERSON_TYPE_CD] = Source.PERSON_TYPE_CD
      ,[NAME_LAST_KEY] = Source.NAME_LAST_KEY
      ,[NAME_FIRST_KEY] = Source.NAME_FIRST_KEY
      ,[NAME_FULL_FORMATTED] = Source.NAME_FULL_FORMATTED
      ,[AUTOPSY_CD] = Source.AUTOPSY_CD
      ,[BIRTH_DT_CD] = Source.BIRTH_DT_CD
      ,[BIRTH_DT_TM] = Source.BIRTH_DT_TM
      ,[CONCEPTION_DT_TM] = Source.CONCEPTION_DT_TM
      ,[CAUSE_OF_DEATH] = Source.CAUSE_OF_DEATH
      ,[DECEASED_CD] = Source.DECEASED_CD
      ,[DECEASED_DT_TM] = Source.DECEASED_DT_TM
      ,[ETHNIC_GRP_CD] = Source.ETHNIC_GRP_CD
      ,[LANGUAGE_CD] = Source.LANGUAGE_CD
      ,[MARITAL_TYPE_CD] = Source.MARITAL_TYPE_CD
      ,[PURGE_OPTION_CD] = Source.PURGE_OPTION_CD
      ,[RACE_CD] = Source.RACE_CD
      ,[RELIGION_CD] = Source.RELIGION_CD
      ,[SEX_CD] = Source.SEX_CD
      ,[SEX_AGE_CHANGE_IND] = Source.SEX_AGE_CHANGE_IND
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[LANGUAGE_DIALECT_CD] = Source.LANGUAGE_DIALECT_CD
      ,[NAME_LAST] = Source.NAME_LAST
      ,[NAME_FIRST] = Source.NAME_FIRST
      ,[NAME_PHONETIC] = Source.NAME_PHONETIC
      ,[LAST_ENCNTR_DT_TM] = Source.LAST_ENCNTR_DT_TM
      ,[SPECIES_CD] = Source.SPECIES_CD
      ,[CONFID_LEVEL_CD] = Source.CONFID_LEVEL_CD
      ,[VIP_CD] = Source.VIP_CD
      ,[NAME_FIRST_SYNONYM_ID] = Source.NAME_FIRST_SYNONYM_ID
      ,[CITIZENSHIP_CD] = Source.CITIZENSHIP_CD
      ,[VET_MILITARY_STATUS_CD] = Source.VET_MILITARY_STATUS_CD
      ,[MOTHER_MAIDEN_NAME] = Source.MOTHER_MAIDEN_NAME
      ,[NATIONALITY_CD] = Source.NATIONALITY_CD
      ,[FT_ENTITY_NAME] = Source.FT_ENTITY_NAME 
      ,[FT_ENTITY_ID] = Source.FT_ENTITY_ID
      ,[NAME_MIDDLE_KEY] = Source.NAME_MIDDLE_KEY
      ,[NAME_MIDDLE] = Source.NAME_MIDDLE
      ,[NAME_FIRST_PHONETIC] = Source.NAME_FIRST_PHONETIC
      ,[NAME_LAST_PHONETIC] = Source.NAME_LAST_PHONETIC
      ,[NAME_LAST_KEY_NLS] = Source.NAME_LAST_KEY_NLS
      ,[NAME_FIRST_KEY_NLS] = Source.NAME_FIRST_KEY_NLS
      ,[NAME_MIDDLE_KEY_NLS] = Source.NAME_MIDDLE_KEY_NLS
      ,[MILITARY_RANK_CD] = Source.MILITARY_RANK_CD
      ,[MILITARY_BASE_LOCATION] = Source.MILITARY_BASE_LOCATION
      ,[MILITARY_SERVICE_CD] = Source.MILITARY_SERVICE_CD
      ,[DECEASED_SOURCE_CD] = Source.DECEASED_SOURCE_CD
      ,[CAUSE_OF_DEATH_CD] = Source.CAUSE_OF_DEATH_CD
      ,[BIRTH_TZ] = Source.BIRTH_TZ
      ,[BIRTH_PREC_FLAG] = Source.BIRTH_PREC_FLAG
      ,[ABS_BIRTH_DT_TM] = Source.ABS_BIRTH_DT_TM
      ,[ARCHIVE_ENV_ID] = Source.ARCHIVE_ENV_ID
      ,[ARCHIVE_STATUS_CD] = Source.ARCHIVE_STATUS_CD
      ,[LAST_ACCESSED_DT_TM] = Source.LAST_ACCESSED_DT_TM
      ,[ARCHIVE_STATUS_DT_TM] = Source.ARCHIVE_STATUS_DT_TM
      ,[NEXT_RESTORE_DT_TM] = Source.NEXT_RESTORE_DT_TM
      ,[AGE_AT_DEATH] = Source.AGE_AT_DEATH
      ,[AGE_AT_DEATH_UNIT_CD] = Source.AGE_AT_DEATH_UNIT_CD
      ,[AGE_AT_DEATH_PREC_MOD_FLAG] = Source.AGE_AT_DEATH_PREC_MOD_FLAG
      ,[DECEASED_TZ] = Source.DECEASED_TZ
      ,[DECEASED_DT_TM_PREC_FLAG] = Source.DECEASED_DT_TM_PREC_FLAG
      ,[DECEASED_ID_METHOD_CD] = Source.DECEASED_ID_METHOD_CD
      ,[LOGICAL_DOMAIN_ID] = Source.LOGICAL_DOMAIN_ID
      ,[NAME_LAST_KEY_A_NLS] = Source.NAME_LAST_KEY_A_NLS
      ,[NAME_FIRST_KEY_A_NLS] = Source.NAME_FIRST_KEY_A_NLS
      ,[NAME_MIDDLE_KEY_A_NLS] = Source.NAME_MIDDLE_KEY_A_NLS
      ,[PERSON_STATUS_CD] = Source.PERSON_STATUS_CD
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[RESIDENT_CD] = Source.RESIDENT_CD
      ,[EMANCIPATION_DT_TM] = Source.EMANCIPATION_DT_TM
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PERSON]  Dest
	INNER JOIN [stage].[PERSON] Source ON Source.[PERSON_ID] = Dest.[PERSON_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PERSON]
           ([PERSON_ID]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[CREATE_DT_TM]
           ,[CREATE_PRSNL_ID]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[PERSON_TYPE_CD]
           ,[NAME_LAST_KEY]
           ,[NAME_FIRST_KEY]
           ,[NAME_FULL_FORMATTED]
           ,[AUTOPSY_CD]
           ,[BIRTH_DT_CD]
           ,[BIRTH_DT_TM]
           ,[CONCEPTION_DT_TM]
           ,[CAUSE_OF_DEATH]
           ,[DECEASED_CD]
           ,[DECEASED_DT_TM]
           ,[ETHNIC_GRP_CD]
           ,[LANGUAGE_CD]
           ,[MARITAL_TYPE_CD]
           ,[PURGE_OPTION_CD]
           ,[RACE_CD]
           ,[RELIGION_CD]
           ,[SEX_CD]
           ,[SEX_AGE_CHANGE_IND]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LANGUAGE_DIALECT_CD]
           ,[NAME_LAST]
           ,[NAME_FIRST]
           ,[NAME_PHONETIC]
           ,[LAST_ENCNTR_DT_TM]
           ,[SPECIES_CD]
           ,[CONFID_LEVEL_CD]
           ,[VIP_CD]
           ,[NAME_FIRST_SYNONYM_ID]
           ,[CITIZENSHIP_CD]
           ,[VET_MILITARY_STATUS_CD]
           ,[MOTHER_MAIDEN_NAME]
           ,[NATIONALITY_CD]
           ,[FT_ENTITY_NAME]
           ,[FT_ENTITY_ID]
           ,[NAME_MIDDLE_KEY]
           ,[NAME_MIDDLE]
           ,[NAME_FIRST_PHONETIC]
           ,[NAME_LAST_PHONETIC]
           ,[NAME_LAST_KEY_NLS]
           ,[NAME_FIRST_KEY_NLS]
           ,[NAME_MIDDLE_KEY_NLS]
           ,[MILITARY_RANK_CD]
           ,[MILITARY_BASE_LOCATION]
           ,[MILITARY_SERVICE_CD]
           ,[DECEASED_SOURCE_CD]
           ,[CAUSE_OF_DEATH_CD]
           ,[BIRTH_TZ]
           ,[BIRTH_PREC_FLAG]
           ,[ABS_BIRTH_DT_TM]
           ,[ARCHIVE_ENV_ID]
           ,[ARCHIVE_STATUS_CD]
           ,[LAST_ACCESSED_DT_TM]
           ,[ARCHIVE_STATUS_DT_TM]
           ,[NEXT_RESTORE_DT_TM]
           ,[AGE_AT_DEATH]
           ,[AGE_AT_DEATH_UNIT_CD]
           ,[AGE_AT_DEATH_PREC_MOD_FLAG]
           ,[DECEASED_TZ]
           ,[DECEASED_DT_TM_PREC_FLAG]
           ,[DECEASED_ID_METHOD_CD]
           ,[LOGICAL_DOMAIN_ID]
           ,[NAME_LAST_KEY_A_NLS]
           ,[NAME_FIRST_KEY_A_NLS]
           ,[NAME_MIDDLE_KEY_A_NLS]
           ,[PERSON_STATUS_CD]
           ,[LAST_UTC_TS]
           ,[RESIDENT_CD]
           ,[EMANCIPATION_DT_TM]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [PERSON_ID]
           ,[UPDT_CNT]
           ,[UPDT_DT_TM]
           ,[UPDT_ID]
           ,[UPDT_TASK]
           ,[UPDT_APPLCTX]
           ,[ACTIVE_IND]
           ,[ACTIVE_STATUS_CD]
           ,[ACTIVE_STATUS_DT_TM]
           ,[ACTIVE_STATUS_PRSNL_ID]
           ,[CREATE_DT_TM]
           ,[CREATE_PRSNL_ID]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[PERSON_TYPE_CD]
           ,[NAME_LAST_KEY]
           ,[NAME_FIRST_KEY]
           ,[NAME_FULL_FORMATTED]
           ,[AUTOPSY_CD]
           ,[BIRTH_DT_CD]
           ,[BIRTH_DT_TM]
           ,[CONCEPTION_DT_TM]
           ,[CAUSE_OF_DEATH]
           ,[DECEASED_CD]
           ,[DECEASED_DT_TM]
           ,[ETHNIC_GRP_CD]
           ,[LANGUAGE_CD]
           ,[MARITAL_TYPE_CD]
           ,[PURGE_OPTION_CD]
           ,[RACE_CD]
           ,[RELIGION_CD]
           ,[SEX_CD]
           ,[SEX_AGE_CHANGE_IND]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LANGUAGE_DIALECT_CD]
           ,[NAME_LAST]
           ,[NAME_FIRST]
           ,[NAME_PHONETIC]
           ,[LAST_ENCNTR_DT_TM]
           ,[SPECIES_CD]
           ,[CONFID_LEVEL_CD]
           ,[VIP_CD]
           ,[NAME_FIRST_SYNONYM_ID]
           ,[CITIZENSHIP_CD]
           ,[VET_MILITARY_STATUS_CD]
           ,[MOTHER_MAIDEN_NAME]
           ,[NATIONALITY_CD]
           ,[FT_ENTITY_NAME]
           ,[FT_ENTITY_ID]
           ,[NAME_MIDDLE_KEY]
           ,[NAME_MIDDLE]
           ,[NAME_FIRST_PHONETIC]
           ,[NAME_LAST_PHONETIC]
           ,[NAME_LAST_KEY_NLS]
           ,[NAME_FIRST_KEY_NLS]
           ,[NAME_MIDDLE_KEY_NLS]
           ,[MILITARY_RANK_CD]
           ,[MILITARY_BASE_LOCATION]
           ,[MILITARY_SERVICE_CD]
           ,[DECEASED_SOURCE_CD]
           ,[CAUSE_OF_DEATH_CD]
           ,[BIRTH_TZ]
           ,[BIRTH_PREC_FLAG]
           ,[ABS_BIRTH_DT_TM]
           ,[ARCHIVE_ENV_ID]
           ,[ARCHIVE_STATUS_CD]
           ,[LAST_ACCESSED_DT_TM]
           ,[ARCHIVE_STATUS_DT_TM]
           ,[NEXT_RESTORE_DT_TM]
           ,[AGE_AT_DEATH]
           ,[AGE_AT_DEATH_UNIT_CD]
           ,[AGE_AT_DEATH_PREC_MOD_FLAG]
           ,[DECEASED_TZ]
           ,[DECEASED_DT_TM_PREC_FLAG]
           ,[DECEASED_ID_METHOD_CD]
           ,[LOGICAL_DOMAIN_ID]
           ,[NAME_LAST_KEY_A_NLS]
           ,[NAME_FIRST_KEY_A_NLS]
           ,[NAME_MIDDLE_KEY_A_NLS]
           ,[PERSON_STATUS_CD]
           ,[LAST_UTC_TS]
           ,[RESIDENT_CD]
           ,[EMANCIPATION_DT_TM]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PERSON] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PERSON]  Dest with (nolock)
		                  where Dest.[PERSON_ID]  = Source.[PERSON_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PERSON',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
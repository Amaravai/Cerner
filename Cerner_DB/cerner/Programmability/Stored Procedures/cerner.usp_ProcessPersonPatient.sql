
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 05-APR-2020 
-- Description: Process the Insert and Updates for [cerner].[PERSON_PATIENT] 
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessPersonPatient]
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
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[ADOPTED_CD] = Source.ADOPTED_CD
      ,[BAD_DEBT_CD] = Source.BAD_DEBT_CD
      ,[BAPTISED_CD] = Source.BAPTISED_CD
      ,[BIRTH_MULTIPLE_CD] = Source.BIRTH_MULTIPLE_CD
      ,[BIRTH_ORDER] = Source.BIRTH_ORDER
      ,[BIRTH_LENGTH] = Source.BIRTH_LENGTH
      ,[BIRTH_LENGTH_UNITS_CD] = Source.BIRTH_LENGTH_UNITS_CD
      ,[BIRTH_NAME] = Source.BIRTH_NAME
      ,[BIRTH_WEIGHT] = Source.BIRTH_WEIGHT
      ,[BIRTH_WEIGHT_UNITS_CD] = Source.BIRTH_WEIGHT_UNITS_CD
      ,[CHURCH_CD] = Source.CHURCH_CD
      ,[CREDIT_HRS_TAKING] = Source.CREDIT_HRS_TAKING
      ,[CUMM_LEAVE_DAYS] = Source.CUMM_LEAVE_DAYS
      ,[CURRENT_BALANCE] = Source.CURRENT_BALANCE
      ,[CURRENT_GRADE] = Source.CURRENT_GRADE
      ,[CUSTODY_CD] = Source.CUSTODY_CD
      ,[DEGREE_COMPLETE_CD] = Source.DEGREE_COMPLETE_CD
      ,[DIET_TYPE_CD] = Source.DIET_TYPE_CD
      ,[FAMILY_INCOME] = Source.FAMILY_INCOME
      ,[FAMILY_SIZE] = Source.FAMILY_SIZE
      ,[HIGHEST_GRADE_COMPLETE_CD] = Source.HIGHEST_GRADE_COMPLETE_CD
      ,[IMMUN_ON_FILE_CD] = Source.IMMUN_ON_FILE_CD
      ,[INTERP_REQUIRED_CD] = Source.INTERP_REQUIRED_CD
      ,[INTERP_TYPE_CD] = Source.INTERP_TYPE_CD
      ,[MICROFILM_CD] = Source.MICROFILM_CD
      ,[NBR_OF_BROTHERS] = Source.NBR_OF_BROTHERS
      ,[NBR_OF_SISTERS] = Source.NBR_OF_SISTERS
      ,[ORGAN_DONOR_CD] = Source.ORGAN_DONOR_CD
      ,[PARENT_MARITAL_STATUS_CD] = Source.PARENT_MARITAL_STATUS_CD
      ,[SMOKES_CD] = Source.SMOKES_CD
      ,[TUMOR_REGISTRY_CD] = Source.TUMOR_REGISTRY_CD
      ,[LAST_BILL_DT_TM] = Source.LAST_BILL_DT_TM
      ,[LAST_BIND_DT_TM] = Source.LAST_BIND_DT_TM
      ,[LAST_DISCHARGE_DT_TM] = Source.LAST_DISCHARGE_DT_TM
      ,[LAST_EVENT_UPDT_DT_TM] = Source.LAST_EVENT_UPDT_DT_TM
      ,[LAST_PAYMENT_DT_TM] = Source.LAST_PAYMENT_DT_TM
      ,[LAST_ATD_ACTIVITY_DT_TM] = Source.LAST_ATD_ACTIVITY_DT_TM
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[STUDENT_CD] = Source.STUDENT_CD
      ,[LIVING_DEPENDENCY_CD] = Source.LIVING_DEPENDENCY_CD
      ,[LIVING_ARRANGEMENT_CD] = Source.LIVING_ARRANGEMENT_CD
      ,[LIVING_WILL_CD] = Source.LIVING_WILL_CD
      ,[NBR_OF_PREGNANCIES] = Source.NBR_OF_PREGNANCIES
      ,[LAST_TRAUMA_DT_TM] = Source.LAST_TRAUMA_DT_TM
      ,[MOTHER_IDENTIFIER] = Source.MOTHER_IDENTIFIER
      ,[MOTHER_IDENTIFIER_CD] = Source.MOTHER_IDENTIFIER_CD
      ,[DISEASE_ALERT_CD] = Source.DISEASE_ALERT_CD
      ,[PROCESS_ALERT_CD] = Source.PROCESS_ALERT_CD
      ,[CONTACT_LIST_CD] = Source.CONTACT_LIST_CD
      ,[GEST_AGE_AT_BIRTH] = Source.GEST_AGE_AT_BIRTH
      ,[GEST_AGE_METHOD_CD] = Source.GEST_AGE_METHOD_CD
      ,[CONTACT_TIME] = Source.CONTACT_TIME
      ,[CALLBACK_CONSENT_CD] = Source.CALLBACK_CONSENT_CD
      ,[CONTACT_METHOD_CD] = Source.CONTACT_METHOD_CD
      ,[WRITTEN_FORMAT_CD] = Source.WRITTEN_FORMAT_CD
      ,[PREV_CONTACT_IND] = Source.PREV_CONTACT_IND
      ,[SOURCE_VERSION_NUMBER] = Source.SOURCE_VERSION_NUMBER
      ,[BIRTH_ORDER_CD] = Source.BIRTH_ORDER_CD
      ,[SOURCE_LAST_SYNC_DT_TM] = Source.SOURCE_LAST_SYNC_DT_TM
      ,[SOURCE_SYNC_LEVEL_FLAG] = Source.SOURCE_SYNC_LEVEL_FLAG
      ,[IQH_PARTICIPANT_CD] = Source.IQH_PARTICIPANT_CD
      ,[FIN_STATEMENT_VERIFIED_DT_TM] = Source.FIN_STATEMENT_VERIFIED_DT_TM
      ,[FAMILY_NBR_OF_MINORS_CNT] = Source.FAMILY_NBR_OF_MINORS_CNT
      ,[FIN_STATEMENT_EXPIRE_DT_TM] = Source.FIN_STATEMENT_EXPIRE_DT_TM
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[ADVOCATE_REQUIRED_CD] = Source.ADVOCATE_REQUIRED_CD
      ,[EXT_TRANSPORT_REQUIRED_CD] = Source.EXT_TRANSPORT_REQUIRED_CD
      ,[PHONE_CONTACT_TYPE_CD] = Source.PHONE_CONTACT_TYPE_CD
      ,[DEMOG_VERIFY_DT_TM] = Source.DEMOG_VERIFY_DT_TM
      ,[BIRTH_CERTIFICATE_IDENT] = Source.BIRTH_CERTIFICATE_IDENT
      ,[DEATH_CERTIFICATE_IDENT] = Source.DEATH_CERTIFICATE_IDENT
      ,[HEALTH_INFO_ACCESS_OFFERED_CD] = Source.HEALTH_INFO_ACCESS_OFFERED_CD
      ,[HEALTH_APP_ACCESS_OFFERED_CD] = Source.HEALTH_APP_ACCESS_OFFERED_CD
      ,[BIRTH_SEX_CD] = Source.BIRTH_SEX_CD
      ,[FINANCIAL_RISK_LEVEL_CD] = Source.FINANCIAL_RISK_LEVEL_CD
      ,[PRIMARY_CARE_HOME_CD] = Source.PRIMARY_CARE_HOME_CD
      ,[CONTACT_FOR_RESEARCH_PERM_CD] = Source.CONTACT_FOR_RESEARCH_PERM_CD
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[PERSON_PATIENT]    Dest
	INNER JOIN [stage].[PERSON_PATIENT]   Source ON Source.[PERSON_ID] = Dest.[PERSON_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[PERSON_PATIENT]  
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
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[ADOPTED_CD]
           ,[BAD_DEBT_CD]
           ,[BAPTISED_CD]
           ,[BIRTH_MULTIPLE_CD]
           ,[BIRTH_ORDER]
           ,[BIRTH_LENGTH]
           ,[BIRTH_LENGTH_UNITS_CD]
           ,[BIRTH_NAME]
           ,[BIRTH_WEIGHT]
           ,[BIRTH_WEIGHT_UNITS_CD]
           ,[CHURCH_CD]
           ,[CREDIT_HRS_TAKING]
           ,[CUMM_LEAVE_DAYS]
           ,[CURRENT_BALANCE]
           ,[CURRENT_GRADE]
           ,[CUSTODY_CD]
           ,[DEGREE_COMPLETE_CD]
           ,[DIET_TYPE_CD]
           ,[FAMILY_INCOME]
           ,[FAMILY_SIZE]
           ,[HIGHEST_GRADE_COMPLETE_CD]
           ,[IMMUN_ON_FILE_CD]
           ,[INTERP_REQUIRED_CD]
           ,[INTERP_TYPE_CD]
           ,[MICROFILM_CD]
           ,[NBR_OF_BROTHERS]
           ,[NBR_OF_SISTERS]
           ,[ORGAN_DONOR_CD]
           ,[PARENT_MARITAL_STATUS_CD]
           ,[SMOKES_CD]
           ,[TUMOR_REGISTRY_CD]
           ,[LAST_BILL_DT_TM]
           ,[LAST_BIND_DT_TM]
           ,[LAST_DISCHARGE_DT_TM]
           ,[LAST_EVENT_UPDT_DT_TM]
           ,[LAST_PAYMENT_DT_TM]
           ,[LAST_ATD_ACTIVITY_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[STUDENT_CD]
           ,[LIVING_DEPENDENCY_CD]
           ,[LIVING_ARRANGEMENT_CD]
           ,[LIVING_WILL_CD]
           ,[NBR_OF_PREGNANCIES]
           ,[LAST_TRAUMA_DT_TM]
           ,[MOTHER_IDENTIFIER]
           ,[MOTHER_IDENTIFIER_CD]
           ,[DISEASE_ALERT_CD]
           ,[PROCESS_ALERT_CD]
           ,[CONTACT_LIST_CD]
           ,[GEST_AGE_AT_BIRTH]
           ,[GEST_AGE_METHOD_CD]
           ,[CONTACT_TIME]
           ,[CALLBACK_CONSENT_CD]
           ,[CONTACT_METHOD_CD]
           ,[WRITTEN_FORMAT_CD]
           ,[PREV_CONTACT_IND]
           ,[SOURCE_VERSION_NUMBER]
           ,[BIRTH_ORDER_CD]
           ,[SOURCE_LAST_SYNC_DT_TM]
           ,[SOURCE_SYNC_LEVEL_FLAG]
           ,[IQH_PARTICIPANT_CD]
           ,[FIN_STATEMENT_VERIFIED_DT_TM]
           ,[FAMILY_NBR_OF_MINORS_CNT]
           ,[FIN_STATEMENT_EXPIRE_DT_TM]
           ,[LAST_UTC_TS]
           ,[ADVOCATE_REQUIRED_CD]
           ,[EXT_TRANSPORT_REQUIRED_CD]
           ,[PHONE_CONTACT_TYPE_CD]
           ,[DEMOG_VERIFY_DT_TM]
           ,[BIRTH_CERTIFICATE_IDENT]
           ,[DEATH_CERTIFICATE_IDENT]
           ,[HEALTH_INFO_ACCESS_OFFERED_CD]
           ,[HEALTH_APP_ACCESS_OFFERED_CD]
           ,[BIRTH_SEX_CD]
           ,[FINANCIAL_RISK_LEVEL_CD]
           ,[PRIMARY_CARE_HOME_CD]
           ,[CONTACT_FOR_RESEARCH_PERM_CD]
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
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[ADOPTED_CD]
           ,[BAD_DEBT_CD]
           ,[BAPTISED_CD]
           ,[BIRTH_MULTIPLE_CD]
           ,[BIRTH_ORDER]
           ,[BIRTH_LENGTH]
           ,[BIRTH_LENGTH_UNITS_CD]
           ,[BIRTH_NAME]
           ,[BIRTH_WEIGHT]
           ,[BIRTH_WEIGHT_UNITS_CD]
           ,[CHURCH_CD]
           ,[CREDIT_HRS_TAKING]
           ,[CUMM_LEAVE_DAYS]
           ,[CURRENT_BALANCE]
           ,[CURRENT_GRADE]
           ,[CUSTODY_CD]
           ,[DEGREE_COMPLETE_CD]
           ,[DIET_TYPE_CD]
           ,[FAMILY_INCOME]
           ,[FAMILY_SIZE]
           ,[HIGHEST_GRADE_COMPLETE_CD]
           ,[IMMUN_ON_FILE_CD]
           ,[INTERP_REQUIRED_CD]
           ,[INTERP_TYPE_CD]
           ,[MICROFILM_CD]
           ,[NBR_OF_BROTHERS]
           ,[NBR_OF_SISTERS]
           ,[ORGAN_DONOR_CD]
           ,[PARENT_MARITAL_STATUS_CD]
           ,[SMOKES_CD]
           ,[TUMOR_REGISTRY_CD]
           ,[LAST_BILL_DT_TM]
           ,[LAST_BIND_DT_TM]
           ,[LAST_DISCHARGE_DT_TM]
           ,[LAST_EVENT_UPDT_DT_TM]
           ,[LAST_PAYMENT_DT_TM]
           ,[LAST_ATD_ACTIVITY_DT_TM]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[STUDENT_CD]
           ,[LIVING_DEPENDENCY_CD]
           ,[LIVING_ARRANGEMENT_CD]
           ,[LIVING_WILL_CD]
           ,[NBR_OF_PREGNANCIES]
           ,[LAST_TRAUMA_DT_TM]
           ,[MOTHER_IDENTIFIER]
           ,[MOTHER_IDENTIFIER_CD]
           ,[DISEASE_ALERT_CD]
           ,[PROCESS_ALERT_CD]
           ,[CONTACT_LIST_CD]
           ,[GEST_AGE_AT_BIRTH]
           ,[GEST_AGE_METHOD_CD]
           ,[CONTACT_TIME]
           ,[CALLBACK_CONSENT_CD]
           ,[CONTACT_METHOD_CD]
           ,[WRITTEN_FORMAT_CD]
           ,[PREV_CONTACT_IND]
           ,[SOURCE_VERSION_NUMBER]
           ,[BIRTH_ORDER_CD]
           ,[SOURCE_LAST_SYNC_DT_TM]
           ,[SOURCE_SYNC_LEVEL_FLAG]
           ,[IQH_PARTICIPANT_CD]
           ,[FIN_STATEMENT_VERIFIED_DT_TM]
           ,[FAMILY_NBR_OF_MINORS_CNT]
           ,[FIN_STATEMENT_EXPIRE_DT_TM]
           ,[LAST_UTC_TS]
           ,[ADVOCATE_REQUIRED_CD]
           ,[EXT_TRANSPORT_REQUIRED_CD]
           ,[PHONE_CONTACT_TYPE_CD]
           ,[DEMOG_VERIFY_DT_TM]
           ,[BIRTH_CERTIFICATE_IDENT]
           ,[DEATH_CERTIFICATE_IDENT]
           ,[HEALTH_INFO_ACCESS_OFFERED_CD]
           ,[HEALTH_APP_ACCESS_OFFERED_CD]
           ,[BIRTH_SEX_CD]
           ,[FINANCIAL_RISK_LEVEL_CD]
           ,[PRIMARY_CARE_HOME_CD]
           ,[CONTACT_FOR_RESEARCH_PERM_CD]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[PERSON_PATIENT]   Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[PERSON_PATIENT]    Dest with (nolock)
		                  where Dest.[PERSON_ID]  = Source.[PERSON_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('PERSON_PATIENT',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
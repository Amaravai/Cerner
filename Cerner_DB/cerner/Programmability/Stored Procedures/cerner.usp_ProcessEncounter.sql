
 
-- =============================================  
-- Author:      Srinath Amaravai  
-- Create date: 04-APR-2020 
-- Description: Process the Insert and Updates for  ENCOUNTER
-- =============================================  
CREATE PROCEDURE [cerner].[usp_ProcessEncounter]
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
      ,[CREATE_DT_TM] = Source.CREATE_DT_TM
      ,[CREATE_PRSNL_ID] = Source.CREATE_PRSNL_ID
      ,[BEG_EFFECTIVE_DT_TM] = Source.BEG_EFFECTIVE_DT_TM
      ,[END_EFFECTIVE_DT_TM] = Source.END_EFFECTIVE_DT_TM
      ,[ENCNTR_CLASS_CD] = Source.ENCNTR_CLASS_CD
      ,[ENCNTR_TYPE_CD] = Source.ENCNTR_TYPE_CD
      ,[ENCNTR_TYPE_CLASS_CD] = Source.ENCNTR_TYPE_CLASS_CD
      ,[ENCNTR_STATUS_CD] = Source.ENCNTR_STATUS_CD
      ,[PRE_REG_DT_TM] = Source.PRE_REG_DT_TM
      ,[PRE_REG_PRSNL_ID] = Source.PRE_REG_PRSNL_ID
      ,[REG_DT_TM] = Source.REG_DT_TM
      ,[REG_PRSNL_ID] = Source.REG_PRSNL_ID
      ,[EST_ARRIVE_DT_TM] = Source.EST_ARRIVE_DT_TM
      ,[EST_DEPART_DT_TM] = Source.EST_DEPART_DT_TM
      ,[ARRIVE_DT_TM] = Source.ARRIVE_DT_TM
      ,[DEPART_DT_TM] = Source.DEPART_DT_TM
      ,[ADMIT_TYPE_CD] = Source.ADMIT_TYPE_CD
      ,[ADMIT_SRC_CD] = Source.ADMIT_SRC_CD
      ,[ADMIT_MODE_CD] = Source.ADMIT_MODE_CD
      ,[ADMIT_WITH_MEDICATION_CD] = Source.ADMIT_WITH_MEDICATION_CD
      ,[REFERRING_COMMENT] = Source.REFERRING_COMMENT
      ,[DISCH_DISPOSITION_CD] = Source.DISCH_DISPOSITION_CD
      ,[DISCH_TO_LOCTN_CD] = Source.DISCH_TO_LOCTN_CD
      ,[PREADMIT_NBR] = Source.PREADMIT_NBR
      ,[PREADMIT_TESTING_CD] = Source.PREADMIT_TESTING_CD
      ,[READMIT_CD] = Source.READMIT_CD
      ,[ACCOMMODATION_CD] = Source.ACCOMMODATION_CD
      ,[ACCOMMODATION_REQUEST_CD] = Source.ACCOMMODATION_REQUEST_CD
      ,[ALT_RESULT_DEST_CD] = Source.ALT_RESULT_DEST_CD
      ,[AMBULATORY_COND_CD] = Source.AMBULATORY_COND_CD
      ,[COURTESY_CD] = Source.COURTESY_CD
      ,[DIET_TYPE_CD] = Source.DIET_TYPE_CD
      ,[ISOLATION_CD] = Source.ISOLATION_CD
      ,[MED_SERVICE_CD] = Source.MED_SERVICE_CD
      ,[RESULT_DEST_CD] = Source.RESULT_DEST_CD
      ,[CONFID_LEVEL_CD] = Source.CONFID_LEVEL_CD
      ,[VIP_CD] = Source.VIP_CD
      ,[NAME_LAST_KEY] = Source.NAME_LAST_KEY
      ,[NAME_FIRST_KEY] = Source.NAME_FIRST_KEY
      ,[NAME_FULL_FORMATTED] = Source.NAME_FULL_FORMATTED
      ,[NAME_LAST] = Source.NAME_LAST
      ,[NAME_FIRST] = Source.NAME_FIRST
      ,[NAME_PHONETIC] = Source.NAME_PHONETIC
      ,[SEX_CD] = Source.SEX_CD
      ,[BIRTH_DT_CD] = Source.BIRTH_DT_CD
      ,[BIRTH_DT_TM] = Source.BIRTH_DT_TM
      ,[SPECIES_CD] = Source.SPECIES_CD
      ,[DATA_STATUS_CD] = Source.DATA_STATUS_CD
      ,[DATA_STATUS_DT_TM] = Source.DATA_STATUS_DT_TM
      ,[DATA_STATUS_PRSNL_ID] = Source.DATA_STATUS_PRSNL_ID
      ,[CONTRIBUTOR_SYSTEM_CD] = Source.CONTRIBUTOR_SYSTEM_CD
      ,[LOCATION_CD] = Source.LOCATION_CD
      ,[LOC_FACILITY_CD] = Source.LOC_FACILITY_CD
      ,[LOC_BUILDING_CD] = Source.LOC_BUILDING_CD
      ,[LOC_NURSE_UNIT_CD] = Source.LOC_NURSE_UNIT_CD
      ,[LOC_ROOM_CD] = Source.LOC_ROOM_CD
      ,[LOC_BED_CD] = Source.LOC_BED_CD
      ,[DISCH_DT_TM] = Source.DISCH_DT_TM
      ,[GUARANTOR_TYPE_CD] = Source.GUARANTOR_TYPE_CD
      ,[LOC_TEMP_CD] = Source.LOC_TEMP_CD
      ,[ORGANIZATION_ID] = Source.ORGANIZATION_ID
      ,[REASON_FOR_VISIT] = Source.REASON_FOR_VISIT
      ,[ENCNTR_FINANCIAL_ID] = Source.ENCNTR_FINANCIAL_ID
      ,[NAME_FIRST_SYNONYM_ID] = Source.NAME_FIRST_SYNONYM_ID
      ,[FINANCIAL_CLASS_CD] = Source.FINANCIAL_CLASS_CD
      ,[BBD_PROCEDURE_CD] = Source.BBD_PROCEDURE_CD
      ,[INFO_GIVEN_BY] = Source.INFO_GIVEN_BY
      ,[SAFEKEEPING_CD] = Source.SAFEKEEPING_CD
      ,[TRAUMA_CD] = Source.TRAUMA_CD
      ,[TRIAGE_CD] = Source.TRIAGE_CD
      ,[TRIAGE_DT_TM] = Source.TRIAGE_DT_TM
      ,[VISITOR_STATUS_CD] = Source.VISITOR_STATUS_CD
      ,[VALUABLES_CD] = Source.VALUABLES_CD
      ,[SECURITY_ACCESS_CD] = Source.SECURITY_ACCESS_CD
      ,[REFER_FACILITY_CD] = Source.REFER_FACILITY_CD
      ,[TRAUMA_DT_TM] = Source.TRAUMA_DT_TM
      ,[ACCOMP_BY_CD] = Source.ACCOMP_BY_CD
      ,[ACCOMMODATION_REASON_CD] = Source.ACCOMMODATION_REASON_CD
      ,[CHART_COMPLETE_DT_TM] = Source.CHART_COMPLETE_DT_TM
      ,[ZERO_BALANCE_DT_TM] = Source.ZERO_BALANCE_DT_TM
      ,[ARCHIVE_DT_TM_EST] = Source.ARCHIVE_DT_TM_EST
      ,[ARCHIVE_DT_TM_ACT] = Source.ARCHIVE_DT_TM_ACT
      ,[PURGE_DT_TM_EST] = Source.PURGE_DT_TM_EST
      ,[PURGE_DT_TM_ACT] = Source.PURGE_DT_TM_ACT
      ,[ENCNTR_COMPLETE_DT_TM] = Source.ENCNTR_COMPLETE_DT_TM
      ,[PA_CURRENT_STATUS_CD] = Source.PA_CURRENT_STATUS_CD
      ,[PA_CURRENT_STATUS_DT_TM] = Source.PA_CURRENT_STATUS_DT_TM
      ,[PARENT_RET_CRITERIA_ID] = Source.PARENT_RET_CRITERIA_ID
      ,[SERVICE_CATEGORY_CD] = Source.SERVICE_CATEGORY_CD
      ,[CONTRACT_STATUS_CD] = Source.CONTRACT_STATUS_CD
      ,[EST_LENGTH_OF_STAY] = Source.EST_LENGTH_OF_STAY
      ,[ALT_LVL_CARE_CD] = Source.ALT_LVL_CARE_CD
      ,[ASSIGN_TO_LOC_DT_TM] = Source.ASSIGN_TO_LOC_DT_TM
      ,[PROGRAM_SERVICE_CD] = Source.PROGRAM_SERVICE_CD
      ,[SPECIALTY_UNIT_CD] = Source.SPECIALTY_UNIT_CD
      ,[MENTAL_HEALTH_DT_TM] = Source.MENTAL_HEALTH_DT_TM
      ,[MENTAL_HEALTH_CD] = Source.MENTAL_HEALTH_CD
      ,[DOC_RCVD_DT_TM] = Source.DOC_RCVD_DT_TM
      ,[REFERRAL_RCVD_DT_TM] = Source.REFERRAL_RCVD_DT_TM
      ,[ALT_LVL_CARE_DT_TM] = Source.ALT_LVL_CARE_DT_TM
      ,[ALC_DECOMP_DT_TM] = Source.ALC_DECOMP_DT_TM
      ,[REGION_CD] = Source.REGION_CD
      ,[SITTER_REQUIRED_CD] = Source.SITTER_REQUIRED_CD
      ,[ALC_REASON_CD] = Source.ALC_REASON_CD
      ,[PLACEMENT_AUTH_PRSNL_ID] = Source.PLACEMENT_AUTH_PRSNL_ID
      ,[PATIENT_CLASSIFICATION_CD] = Source.PATIENT_CLASSIFICATION_CD
      ,[MENTAL_CATEGORY_CD] = Source.MENTAL_CATEGORY_CD
      ,[PSYCHIATRIC_STATUS_CD] = Source.PSYCHIATRIC_STATUS_CD
      ,[INPATIENT_ADMIT_DT_TM] = Source.INPATIENT_ADMIT_DT_TM
      ,[RESULT_ACCUMULATION_DT_TM] = Source.RESULT_ACCUMULATION_DT_TM
      ,[PREGNANCY_STATUS_CD] = Source.PREGNANCY_STATUS_CD
      ,[INITIAL_CONTACT_DT_TM] = Source.INITIAL_CONTACT_DT_TM
      ,[ONSET_DT_TM] = Source.ONSET_DT_TM
      ,[LAST_MENSTRUAL_PERIOD_DT_TM] = Source.LAST_MENSTRUAL_PERIOD_DT_TM
      ,[EXPECTED_DELIVERY_DT_TM] = Source.EXPECTED_DELIVERY_DT_TM
      ,[ABN_STATUS_CD] = Source.ABN_STATUS_CD
      ,[LEVEL_OF_SERVICE_CD] = Source.LEVEL_OF_SERVICE_CD
      ,[PLACE_OF_SVC_ADMIT_DT_TM] = Source.PLACE_OF_SVC_ADMIT_DT_TM
      ,[PLACE_OF_SVC_TYPE_CD] = Source.PLACE_OF_SVC_TYPE_CD
      ,[PLACE_OF_SVC_ORG_ID] = Source.PLACE_OF_SVC_ORG_ID
      ,[LAST_UTC_TS] = Source.LAST_UTC_TS 
      ,[EST_FINANCIAL_RESP_AMT] = Source.EST_FINANCIAL_RESP_AMT
      ,[REFERRAL_SOURCE_CD] = Source.REFERRAL_SOURCE_CD
      ,[ADMIT_DECISION_DT_TM] = Source.ADMIT_DECISION_DT_TM
      ,[ACCIDENT_RELATED_IND] = Source.ACCIDENT_RELATED_IND
      ,[DISCH_PRSNL_ID] = Source.DISCH_PRSNL_ID
      ,[PAYMENT_COLLECTION_STATUS_CD] = Source.PAYMENT_COLLECTION_STATUS_CD
      ,[ORDER_SOURCE_CD] = Source.ORDER_SOURCE_CD
      ,[ADMIT_EARLY_IND] = Source.ADMIT_EARLY_IND
      ,[TREATMENT_PHASE_CD] = Source.TREATMENT_PHASE_CD
      ,[KIOSK_QUEUE_NBR_TXT] = Source.KIOSK_QUEUE_NBR_TXT 
      ,[KIOSK_QUEUE_NBR_DT_TM] = Source.KIOSK_QUEUE_NBR_DT_TM
      ,[CLU_SUBKEY1_FLAG] = Source.CLU_SUBKEY1_FLAG
      ,[REFER_TO_UNIT_STAFF_CD] = Source.REFER_TO_UNIT_STAFF_CD
      ,[LODGER_CD] = Source.LODGER_CD
      ,[COMPLETE_REG_DT_TM] = Source.COMPLETE_REG_DT_TM
      ,[COMPLETE_REG_PRSNL_ID] = Source.COMPLETE_REG_PRSNL_ID
      ,[CLERGY_VISIT_CD] = Source.CLERGY_VISIT_CD
      ,[CLIENT_ORGANIZATION_ID] = Source.CLIENT_ORGANIZATION_ID
      ,[PERSON_PLAN_PROFILE_TYPE_CD] = Source.PERSON_PLAN_PROFILE_TYPE_CD
      ,[MILITARY_SERVICE_RELATED_CD] = Source.MILITARY_SERVICE_RELATED_CD
      ,[INCIDENT_CD] = Source.INCIDENT_CD
      ,[ED_REFERRAL_SOURCE_CD] = Source.ED_REFERRAL_SOURCE_CD
      ,[INST_ID] = Source.INST_ID
      ,[RowModified] = GetDate()
      ,[RowAltered] = GetDate()
	FROM  [cerner].[ENCOUNTER]  Dest
	INNER JOIN [stage].[ENCOUNTER] Source ON Source.[ENCNTR_ID] = Dest.[ENCNTR_ID]
	;
	SET @UpdatedRows = @@ROWCOUNT


	-- Insert statements for procedure here
     INSERT INTO [cerner].[ENCOUNTER]
           ([ENCNTR_ID]
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
           ,[CREATE_DT_TM]
           ,[CREATE_PRSNL_ID]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[ENCNTR_CLASS_CD]
           ,[ENCNTR_TYPE_CD]
           ,[ENCNTR_TYPE_CLASS_CD]
           ,[ENCNTR_STATUS_CD]
           ,[PRE_REG_DT_TM]
           ,[PRE_REG_PRSNL_ID]
           ,[REG_DT_TM]
           ,[REG_PRSNL_ID]
           ,[EST_ARRIVE_DT_TM]
           ,[EST_DEPART_DT_TM]
           ,[ARRIVE_DT_TM]
           ,[DEPART_DT_TM]
           ,[ADMIT_TYPE_CD]
           ,[ADMIT_SRC_CD]
           ,[ADMIT_MODE_CD]
           ,[ADMIT_WITH_MEDICATION_CD]
           ,[REFERRING_COMMENT]
           ,[DISCH_DISPOSITION_CD]
           ,[DISCH_TO_LOCTN_CD]
           ,[PREADMIT_NBR]
           ,[PREADMIT_TESTING_CD]
           ,[READMIT_CD]
           ,[ACCOMMODATION_CD]
           ,[ACCOMMODATION_REQUEST_CD]
           ,[ALT_RESULT_DEST_CD]
           ,[AMBULATORY_COND_CD]
           ,[COURTESY_CD]
           ,[DIET_TYPE_CD]
           ,[ISOLATION_CD]
           ,[MED_SERVICE_CD]
           ,[RESULT_DEST_CD]
           ,[CONFID_LEVEL_CD]
           ,[VIP_CD]
           ,[NAME_LAST_KEY]
           ,[NAME_FIRST_KEY]
           ,[NAME_FULL_FORMATTED]
           ,[NAME_LAST]
           ,[NAME_FIRST]
           ,[NAME_PHONETIC]
           ,[SEX_CD]
           ,[BIRTH_DT_CD]
           ,[BIRTH_DT_TM]
           ,[SPECIES_CD]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LOCATION_CD]
           ,[LOC_FACILITY_CD]
           ,[LOC_BUILDING_CD]
           ,[LOC_NURSE_UNIT_CD]
           ,[LOC_ROOM_CD]
           ,[LOC_BED_CD]
           ,[DISCH_DT_TM]
           ,[GUARANTOR_TYPE_CD]
           ,[LOC_TEMP_CD]
           ,[ORGANIZATION_ID]
           ,[REASON_FOR_VISIT]
           ,[ENCNTR_FINANCIAL_ID]
           ,[NAME_FIRST_SYNONYM_ID]
           ,[FINANCIAL_CLASS_CD]
           ,[BBD_PROCEDURE_CD]
           ,[INFO_GIVEN_BY]
           ,[SAFEKEEPING_CD]
           ,[TRAUMA_CD]
           ,[TRIAGE_CD]
           ,[TRIAGE_DT_TM]
           ,[VISITOR_STATUS_CD]
           ,[VALUABLES_CD]
           ,[SECURITY_ACCESS_CD]
           ,[REFER_FACILITY_CD]
           ,[TRAUMA_DT_TM]
           ,[ACCOMP_BY_CD]
           ,[ACCOMMODATION_REASON_CD]
           ,[CHART_COMPLETE_DT_TM]
           ,[ZERO_BALANCE_DT_TM]
           ,[ARCHIVE_DT_TM_EST]
           ,[ARCHIVE_DT_TM_ACT]
           ,[PURGE_DT_TM_EST]
           ,[PURGE_DT_TM_ACT]
           ,[ENCNTR_COMPLETE_DT_TM]
           ,[PA_CURRENT_STATUS_CD]
           ,[PA_CURRENT_STATUS_DT_TM]
           ,[PARENT_RET_CRITERIA_ID]
           ,[SERVICE_CATEGORY_CD]
           ,[CONTRACT_STATUS_CD]
           ,[EST_LENGTH_OF_STAY]
           ,[ALT_LVL_CARE_CD]
           ,[ASSIGN_TO_LOC_DT_TM]
           ,[PROGRAM_SERVICE_CD]
           ,[SPECIALTY_UNIT_CD]
           ,[MENTAL_HEALTH_DT_TM]
           ,[MENTAL_HEALTH_CD]
           ,[DOC_RCVD_DT_TM]
           ,[REFERRAL_RCVD_DT_TM]
           ,[ALT_LVL_CARE_DT_TM]
           ,[ALC_DECOMP_DT_TM]
           ,[REGION_CD]
           ,[SITTER_REQUIRED_CD]
           ,[ALC_REASON_CD]
           ,[PLACEMENT_AUTH_PRSNL_ID]
           ,[PATIENT_CLASSIFICATION_CD]
           ,[MENTAL_CATEGORY_CD]
           ,[PSYCHIATRIC_STATUS_CD]
           ,[INPATIENT_ADMIT_DT_TM]
           ,[RESULT_ACCUMULATION_DT_TM]
           ,[PREGNANCY_STATUS_CD]
           ,[INITIAL_CONTACT_DT_TM]
           ,[ONSET_DT_TM]
           ,[LAST_MENSTRUAL_PERIOD_DT_TM]
           ,[EXPECTED_DELIVERY_DT_TM]
           ,[ABN_STATUS_CD]
           ,[LEVEL_OF_SERVICE_CD]
           ,[PLACE_OF_SVC_ADMIT_DT_TM]
           ,[PLACE_OF_SVC_TYPE_CD]
           ,[PLACE_OF_SVC_ORG_ID]
           ,[LAST_UTC_TS]
           ,[EST_FINANCIAL_RESP_AMT]
           ,[REFERRAL_SOURCE_CD]
           ,[ADMIT_DECISION_DT_TM]
           ,[ACCIDENT_RELATED_IND]
           ,[DISCH_PRSNL_ID]
           ,[PAYMENT_COLLECTION_STATUS_CD]
           ,[ORDER_SOURCE_CD]
           ,[ADMIT_EARLY_IND]
           ,[TREATMENT_PHASE_CD]
           ,[KIOSK_QUEUE_NBR_TXT]
           ,[KIOSK_QUEUE_NBR_DT_TM]
           ,[CLU_SUBKEY1_FLAG]
           ,[REFER_TO_UNIT_STAFF_CD]
           ,[LODGER_CD]
           ,[COMPLETE_REG_DT_TM]
           ,[COMPLETE_REG_PRSNL_ID]
           ,[CLERGY_VISIT_CD]
           ,[CLIENT_ORGANIZATION_ID]
           ,[PERSON_PLAN_PROFILE_TYPE_CD]
           ,[MILITARY_SERVICE_RELATED_CD]
           ,[INCIDENT_CD]
           ,[ED_REFERRAL_SOURCE_CD]
           ,[INST_ID]
           ,[RowCreated]
           ,[RowAltered])   
		SELECT [ENCNTR_ID]
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
           ,[CREATE_DT_TM]
           ,[CREATE_PRSNL_ID]
           ,[BEG_EFFECTIVE_DT_TM]
           ,[END_EFFECTIVE_DT_TM]
           ,[ENCNTR_CLASS_CD]
           ,[ENCNTR_TYPE_CD]
           ,[ENCNTR_TYPE_CLASS_CD]
           ,[ENCNTR_STATUS_CD]
           ,[PRE_REG_DT_TM]
           ,[PRE_REG_PRSNL_ID]
           ,[REG_DT_TM]
           ,[REG_PRSNL_ID]
           ,[EST_ARRIVE_DT_TM]
           ,[EST_DEPART_DT_TM]
           ,[ARRIVE_DT_TM]
           ,[DEPART_DT_TM]
           ,[ADMIT_TYPE_CD]
           ,[ADMIT_SRC_CD]
           ,[ADMIT_MODE_CD]
           ,[ADMIT_WITH_MEDICATION_CD]
           ,[REFERRING_COMMENT]
           ,[DISCH_DISPOSITION_CD]
           ,[DISCH_TO_LOCTN_CD]
           ,[PREADMIT_NBR]
           ,[PREADMIT_TESTING_CD]
           ,[READMIT_CD]
           ,[ACCOMMODATION_CD]
           ,[ACCOMMODATION_REQUEST_CD]
           ,[ALT_RESULT_DEST_CD]
           ,[AMBULATORY_COND_CD]
           ,[COURTESY_CD]
           ,[DIET_TYPE_CD]
           ,[ISOLATION_CD]
           ,[MED_SERVICE_CD]
           ,[RESULT_DEST_CD]
           ,[CONFID_LEVEL_CD]
           ,[VIP_CD]
           ,[NAME_LAST_KEY]
           ,[NAME_FIRST_KEY]
           ,[NAME_FULL_FORMATTED]
           ,[NAME_LAST]
           ,[NAME_FIRST]
           ,[NAME_PHONETIC]
           ,[SEX_CD]
           ,[BIRTH_DT_CD]
           ,[BIRTH_DT_TM]
           ,[SPECIES_CD]
           ,[DATA_STATUS_CD]
           ,[DATA_STATUS_DT_TM]
           ,[DATA_STATUS_PRSNL_ID]
           ,[CONTRIBUTOR_SYSTEM_CD]
           ,[LOCATION_CD]
           ,[LOC_FACILITY_CD]
           ,[LOC_BUILDING_CD]
           ,[LOC_NURSE_UNIT_CD]
           ,[LOC_ROOM_CD]
           ,[LOC_BED_CD]
           ,[DISCH_DT_TM]
           ,[GUARANTOR_TYPE_CD]
           ,[LOC_TEMP_CD]
           ,[ORGANIZATION_ID]
           ,[REASON_FOR_VISIT]
           ,[ENCNTR_FINANCIAL_ID]
           ,[NAME_FIRST_SYNONYM_ID]
           ,[FINANCIAL_CLASS_CD]
           ,[BBD_PROCEDURE_CD]
           ,[INFO_GIVEN_BY]
           ,[SAFEKEEPING_CD]
           ,[TRAUMA_CD]
           ,[TRIAGE_CD]
           ,[TRIAGE_DT_TM]
           ,[VISITOR_STATUS_CD]
           ,[VALUABLES_CD]
           ,[SECURITY_ACCESS_CD]
           ,[REFER_FACILITY_CD]
           ,[TRAUMA_DT_TM]
           ,[ACCOMP_BY_CD]
           ,[ACCOMMODATION_REASON_CD]
           ,[CHART_COMPLETE_DT_TM]
           ,[ZERO_BALANCE_DT_TM]
           ,[ARCHIVE_DT_TM_EST]
           ,[ARCHIVE_DT_TM_ACT]
           ,[PURGE_DT_TM_EST]
           ,[PURGE_DT_TM_ACT]
           ,[ENCNTR_COMPLETE_DT_TM]
           ,[PA_CURRENT_STATUS_CD]
           ,[PA_CURRENT_STATUS_DT_TM]
           ,[PARENT_RET_CRITERIA_ID]
           ,[SERVICE_CATEGORY_CD]
           ,[CONTRACT_STATUS_CD]
           ,[EST_LENGTH_OF_STAY]
           ,[ALT_LVL_CARE_CD]
           ,[ASSIGN_TO_LOC_DT_TM]
           ,[PROGRAM_SERVICE_CD]
           ,[SPECIALTY_UNIT_CD]
           ,[MENTAL_HEALTH_DT_TM]
           ,[MENTAL_HEALTH_CD]
           ,[DOC_RCVD_DT_TM]
           ,[REFERRAL_RCVD_DT_TM]
           ,[ALT_LVL_CARE_DT_TM]
           ,[ALC_DECOMP_DT_TM]
           ,[REGION_CD]
           ,[SITTER_REQUIRED_CD]
           ,[ALC_REASON_CD]
           ,[PLACEMENT_AUTH_PRSNL_ID]
           ,[PATIENT_CLASSIFICATION_CD]
           ,[MENTAL_CATEGORY_CD]
           ,[PSYCHIATRIC_STATUS_CD]
           ,[INPATIENT_ADMIT_DT_TM]
           ,[RESULT_ACCUMULATION_DT_TM]
           ,[PREGNANCY_STATUS_CD]
           ,[INITIAL_CONTACT_DT_TM]
           ,[ONSET_DT_TM]
           ,[LAST_MENSTRUAL_PERIOD_DT_TM]
           ,[EXPECTED_DELIVERY_DT_TM]
           ,[ABN_STATUS_CD]
           ,[LEVEL_OF_SERVICE_CD]
           ,[PLACE_OF_SVC_ADMIT_DT_TM]
           ,[PLACE_OF_SVC_TYPE_CD]
           ,[PLACE_OF_SVC_ORG_ID]
           ,[LAST_UTC_TS]
           ,[EST_FINANCIAL_RESP_AMT]
           ,[REFERRAL_SOURCE_CD]
           ,[ADMIT_DECISION_DT_TM]
           ,[ACCIDENT_RELATED_IND]
           ,[DISCH_PRSNL_ID]
           ,[PAYMENT_COLLECTION_STATUS_CD]
           ,[ORDER_SOURCE_CD]
           ,[ADMIT_EARLY_IND]
           ,[TREATMENT_PHASE_CD]
           ,[KIOSK_QUEUE_NBR_TXT]
           ,[KIOSK_QUEUE_NBR_DT_TM]
           ,[CLU_SUBKEY1_FLAG]
           ,[REFER_TO_UNIT_STAFF_CD]
           ,[LODGER_CD]
           ,[COMPLETE_REG_DT_TM]
           ,[COMPLETE_REG_PRSNL_ID]
           ,[CLERGY_VISIT_CD]
           ,[CLIENT_ORGANIZATION_ID]
           ,[PERSON_PLAN_PROFILE_TYPE_CD]
           ,[MILITARY_SERVICE_RELATED_CD]
           ,[INCIDENT_CD]
           ,[ED_REFERRAL_SOURCE_CD]
           ,[INST_ID]
           ,GETDATE()
           ,GETDATE()
		FROM  [stage].[ENCOUNTER] Source
		WHERE 1=1
		AND  Not Exists ( Select 1 FROM [cerner].[ENCOUNTER]  Dest with (nolock)
		                  where Dest.[ENCNTR_ID]  = Source.[ENCNTR_ID] );


		SELECT @InsertRows=@@ROWCOUNT
		 
        INSERT INTO [etl].[Manifest]
           ([PackageName]
           ,[InsertRecordCount]
           ,[UpdateRecordCount]
           ,[LoadDateTime]
           ,[RowCreated]
           ,[RowAltered])
     VALUES ('ENCOUNTER',@InsertRows,@UpdatedRows,GetDate(),GetDate(),GetDate());

 
END
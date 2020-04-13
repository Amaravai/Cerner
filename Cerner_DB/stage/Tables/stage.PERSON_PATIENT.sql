﻿CREATE TABLE [stage].[PERSON_PATIENT] (
    [PERSON_ID]                     FLOAT (53)    NULL,
    [UPDT_CNT]                      FLOAT (53)    NULL,
    [UPDT_DT_TM]                    DATETIME      NULL,
    [UPDT_ID]                       FLOAT (53)    NULL,
    [UPDT_TASK]                     FLOAT (53)    NULL,
    [UPDT_APPLCTX]                  FLOAT (53)    NULL,
    [ACTIVE_IND]                    FLOAT (53)    NULL,
    [ACTIVE_STATUS_CD]              FLOAT (53)    NULL,
    [ACTIVE_STATUS_DT_TM]           DATETIME      NULL,
    [ACTIVE_STATUS_PRSNL_ID]        FLOAT (53)    NULL,
    [BEG_EFFECTIVE_DT_TM]           DATETIME      NULL,
    [END_EFFECTIVE_DT_TM]           DATETIME      NULL,
    [ADOPTED_CD]                    FLOAT (53)    NULL,
    [BAD_DEBT_CD]                   FLOAT (53)    NULL,
    [BAPTISED_CD]                   FLOAT (53)    NULL,
    [BIRTH_MULTIPLE_CD]             FLOAT (53)    NULL,
    [BIRTH_ORDER]                   FLOAT (53)    NULL,
    [BIRTH_LENGTH]                  FLOAT (53)    NULL,
    [BIRTH_LENGTH_UNITS_CD]         FLOAT (53)    NULL,
    [BIRTH_NAME]                    VARCHAR (100) NULL,
    [BIRTH_WEIGHT]                  FLOAT (53)    NULL,
    [BIRTH_WEIGHT_UNITS_CD]         FLOAT (53)    NULL,
    [CHURCH_CD]                     FLOAT (53)    NULL,
    [CREDIT_HRS_TAKING]             FLOAT (53)    NULL,
    [CUMM_LEAVE_DAYS]               FLOAT (53)    NULL,
    [CURRENT_BALANCE]               FLOAT (53)    NULL,
    [CURRENT_GRADE]                 FLOAT (53)    NULL,
    [CUSTODY_CD]                    FLOAT (53)    NULL,
    [DEGREE_COMPLETE_CD]            FLOAT (53)    NULL,
    [DIET_TYPE_CD]                  FLOAT (53)    NULL,
    [FAMILY_INCOME]                 FLOAT (53)    NULL,
    [FAMILY_SIZE]                   FLOAT (53)    NULL,
    [HIGHEST_GRADE_COMPLETE_CD]     FLOAT (53)    NULL,
    [IMMUN_ON_FILE_CD]              FLOAT (53)    NULL,
    [INTERP_REQUIRED_CD]            FLOAT (53)    NULL,
    [INTERP_TYPE_CD]                FLOAT (53)    NULL,
    [MICROFILM_CD]                  FLOAT (53)    NULL,
    [NBR_OF_BROTHERS]               FLOAT (53)    NULL,
    [NBR_OF_SISTERS]                FLOAT (53)    NULL,
    [ORGAN_DONOR_CD]                FLOAT (53)    NULL,
    [PARENT_MARITAL_STATUS_CD]      FLOAT (53)    NULL,
    [SMOKES_CD]                     FLOAT (53)    NULL,
    [TUMOR_REGISTRY_CD]             FLOAT (53)    NULL,
    [LAST_BILL_DT_TM]               DATETIME      NULL,
    [LAST_BIND_DT_TM]               DATETIME      NULL,
    [LAST_DISCHARGE_DT_TM]          DATETIME      NULL,
    [LAST_EVENT_UPDT_DT_TM]         DATETIME      NULL,
    [LAST_PAYMENT_DT_TM]            DATETIME      NULL,
    [LAST_ATD_ACTIVITY_DT_TM]       DATETIME      NULL,
    [DATA_STATUS_CD]                FLOAT (53)    NULL,
    [DATA_STATUS_DT_TM]             DATETIME      NULL,
    [DATA_STATUS_PRSNL_ID]          FLOAT (53)    NULL,
    [CONTRIBUTOR_SYSTEM_CD]         FLOAT (53)    NULL,
    [STUDENT_CD]                    FLOAT (53)    NULL,
    [LIVING_DEPENDENCY_CD]          FLOAT (53)    NULL,
    [LIVING_ARRANGEMENT_CD]         FLOAT (53)    NULL,
    [LIVING_WILL_CD]                FLOAT (53)    NULL,
    [NBR_OF_PREGNANCIES]            FLOAT (53)    NULL,
    [LAST_TRAUMA_DT_TM]             DATETIME      NULL,
    [MOTHER_IDENTIFIER]             VARCHAR (100) NULL,
    [MOTHER_IDENTIFIER_CD]          FLOAT (53)    NULL,
    [DISEASE_ALERT_CD]              FLOAT (53)    NULL,
    [PROCESS_ALERT_CD]              FLOAT (53)    NULL,
    [CONTACT_LIST_CD]               FLOAT (53)    NULL,
    [GEST_AGE_AT_BIRTH]             FLOAT (53)    NULL,
    [GEST_AGE_METHOD_CD]            FLOAT (53)    NULL,
    [CONTACT_TIME]                  VARCHAR (255) NULL,
    [CALLBACK_CONSENT_CD]           FLOAT (53)    NULL,
    [CONTACT_METHOD_CD]             FLOAT (53)    NULL,
    [WRITTEN_FORMAT_CD]             FLOAT (53)    NULL,
    [PREV_CONTACT_IND]              FLOAT (53)    NULL,
    [SOURCE_VERSION_NUMBER]         VARCHAR (255) NULL,
    [BIRTH_ORDER_CD]                FLOAT (53)    NULL,
    [SOURCE_LAST_SYNC_DT_TM]        DATETIME      NULL,
    [SOURCE_SYNC_LEVEL_FLAG]        FLOAT (53)    NULL,
    [IQH_PARTICIPANT_CD]            FLOAT (53)    NULL,
    [FIN_STATEMENT_VERIFIED_DT_TM]  DATETIME      NULL,
    [FAMILY_NBR_OF_MINORS_CNT]      FLOAT (53)    NULL,
    [FIN_STATEMENT_EXPIRE_DT_TM]    DATETIME      NULL,
    [LAST_UTC_TS]                   VARCHAR (75)  NULL,
    [ADVOCATE_REQUIRED_CD]          FLOAT (53)    NULL,
    [EXT_TRANSPORT_REQUIRED_CD]     FLOAT (53)    NULL,
    [PHONE_CONTACT_TYPE_CD]         FLOAT (53)    NULL,
    [DEMOG_VERIFY_DT_TM]            DATETIME      NULL,
    [BIRTH_CERTIFICATE_IDENT]       VARCHAR (100) NULL,
    [DEATH_CERTIFICATE_IDENT]       VARCHAR (100) NULL,
    [HEALTH_INFO_ACCESS_OFFERED_CD] FLOAT (53)    NULL,
    [HEALTH_APP_ACCESS_OFFERED_CD]  FLOAT (53)    NULL,
    [BIRTH_SEX_CD]                  FLOAT (53)    NULL,
    [FINANCIAL_RISK_LEVEL_CD]       FLOAT (53)    NULL,
    [PRIMARY_CARE_HOME_CD]          FLOAT (53)    NULL,
    [CONTACT_FOR_RESEARCH_PERM_CD]  FLOAT (53)    NULL,
    [INST_ID]                       FLOAT (53)    NULL
);

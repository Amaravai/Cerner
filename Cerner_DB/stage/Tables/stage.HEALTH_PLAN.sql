﻿CREATE TABLE [stage].[HEALTH_PLAN] (
    [HEALTH_PLAN_ID]           FLOAT (53)    NULL,
    [UPDT_CNT]                 FLOAT (53)    NULL,
    [UPDT_DT_TM]               DATETIME      NULL,
    [UPDT_ID]                  FLOAT (53)    NULL,
    [UPDT_TASK]                FLOAT (53)    NULL,
    [UPDT_APPLCTX]             FLOAT (53)    NULL,
    [ACTIVE_IND]               FLOAT (53)    NULL,
    [ACTIVE_STATUS_CD]         FLOAT (53)    NULL,
    [ACTIVE_STATUS_DT_TM]      DATETIME      NULL,
    [ACTIVE_STATUS_PRSNL_ID]   FLOAT (53)    NULL,
    [BEG_EFFECTIVE_DT_TM]      DATETIME      NULL,
    [END_EFFECTIVE_DT_TM]      DATETIME      NULL,
    [DATA_STATUS_CD]           FLOAT (53)    NULL,
    [DATA_STATUS_DT_TM]        DATETIME      NULL,
    [DATA_STATUS_PRSNL_ID]     FLOAT (53)    NULL,
    [CONTRIBUTOR_SYSTEM_CD]    FLOAT (53)    NULL,
    [PLAN_TYPE_CD]             FLOAT (53)    NULL,
    [PLAN_NAME]                VARCHAR (100) NULL,
    [PLAN_DESC]                VARCHAR (255) NULL,
    [FINANCIAL_CLASS_CD]       FLOAT (53)    NULL,
    [FT_ENTITY_NAME]           VARCHAR (32)  NULL,
    [FT_ENTITY_ID]             FLOAT (53)    NULL,
    [BABY_COVERAGE_CD]         FLOAT (53)    NULL,
    [COMB_BABY_BILL_CD]        FLOAT (53)    NULL,
    [PLAN_CLASS_CD]            FLOAT (53)    NULL,
    [GROUP_NBR]                VARCHAR (100) NULL,
    [GROUP_NAME]               VARCHAR (200) NULL,
    [POLICY_NBR]               VARCHAR (100) NULL,
    [PLAN_NAME_KEY]            VARCHAR (100) NULL,
    [PLAN_NAME_KEY_NLS]        VARCHAR (202) NULL,
    [PAT_BILL_PREF_FLAG]       FLOAT (53)    NULL,
    [PRI_CONCURRENT_IND]       FLOAT (53)    NULL,
    [SEC_CONCURRENT_IND]       FLOAT (53)    NULL,
    [PRODUCT_CD]               FLOAT (53)    NULL,
    [BENEFIT_SET_NAME]         VARCHAR (255) NULL,
    [LOGICAL_DOMAIN_ID]        FLOAT (53)    NULL,
    [FB_BENEFIT_SET_UID]       VARCHAR (255) NULL,
    [SERVICE_TYPE_CD]          FLOAT (53)    NULL,
    [PLAN_NAME_KEY_A_NLS]      VARCHAR (400) NULL,
    [PLAN_CATEGORY_CD]         FLOAT (53)    NULL,
    [LAST_UTC_TS]              VARCHAR (75)  NULL,
    [PROVIDER_AFFILIATION_TXT] VARCHAR (100) NULL,
    [INST_ID]                  FLOAT (53)    NULL
);

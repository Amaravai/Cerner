﻿CREATE TABLE [stage].[PRSNL] (
    [PERSON_ID]              FLOAT (53)    NULL,
    [UPDT_CNT]               FLOAT (53)    NULL,
    [UPDT_DT_TM]             DATETIME      NULL,
    [UPDT_ID]                FLOAT (53)    NULL,
    [UPDT_TASK]              FLOAT (53)    NULL,
    [UPDT_APPLCTX]           FLOAT (53)    NULL,
    [ACTIVE_IND]             FLOAT (53)    NULL,
    [ACTIVE_STATUS_CD]       FLOAT (53)    NULL,
    [ACTIVE_STATUS_DT_TM]    DATETIME      NULL,
    [ACTIVE_STATUS_PRSNL_ID] FLOAT (53)    NULL,
    [CREATE_PRSNL_ID]        FLOAT (53)    NULL,
    [CREATE_DT_TM]           DATETIME      NULL,
    [NAME_LAST_KEY]          VARCHAR (100) NULL,
    [NAME_FIRST_KEY]         VARCHAR (100) NULL,
    [PRSNL_TYPE_CD]          FLOAT (53)    NULL,
    [NAME_FULL_FORMATTED]    VARCHAR (100) NULL,
    [PASSWORD]               VARCHAR (100) NULL,
    [EMAIL]                  VARCHAR (100) NULL,
    [PHYSICIAN_IND]          FLOAT (53)    NULL,
    [POSITION_CD]            FLOAT (53)    NULL,
    [DEPARTMENT_CD]          FLOAT (53)    NULL,
    [FREE_TEXT_IND]          FLOAT (53)    NULL,
    [BEG_EFFECTIVE_DT_TM]    DATETIME      NULL,
    [END_EFFECTIVE_DT_TM]    DATETIME      NULL,
    [SECTION_CD]             FLOAT (53)    NULL,
    [DATA_STATUS_CD]         FLOAT (53)    NULL,
    [DATA_STATUS_DT_TM]      DATETIME      NULL,
    [DATA_STATUS_PRSNL_ID]   FLOAT (53)    NULL,
    [CONTRIBUTOR_SYSTEM_CD]  FLOAT (53)    NULL,
    [NAME_LAST]              VARCHAR (200) NULL,
    [NAME_FIRST]             VARCHAR (200) NULL,
    [USERNAME]               VARCHAR (50)  NULL,
    [FT_ENTITY_NAME]         VARCHAR (32)  NULL,
    [FT_ENTITY_ID]           FLOAT (53)    NULL,
    [PRIM_ASSIGN_LOC_CD]     FLOAT (53)    NULL,
    [LOG_ACCESS_IND]         FLOAT (53)    NULL,
    [LOG_LEVEL]              FLOAT (53)    NULL,
    [NAME_LAST_KEY_NLS]      VARCHAR (202) NULL,
    [NAME_FIRST_KEY_NLS]     VARCHAR (202) NULL,
    [PHYSICIAN_STATUS_CD]    FLOAT (53)    NULL,
    [LOGICAL_DOMAIN_GRP_ID]  FLOAT (53)    NULL,
    [LOGICAL_DOMAIN_ID]      FLOAT (53)    NULL,
    [NAME_LAST_KEY_A_NLS]    VARCHAR (400) NULL,
    [NAME_FIRST_KEY_A_NLS]   VARCHAR (400) NULL,
    [LAST_UTC_TS]            VARCHAR (75)  NULL,
    [EXTERNAL_IND]           FLOAT (53)    NULL,
    [INST_ID]                FLOAT (53)    NULL
);

﻿CREATE TABLE [cerner].[PERSON_ALIAS] (
    [PERSON_ALIAS_ID]               FLOAT (53)    NOT NULL,
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
    [ALIAS_POOL_CD]                 FLOAT (53)    NULL,
    [PERSON_ALIAS_TYPE_CD]          FLOAT (53)    NULL,
    [ALIAS]                         VARCHAR (200) NULL,
    [PERSON_ALIAS_SUB_TYPE_CD]      FLOAT (53)    NULL,
    [CHECK_DIGIT]                   FLOAT (53)    NULL,
    [CHECK_DIGIT_METHOD_CD]         FLOAT (53)    NULL,
    [BEG_EFFECTIVE_DT_TM]           DATETIME      NULL,
    [END_EFFECTIVE_DT_TM]           DATETIME      NULL,
    [DATA_STATUS_CD]                FLOAT (53)    NULL,
    [DATA_STATUS_DT_TM]             DATETIME      NULL,
    [DATA_STATUS_PRSNL_ID]          FLOAT (53)    NULL,
    [CONTRIBUTOR_SYSTEM_CD]         FLOAT (53)    NULL,
    [VISIT_SEQ_NBR]                 FLOAT (53)    NULL,
    [HEALTH_CARD_PROVINCE]          VARCHAR (3)   NULL,
    [HEALTH_CARD_VER_CODE]          VARCHAR (3)   NULL,
    [ASSIGN_AUTHORITY_SYS_CD]       FLOAT (53)    NULL,
    [HEALTH_CARD_ISSUE_DT_TM]       DATETIME      NULL,
    [HEALTH_CARD_EXPIRY_DT_TM]      DATETIME      NULL,
    [HEALTH_CARD_TYPE]              VARCHAR (32)  NULL,
    [PERSON_ALIAS_STATUS_CD]        FLOAT (53)    NULL,
    [LAST_UTC_TS]                   VARCHAR (75)  NULL,
    [ALIAS_EXPIRY_DT_TM]            DATETIME      NULL,
    [PERSON_ALIAS_RECORD_STATUS_CD] FLOAT (53)    NULL,
    [INST_ID]                       FLOAT (53)    NULL,
    [RowCreated]                    DATETIME2 (3) NOT NULL,
    [RowModified]                   DATETIME2 (3) NULL,
    [RowDeleted]                    DATETIME2 (0) NULL,
    [RowAltered]                    DATETIME2 (0) NOT NULL, 
    CONSTRAINT [PK_PERSON_ALIAS] PRIMARY KEY ([PERSON_ALIAS_ID])
);


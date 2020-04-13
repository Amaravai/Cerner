﻿CREATE TABLE [cerner].[PERSON_PRSNL_RELTN] (
    [PERSON_PRSNL_RELTN_ID]  FLOAT (53)    NOT NULL,
    [PERSON_ID]              FLOAT (53)    NULL,
    [PERSON_PRSNL_R_CD]      FLOAT (53)    NULL,
    [PRSNL_PERSON_ID]        FLOAT (53)    NULL,
    [UPDT_CNT]               FLOAT (53)    NULL,
    [UPDT_DT_TM]             DATETIME      NULL,
    [UPDT_ID]                FLOAT (53)    NULL,
    [UPDT_TASK]              FLOAT (53)    NULL,
    [UPDT_APPLCTX]           FLOAT (53)    NULL,
    [ACTIVE_IND]             FLOAT (53)    NULL,
    [ACTIVE_STATUS_CD]       FLOAT (53)    NULL,
    [ACTIVE_STATUS_DT_TM]    DATETIME      NULL,
    [ACTIVE_STATUS_PRSNL_ID] FLOAT (53)    NULL,
    [BEG_EFFECTIVE_DT_TM]    DATETIME      NULL,
    [END_EFFECTIVE_DT_TM]    DATETIME      NULL,
    [DATA_STATUS_CD]         FLOAT (53)    NULL,
    [DATA_STATUS_DT_TM]      DATETIME      NULL,
    [DATA_STATUS_PRSNL_ID]   FLOAT (53)    NULL,
    [CONTRIBUTOR_SYSTEM_CD]  FLOAT (53)    NULL,
    [FREE_TEXT_CD]           FLOAT (53)    NULL,
    [FT_PRSNL_NAME]          VARCHAR (100) NULL,
    [MANUAL_CREATE_IND]      FLOAT (53)    NULL,
    [MANUAL_CREATE_BY_ID]    FLOAT (53)    NULL,
    [MANUAL_CREATE_DT_TM]    DATETIME      NULL,
    [MANUAL_INACT_IND]       FLOAT (53)    NULL,
    [MANUAL_INACT_BY_ID]     FLOAT (53)    NULL,
    [MANUAL_INACT_DT_TM]     DATETIME      NULL,
    [PRIORITY_SEQ]           FLOAT (53)    NULL,
    [INTERNAL_SEQ]           FLOAT (53)    NULL,
    [NOTIFICATION_CD]        FLOAT (53)    NULL,
    [SOURCE_IDENTIFIER]      VARCHAR (255) NULL,
    [LAST_UTC_TS]            VARCHAR (75)  NULL,
    [INST_ID]                FLOAT (53)    NULL,
    [RowCreated]             DATETIME2 (3) NOT NULL,
    [RowModified]            DATETIME2 (3) NULL,
    [RowDeleted]             DATETIME2 (0) NULL,
    [RowAltered]             DATETIME2 (0) NOT NULL, 
    CONSTRAINT [PK_PERSON_PRSNL_RELTN] PRIMARY KEY ([PERSON_PRSNL_RELTN_ID])
);


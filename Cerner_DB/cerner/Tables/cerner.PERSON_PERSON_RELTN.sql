﻿CREATE TABLE [cerner].[PERSON_PERSON_RELTN] (
    [PERSON_PERSON_RELTN_ID]   FLOAT (53)    NOT NULL,
    [PERSON_RELTN_TYPE_CD]     FLOAT (53)    NULL,
    [PERSON_ID]                FLOAT (53)    NULL,
    [PERSON_RELTN_CD]          FLOAT (53)    NULL,
    [RELATED_PERSON_RELTN_CD]  FLOAT (53)    NULL,
    [RELATED_PERSON_ID]        FLOAT (53)    NULL,
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
    [CONTACT_ROLE_CD]          FLOAT (53)    NULL,
    [GENETIC_RELATIONSHIP_IND] FLOAT (53)    NULL,
    [LIVING_WITH_IND]          FLOAT (53)    NULL,
    [VISITATION_ALLOWED_CD]    FLOAT (53)    NULL,
    [PRIORITY_SEQ]             FLOAT (53)    NULL,
    [FREE_TEXT_CD]             FLOAT (53)    NULL,
    [FT_REL_PERSON_NAME]       VARCHAR (100) NULL,
    [INTERNAL_SEQ]             FLOAT (53)    NULL,
    [COPY_CORRESPONDENCE_CD]   FLOAT (53)    NULL,
    [FAMILY_RELTN_SUB_TYPE_CD] FLOAT (53)    NULL,
    [DEFAULT_RELTN_IND]        FLOAT (53)    NULL,
    [SOURCE_IDENTIFIER]        VARCHAR (255) NULL,
    [RELATION_SEQ]             FLOAT (53)    NULL,
    [LAST_UTC_TS]              VARCHAR (75)  NULL,
    [INST_ID]                  FLOAT (53)    NULL,
    [RowCreated]               DATETIME2 (3) NOT NULL,
    [RowModified]              DATETIME2 (3) NULL,
    [RowDeleted]               DATETIME2 (0) NULL,
    [RowAltered]               DATETIME2 (0) NOT NULL, 
    CONSTRAINT [PK_PERSON_PERSON_RELTN] PRIMARY KEY ([PERSON_PERSON_RELTN_ID])
);


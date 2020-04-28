CREATE TABLE [etl].[Manifest]
(
	[Id]					[int] IDENTITY(1,1) NOT NULL,
	[PackageName]			[varchar](100) NOT NULL,
	[InsertRecordCount]		[int] NOT NULL,
	[UpdateRecordCount]		[int] NOT NULL,
	[LoadDateTime]			[datetime] NOT NULL,
	[OracleRowCount]         [int] NULL,
	[SqlServerRowCount]     [int] NULL,
	[RowCreated]			[datetime2](3) NOT NULL,
	[RowModified]			[datetime2](3) NULL,
	[RowDeleted]			[datetime2](0) NULL,
	[RowAltered]			[datetime2](0)  NOT NULL
)

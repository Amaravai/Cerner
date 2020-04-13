CREATE TABLE [etl].[WaterMark]
(
	[SchemaName]				[varchar](255) NULL,
	[TableName]					[varchar](255) NULL,
	[LoadType]					[varchar](255) NULL,
	[WaterMarkLowIdentifier]	[varchar](255) NULL,
	[WaterMarkLowValue]			[datetime] NULL,
	[WaterMarkHighIdentifier]	[varchar](255) NULL,
	[WaterMarkHighValue]		[datetime] NULL,
	[ActiveFlag]				[char](1) NULL,
	[RowsStaged]				[Int] Null,
	[RowCreated]				[datetime2](3) NOT NULL,
	[RowModified]				[datetime2](3) NULL,
	[RowDeleted]				[datetime2](0) NULL,
	[RowAltered]				[datetime2](0)  NOT NULL
)

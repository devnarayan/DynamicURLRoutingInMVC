CREATE TABLE [dbo].[ContentType] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [ContentType] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_ContentType] PRIMARY KEY CLUSTERED ([Id] ASC)
);


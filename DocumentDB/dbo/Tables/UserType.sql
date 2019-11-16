CREATE TABLE [dbo].[UserType] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [UserType] NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED ([Id] ASC)
);


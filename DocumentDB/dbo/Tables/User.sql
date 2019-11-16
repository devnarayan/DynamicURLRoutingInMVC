CREATE TABLE [dbo].[User] (
    [Id]         INT           IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (50) NOT NULL,
    [Title]      NVARCHAR (50) NOT NULL,
    [UserTypeId] INT           NOT NULL,
    [Status]     BIT           NOT NULL,
    [UserName]   NVARCHAR (50) NULL,
    [Password]   NVARCHAR (50) NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_User_UserType] FOREIGN KEY ([UserTypeId]) REFERENCES [dbo].[UserType] ([Id])
);


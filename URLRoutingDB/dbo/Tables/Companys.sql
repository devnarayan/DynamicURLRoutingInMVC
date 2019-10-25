CREATE TABLE [dbo].[Companys] (
    [Id]              INT            NOT NULL,
    [CompanyName]     NVARCHAR (50)  NOT NULL,
    [SeoFriendlyName] NVARCHAR (MAX) NOT NULL,
    [IsActive]        BIT            NOT NULL,
    [City]            VARCHAR (50)   NULL,
    [State]           VARCHAR (50)   NULL,
    [Country]         VARCHAR (50)   NULL,
    [Photo]           VARCHAR (50)   NULL,
    [StartDate]       DATETIME       NULL,
    [Employees]       INT            NULL,
    [Decription]      NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_Companys] PRIMARY KEY CLUSTERED ([Id] ASC)
);


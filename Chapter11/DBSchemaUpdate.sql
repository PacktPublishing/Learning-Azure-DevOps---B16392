/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 8/24/2020 12:35:05 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = '__MigrationHistory'
   )
BEGIN
    CREATE TABLE [dbo].[__MigrationHistory](
        [MigrationId] [nvarchar](150) NOT NULL,
        [ContextKey] [nvarchar](300) NOT NULL,
        [Model] [varbinary](max) NOT NULL,
        [ProductVersion] [nvarchar](32) NOT NULL,
    CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
    (
        [MigrationId] ASC,
        [ContextKey] ASC
    )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    
END
/****** Object:  Table [dbo].[Todoes]    Script Date: 8/24/2020 12:35:05 PM ******/
SET ANSI_NULLS ON

SET QUOTED_IDENTIFIER ON

IF NOT EXISTS
   (  SELECT [name]
      FROM sys.tables
      WHERE [name] = 'Todoes'
   )
BEGIN
    CREATE TABLE [dbo].[Todoes](
        [ID] [int] IDENTITY(1,1) NOT NULL,
        [Description] [nvarchar](max) NULL,
        [CreatedDate] [datetime] NOT NULL,
    CONSTRAINT [PK_dbo.Todoes] PRIMARY KEY CLUSTERED 
    (
        [ID] ASC
    )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
    

END

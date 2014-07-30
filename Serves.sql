USE [Recipe]
GO

/****** Object:  Table [dbo].[Serves]    Script Date: 7/30/2014 3:55:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Serves](
	[RecipeId] [nchar](10) NULL,
	[ServesId] [int] NOT NULL,
	[Serves] [int] NULL,
 CONSTRAINT [PK_Serves] PRIMARY KEY CLUSTERED 
(
	[ServesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



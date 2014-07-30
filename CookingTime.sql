USE [Recipe]
GO

/****** Object:  Table [dbo].[CookingTime]    Script Date: 7/30/2014 3:51:44 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CookingTime](
	[RecipeId] [int] NULL,
	[CookingTime] [int] NOT NULL,
	[CookingTimeId] [int] NOT NULL,
 CONSTRAINT [PK_CookingTime] PRIMARY KEY CLUSTERED 
(
	[CookingTimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO



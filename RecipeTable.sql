USE [Recipe]
GO

/****** Object:  Table [dbo].[Recipe]    Script Date: 7/30/2014 3:54:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Recipe](
	[RecipeId] [int] NOT NULL,
	[RecipeName] [nchar](1000) NULL,
	[CookingTime] [time](7) NOT NULL,
	[Serves] [int] NULL,
	[Ingredient] [nchar](1000) NULL,
	[CookingTimeId] [int] NULL,
	[ServesId] [int] NULL,
	[IngredientId] [int] NULL,
 CONSTRAINT [PK_Recipe] PRIMARY KEY CLUSTERED 
(
	[RecipeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_CookingTime] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[CookingTime] ([CookingTimeId])
GO

ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_CookingTime]
GO

ALTER TABLE [dbo].[Recipe]  WITH CHECK ADD  CONSTRAINT [FK_Recipe_Serves] FOREIGN KEY([RecipeId])
REFERENCES [dbo].[Serves] ([ServesId])
GO

ALTER TABLE [dbo].[Recipe] CHECK CONSTRAINT [FK_Recipe_Serves]
GO



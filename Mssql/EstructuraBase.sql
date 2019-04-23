USE [Base]
GO

/****** Object:  Table [dbo].[datos]    Script Date: 23/04/2019 15:35:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[datos](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[temperatura] [decimal](10, 2) NULL,
	[humedad] [decimal](10, 2) NULL,
	[presion] [decimal](10, 2) NULL,
 CONSTRAINT [PK_datos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO



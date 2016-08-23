
CREATE TABLE [dbo].[CDDL_DSToKhai](
	[SoTK] [int] NOT NULL,
	[Ma_LH] [char](5) NOT NULL,
	[MA_HQ] [char](6) NOT NULL,
	[NamDK] [smallint] NOT NULL,
 CONSTRAINT [PK_CDDL_DSToKhai] PRIMARY KEY CLUSTERED 
(
	[SoTK] ASC,
	[Ma_LH] ASC,
	[MA_HQ] ASC,
	[NamDK] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
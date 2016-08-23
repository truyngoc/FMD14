
CREATE TABLE [dbo].[CDDL_DSHDGC](
	[So_HD] varchar(80) not null,
	[Ma_HQHD] varchar(6) not null,
	[DVGC] varchar(14) not null,
	[Ngay_Ky] datetime not null
 CONSTRAINT [PK_CDDL_DSHDGC] PRIMARY KEY CLUSTERED 
(
	[So_HD] ASC,
	[Ma_HQHD] ASC,
	[DVGC] ASC,
	[Ngay_Ky] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
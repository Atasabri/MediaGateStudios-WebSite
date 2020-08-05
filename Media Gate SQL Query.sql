USE [MediaGate]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Type] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Applicants]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicants](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
	[CareersId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Career_Requirment]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Career_Requirment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Reqirment_ID] [int] NULL,
	[Career_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Career_Skill]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Career_Skill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Skill_ID] [int] NULL,
	[Career_ID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Careers]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Careers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Experience] [nvarchar](max) NOT NULL,
	[Type] [nvarchar](max) NOT NULL,
	[Salary] [float] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Subject] [nvarchar](50) NOT NULL,
	[Message] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Content]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Content_Details]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Content_Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Detail] [nvarchar](100) NOT NULL,
	[content_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Custom_Price]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Custom_Price](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DateOfDeadLine] [datetime] NULL,
	[Message] [nvarchar](max) NULL,
	[Contact] [nvarchar](max) NULL,
	[Other] [nvarchar](max) NULL,
	[UsersID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[custom_videos]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custom_videos](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Video_TypeID] [int] NULL,
	[CustomOrder_Id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Price_Orders]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price_Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PricingId] [int] NOT NULL,
	[UsersID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pricings]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pricings](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Protoflios]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Protoflios](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Requirments]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requirments](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Service_Details]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service_Details](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Detail] [nvarchar](max) NOT NULL,
	[ServicesId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Services]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Skills]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Subscripers]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subscripers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teams]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teams](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Job] [nvarchar](50) NOT NULL,
	[Facebook] [nvarchar](max) NOT NULL,
	[Twitter] [nvarchar](max) NOT NULL,
	[Instgram] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [int] NOT NULL,
	[Country] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[video_type]    Script Date: 9/18/2017 1:43:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[video_type](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Admins] ON 

GO
INSERT [dbo].[Admins] ([ID], [Name], [Password], [Type]) VALUES (1, N'Ata Sabri', N'01142229025', 1)
GO
INSERT [dbo].[Admins] ([ID], [Name], [Password], [Type]) VALUES (2, N'Ata Ahmed', N'1234', 0)
GO
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Applicants] ON 

GO
INSERT [dbo].[Applicants] ([ID], [Name], [Email], [Phone], [Message], [CareersId]) VALUES (1012, N'Ata Sabri', N'ataeldon@gmail.com', 1142229025, N'nmmmmmmm', 1010)
GO
SET IDENTITY_INSERT [dbo].[Applicants] OFF
GO
SET IDENTITY_INSERT [dbo].[Career_Requirment] ON 

GO
INSERT [dbo].[Career_Requirment] ([ID], [Reqirment_ID], [Career_ID]) VALUES (1015, 1004, 1010)
GO
SET IDENTITY_INSERT [dbo].[Career_Requirment] OFF
GO
SET IDENTITY_INSERT [dbo].[Career_Skill] ON 

GO
INSERT [dbo].[Career_Skill] ([ID], [Skill_ID], [Career_ID]) VALUES (1014, 1004, 1010)
GO
SET IDENTITY_INSERT [dbo].[Career_Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[Careers] ON 

GO
INSERT [dbo].[Careers] ([ID], [Name], [Experience], [Type], [Salary], [Description]) VALUES (1010, N'dfd', N'4 years', N'full time', 4000, N'you must be near us')
GO
SET IDENTITY_INSERT [dbo].[Careers] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

GO
INSERT [dbo].[Content] ([ID], [Name], [Description]) VALUES (2, N'Content', N'jhhhhhhhhhhhhssdsdsd')
GO
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
SET IDENTITY_INSERT [dbo].[Content_Details] ON 

GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (2, N'Detail 1', 2)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (3, N'Detail 2', 2)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (5, N'Detail 4', 2)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (6, N'Detail 4', 2)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (7, N'Detail 5', 2)
GO
SET IDENTITY_INSERT [dbo].[Content_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Price_Orders] ON 

GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1008, 1006, 15, CAST(0x0000A7F0015EA02E AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Price_Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Pricings] ON 

GO
INSERT [dbo].[Pricings] ([ID], [Name]) VALUES (1005, N'Price 1')
GO
INSERT [dbo].[Pricings] ([ID], [Name]) VALUES (1006, N'Price 2')
GO
INSERT [dbo].[Pricings] ([ID], [Name]) VALUES (1007, N'price 3')
GO
SET IDENTITY_INSERT [dbo].[Pricings] OFF
GO
SET IDENTITY_INSERT [dbo].[Protoflios] ON 

GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (18, N'Test 1')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (19, N'test 2')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (20, N'test 3')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (21, N'TEST 4')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (22, N'Video 1')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (23, N'video 2')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (24, N'video 3')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (25, N'pdf 1')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (26, N'pdf 2')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (27, N'Ata')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (29, N'Love')
GO
SET IDENTITY_INSERT [dbo].[Protoflios] OFF
GO
SET IDENTITY_INSERT [dbo].[Requirments] ON 

GO
INSERT [dbo].[Requirments] ([ID], [Name]) VALUES (1004, N'requirment 1')
GO
INSERT [dbo].[Requirments] ([ID], [Name]) VALUES (1005, N'requirment 2')
GO
INSERT [dbo].[Requirments] ([ID], [Name]) VALUES (1006, N'requirment 3')
GO
SET IDENTITY_INSERT [dbo].[Requirments] OFF
GO
SET IDENTITY_INSERT [dbo].[Service_Details] ON 

GO
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1050, N'TEST 1', 1027)
GO
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1051, N'TEST 2', 1027)
GO
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1052, N'TEST 3', 1027)
GO
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1053, N'Detail 4', 1028)
GO
SET IDENTITY_INSERT [dbo].[Service_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

GO
INSERT [dbo].[Services] ([ID], [Name], [Description]) VALUES (1027, N'Media Production', N'Test')
GO
INSERT [dbo].[Services] ([ID], [Name], [Description]) VALUES (1028, N'Ata Sabri', N'KKKK')
GO
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

GO
INSERT [dbo].[Skills] ([ID], [Name]) VALUES (1004, N'skill 1')
GO
INSERT [dbo].[Skills] ([ID], [Name]) VALUES (1005, N'skill 2')
GO
INSERT [dbo].[Skills] ([ID], [Name]) VALUES (1006, N'skill 3')
GO
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

GO
INSERT [dbo].[Teams] ([ID], [Name], [Job], [Facebook], [Twitter], [Instgram]) VALUES (11, N'Ata Sabri', N'.Net Developer', N'https://www.facebook.com/ata.cristiano.65', N'https://twitter.com/AtaEldon1', N'https://www.instagram.com/ata_sabri/?hl=en')
GO
INSERT [dbo].[Teams] ([ID], [Name], [Job], [Facebook], [Twitter], [Instgram]) VALUES (12, N'Noha Gamal', N'BR', N'FaceBook', N'Twitter', N'Instgram')
GO
INSERT [dbo].[Teams] ([ID], [Name], [Job], [Facebook], [Twitter], [Instgram]) VALUES (13, N'Mirna Belal', N'BR', N'FaceBook', N'Twitter', N'Instgram')
GO
INSERT [dbo].[Teams] ([ID], [Name], [Job], [Facebook], [Twitter], [Instgram]) VALUES (14, N'TEST', N'BR', N'FaceBook', N'Twitter', N'Instgram')
GO
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (15, N'Ata sabri', N'ataeldon@gmail.com', N'0123', 1142229025, N'Egypt')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[video_type] ON 

GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (7, N'Media')
GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (8, N'Love')
GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (9, N'Animation')
GO
SET IDENTITY_INSERT [dbo].[video_type] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Users]    Script Date: 9/18/2017 1:43:39 PM ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [IX_Users] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_CareersApplicants] FOREIGN KEY([CareersId])
REFERENCES [dbo].[Careers] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_CareersApplicants]
GO
ALTER TABLE [dbo].[Career_Requirment]  WITH CHECK ADD  CONSTRAINT [FK__Career_Re__Caree__4D94879B] FOREIGN KEY([Career_ID])
REFERENCES [dbo].[Careers] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Career_Requirment] CHECK CONSTRAINT [FK__Career_Re__Caree__4D94879B]
GO
ALTER TABLE [dbo].[Career_Requirment]  WITH CHECK ADD  CONSTRAINT [FK__Career_Re__Reqir__4CA06362] FOREIGN KEY([Reqirment_ID])
REFERENCES [dbo].[Requirments] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Career_Requirment] CHECK CONSTRAINT [FK__Career_Re__Reqir__4CA06362]
GO
ALTER TABLE [dbo].[Career_Skill]  WITH CHECK ADD  CONSTRAINT [FK__Career_Sk__Caree__534D60F1] FOREIGN KEY([Career_ID])
REFERENCES [dbo].[Careers] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Career_Skill] CHECK CONSTRAINT [FK__Career_Sk__Caree__534D60F1]
GO
ALTER TABLE [dbo].[Career_Skill]  WITH CHECK ADD  CONSTRAINT [FK__Career_Sk__Skill__52593CB8] FOREIGN KEY([Skill_ID])
REFERENCES [dbo].[Skills] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Career_Skill] CHECK CONSTRAINT [FK__Career_Sk__Skill__52593CB8]
GO
ALTER TABLE [dbo].[Content_Details]  WITH CHECK ADD  CONSTRAINT [FK__Content_D__conte__71D1E811] FOREIGN KEY([content_ID])
REFERENCES [dbo].[Content] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Content_Details] CHECK CONSTRAINT [FK__Content_D__conte__71D1E811]
GO
ALTER TABLE [dbo].[Custom_Price]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustom_Price] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Custom_Price] CHECK CONSTRAINT [FK_UsersCustom_Price]
GO
ALTER TABLE [dbo].[custom_videos]  WITH CHECK ADD  CONSTRAINT [FK__custom_vi__Custo__59063A47] FOREIGN KEY([CustomOrder_Id])
REFERENCES [dbo].[Custom_Price] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[custom_videos] CHECK CONSTRAINT [FK__custom_vi__Custo__59063A47]
GO
ALTER TABLE [dbo].[custom_videos]  WITH CHECK ADD  CONSTRAINT [FK__custom_vi__Video__5812160E] FOREIGN KEY([Video_TypeID])
REFERENCES [dbo].[video_type] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[custom_videos] CHECK CONSTRAINT [FK__custom_vi__Video__5812160E]
GO
ALTER TABLE [dbo].[Price_Orders]  WITH CHECK ADD  CONSTRAINT [FK_PricingPrice_Orders] FOREIGN KEY([PricingId])
REFERENCES [dbo].[Pricings] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Price_Orders] CHECK CONSTRAINT [FK_PricingPrice_Orders]
GO
ALTER TABLE [dbo].[Price_Orders]  WITH CHECK ADD  CONSTRAINT [FK_UsersPrice_Orders] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Price_Orders] CHECK CONSTRAINT [FK_UsersPrice_Orders]
GO
ALTER TABLE [dbo].[Service_Details]  WITH CHECK ADD  CONSTRAINT [FK_ServicesService_Details] FOREIGN KEY([ServicesId])
REFERENCES [dbo].[Services] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Service_Details] CHECK CONSTRAINT [FK_ServicesService_Details]
GO

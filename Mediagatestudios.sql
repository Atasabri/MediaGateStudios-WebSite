
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
/****** Object:  Table [dbo].[Applicants]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Career_Requirment]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Career_Skill]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Careers]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Contacts]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Content]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Content_Details]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Custom_Price]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[custom_videos]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Price_Orders]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Pricings]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Protoflios]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Requirments]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Service_Details]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Services]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Skills]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Subscripers]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Teams]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[Users]    Script Date: 11/19/2019 10:10:51 AM ******/
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
/****** Object:  Table [dbo].[video_type]    Script Date: 11/19/2019 10:10:51 AM ******/
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
INSERT [dbo].[Admins] ([ID], [Name], [Password], [Type]) VALUES (1, N'Mai', N'123', 1)
GO
INSERT [dbo].[Admins] ([ID], [Name], [Password], [Type]) VALUES (8, N'Heba', N'123', 1)
GO
INSERT [dbo].[Admins] ([ID], [Name], [Password], [Type]) VALUES (9, N'Asmaa', N'123', 1)
GO
INSERT [dbo].[Admins] ([ID], [Name], [Password], [Type]) VALUES (10, N'Sara', N'123', 1)
GO
INSERT [dbo].[Admins] ([ID], [Name], [Password], [Type]) VALUES (11, N'Rania', N'123', 1)
GO
SET IDENTITY_INSERT [dbo].[Admins] OFF
GO
SET IDENTITY_INSERT [dbo].[Applicants] ON 

GO
INSERT [dbo].[Applicants] ([ID], [Name], [Email], [Phone], [Message], [CareersId]) VALUES (1, N'Ata Sabri', N'ataeldon@gmail.com', 1142229025, N'Messageddd', 1)
GO
INSERT [dbo].[Applicants] ([ID], [Name], [Email], [Phone], [Message], [CareersId]) VALUES (2, N'Ata Sabri', N'ataeldon@gmail.com', 1142229025, N'Messageruieiutur87', 1)
GO
SET IDENTITY_INSERT [dbo].[Applicants] OFF
GO
SET IDENTITY_INSERT [dbo].[Career_Requirment] ON 

GO
INSERT [dbo].[Career_Requirment] ([ID], [Reqirment_ID], [Career_ID]) VALUES (1, 1004, 1)
GO
INSERT [dbo].[Career_Requirment] ([ID], [Reqirment_ID], [Career_ID]) VALUES (2, 1006, 1)
GO
SET IDENTITY_INSERT [dbo].[Career_Requirment] OFF
GO
SET IDENTITY_INSERT [dbo].[Career_Skill] ON 

GO
INSERT [dbo].[Career_Skill] ([ID], [Skill_ID], [Career_ID]) VALUES (1, 1007, 1)
GO
INSERT [dbo].[Career_Skill] ([ID], [Skill_ID], [Career_ID]) VALUES (2, 1005, 1)
GO
SET IDENTITY_INSERT [dbo].[Career_Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[Careers] ON 

GO
INSERT [dbo].[Careers] ([ID], [Name], [Experience], [Type], [Salary], [Description]) VALUES (1, N'etg', N'df', N'full time', 2500, N'this is for test')
GO
SET IDENTITY_INSERT [dbo].[Careers] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (1, N'Ata Sabri', N'ataeldon@gmail.com', N'TEST', N'sdsd')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (2, N'maged', N'magedtadrous@me.com', N'test ', N'test')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (3, N'Diana Williams', N'williamsd.dia.na@gmail.com', N'Marketing suggestion for your website', N'What would a huge increase in relevant traffic mean for your business? If I could greatly increase the amount of customers who are interested in your products and services, wouldn''t you be interested.')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (4, N'Diana Williams', N'williamsd.dia.na@gmail.com', N'Marketing suggestion for your website', N'What would a huge increase in relevant traffic mean for your business? If I could greatly increase the amount of customers who are interested in your products and services, wouldn''t you be interested.')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (7, N'Anwar', N'malkwael@yahoo.com', N'Non', N'Call me 0503757019')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (8, N'Mostafa yasin', N'mostsfayasin@gmail.com', N'Job vacancy', N'How can i apply for your video blooger or script writing job offer?')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (9, N'Shaimaa Ibrahim', N'shaimaa.ibrahim2010@yahoo.com', N'CV', N'Shaimaa Ibrahim Taha
Egypt, Cairo, Zahraa Maadi, Seventh Division, Palaces’ Building, Towe13
Egypt, Giza, Mohandseen, Sudan St, 16 Mohamed El arabi from Elghareeb St.
Cell: (+2) 01023243217 – 01121054417
Home: (+202) 33049635
Email:  Shaimaa.Ibrahim2010@yahoo.com
						Skype: Shaimaa.dhse



 Carrier Objectives:
"Seeking for a position in which I can apply and develop my interpersonal and Communication skills, and have the opportunity to interact with different Cultural groups and people."

Accomplished results-driven Management professional with over 10 years of administration, marketing & sales experience focused within the Engineering, Petroleum Services industries, Health & Safety Sector and training, I have a proven ability to interface with management of major oil and gas, refinery companies and their trade organizations. Consistently exceed sales quotas.

Qualification Highlights
Administration 	Relationship Selling	Team Leadership
Business Development	Technology Sales	Operations Management
		
Work Experience:
	10/2013: Present    (Part Time through Internet)
Administration/Marketing for 747 Consulting Group Company “USA branch”

	10/2014: 12/2015  (Full Time)
Administration/Office Manager for “Health and Safety Training Center “UAE branch” 

	11/2010: 10/2014 (Full Time)   
Administration/Office Manager for “Health and Safety Training Center “Egypt branch”

	09/2010: 09/2014 (Part Time)
Administration/Office Manager for “Petroleum Services & General Supplies Company (Ceramics and Marbles) “Egypt”

	05/2005: 08/2010 (Full Time)
Administration/Office Manager/Executive Secretary for Petroleum Services Company         
*Some of my Duties  
•	Arranging meetings for managers & directors and our foreign clients with the Egyptian Petroleum companies and other customers. 
•	Preparing and following up the company registration and tenders with other governmental petroleum companies.
•	Attending meetings with our agents as assistance and translators. 
•	Managing all the tenders required documents and commitment to deliver it on the request duration. (Technical and Commercial proposals include the terms and Conditions)
•	Following up the other employees’ duties and other official work as filling, memos, internet and mails.
•	Follow up the shipments until the client receives it and after that make a report of the clients satisfaction. 
•	Open new market for our products through internet with international companies.
•	Getting new companies related to our activities and get the agency to improve our company activities.
•	Maintains administrative staff by recruiting, selecting, orienting, and training employees; maintaining a safe and secure work environment; developing personal growth opportunities.
•	Accomplishes staff results by communicating job expectations; planning, monitoring, and appraising job results; coaching, counseling, and disciplining employees; initiating, coordinating, and enforcing systems, policies, and procedures.
•	Provides supplies by identifying needs for reception, switchboard, mailroom, and kitchen; establishing policies, procedures, and work schedules.
•	Provides communication systems by identifying needs; evaluating options; maintaining equipment; approving invoices.
•	Purchases printed materials and forms by obtaining requirements; negotiating price, quality, and delivery; approving invoices.
•	Completes special projects by organizing and coordinating information and requirements; planning, arranging, and meeting schedules; monitoring results.
•	Provides historical reference by developing and utilizing filing and retrieval systems.
•	Improves program and service quality by devising new applications; updating procedures; evaluating system results with users.
•	Achieves financial objectives by anticipating requirements; submitting information for budget preparation; scheduling expenditures; monitoring costs; analyzing variances.
•	Maintains continuity among corporate, division, and local work teams by documenting and communicating actions, irregularities, and continuing needs.
•	* Maintains professional and technical knowledge by attending educational workshops; benchmarking professional standards; reviewing professional publications; establishing personal networks.
•	Contributes to team effort by accomplishing related results as needed.
*Skills 
Tracking Budget Expenses, Staffing, Quality Management, Managing Processes, Organization, Coaching, Communication Processes, Disciplining Employees, Motivating Others, Promoting Process Improvement, Reporting Skills

	03/2004 : 05/2005       
Assistant of Public relation and Customer Services Manager “Solimanyh City"

Education:
	University: Cairo University
	Faculty: Faculty of Arts
	Department: Roman and Greek Literature Department
	Section: Roman and Greek Literature / Modern Language: Italian
	Graduation Year: 2003    
	Graduation Grade: Good

Courses:
	English at AUC
	Italian at Italian institute In Cairo
	Management and Business Administration at American University of Cairo, Faculty of Continual Education ”under graduation” 

Languages:
	Arabic: Mother Tongue.
	English: Good command (spoken and written).
	Italy: Good

Translation Skills:
	Excellent in Translating from English to Arabic and vice versa.

Computer Skills:
	Proficient in Microsoft Office” Word, Excel, PowerPoint, Access”
	Well versed in Internet resources.
	High speed in Typing Skills

Communication Skills:
	Excellent methods of persuasion
	Highly organized
	Analytical approach to problem solving
	Excellent negotiation skills
	Wide experience in the field of research

Personal Skills:
	Hard Worker, tireless and productive: I am working very hard with a lot of effort without stopping; I am producing / achieving a lot and working under stress and in any difficult circumstances.
	Efficient: I am working well and quickly and I am good at organizing my work in the way that gets the best results. 
	Well organized: I am working in an effective and successful way because of good organization, orderly and efficient. 
	Ambitious: I can help your company because I want to help myself have a better career.  Ambition is what makes a company innovative, it''s what spawns creative ideas and what generates candor and openness amongst employees. 
	Autonomous: I can get the job done without extensive hand-holding. 
	Vision for Success: I seek to work for a successful company that has strong leadership & vision and who recognizes & rewards performers. 
	Revenue Generator: I am confident in my abilities to produce and while I prepare for the worst, I do the work necessary to tilt the odds that the best will happen.
	Leadership: I am a person who is able to control a situation rather than have a situation control them. 
	Driven to Excellence: I am someone who has been able to not only meet my employer''s expectations but I would describe myself as a person who has consistently exceeded those markers. 
	Strong Personal Values: I am someone who is mature, candid and who has integrity.  Every day I work to improve myself and my skills which is part of maturing and becoming better at what I do.
	Self-Determined: I am someone who has an unwavering resolve. I am determined to do well in my job and am determined to have a successful career as well as make the company I work for more competitive.
	Understand how to run all aspects of a business.
	Cold calling, via telephone and face to face.
	Organize contacts and notes.
	Building relationships, customer service, selling.
	Traveled throughout the Middle East 

Personal Information:
	Date of Birth: 05/05/82
	Nationality: Egyptian
	Religion: Muslim
	Gender: Female
	Marital status: Married

Activities:
	Reading English novels, Sports, Traveling.

REFERENCE 
	    Furnished upon request 
')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (10, N'Shaimaa Ibrahim', N'shaimaa.ibrahim2010@yahoo.com', N'CV', N'Shaimaa Ibrahim Taha
Egypt, Cairo, Zahraa Maadi, Seventh Division, Palaces’ Building, Towe13
Egypt, Giza, Mohandseen, Sudan St, 16 Mohamed El arabi from Elghareeb St.
Cell: (+2) 01023243217 – 01121054417
Home: (+202) 33049635
Email:  Shaimaa.Ibrahim2010@yahoo.com
						Skype: Shaimaa.dhse



 Carrier Objectives:
"Seeking for a position in which I can apply and develop my interpersonal and Communication skills, and have the opportunity to interact with different Cultural groups and people."

Accomplished results-driven Management professional with over 10 years of administration, marketing & sales experience focused within the Engineering, Petroleum Services industries, Health & Safety Sector and training, I have a proven ability to interface with management of major oil and gas, refinery companies and their trade organizations. Consistently exceed sales quotas.

Qualification Highlights
Administration 	Relationship Selling	Team Leadership
Business Development	Technology Sales	Operations Management
		
Work Experience:
	10/2013: Present    (Part Time through Internet)
Administration/Marketing for 747 Consulting Group Company “USA branch”

	10/2014: 12/2015  (Full Time)
Administration/Office Manager for “Health and Safety Training Center “UAE branch” 

	11/2010: 10/2014 (Full Time)   
Administration/Office Manager for “Health and Safety Training Center “Egypt branch”

	09/2010: 09/2014 (Part Time)
Administration/Office Manager for “Petroleum Services & General Supplies Company (Ceramics and Marbles) “Egypt”

	05/2005: 08/2010 (Full Time)
Administration/Office Manager/Executive Secretary for Petroleum Services Company         
*Some of my Duties  
•	Arranging meetings for managers & directors and our foreign clients with the Egyptian Petroleum companies and other customers. 
•	Preparing and following up the company registration and tenders with other governmental petroleum companies.
•	Attending meetings with our agents as assistance and translators. 
•	Managing all the tenders required documents and commitment to deliver it on the request duration. (Technical and Commercial proposals include the terms and Conditions)
•	Following up the other employees’ duties and other official work as filling, memos, internet and mails.
•	Follow up the shipments until the client receives it and after that make a report of the clients satisfaction. 
•	Open new market for our products through internet with international companies.
•	Getting new companies related to our activities and get the agency to improve our company activities.
•	Maintains administrative staff by recruiting, selecting, orienting, and training employees; maintaining a safe and secure work environment; developing personal growth opportunities.
•	Accomplishes staff results by communicating job expectations; planning, monitoring, and appraising job results; coaching, counseling, and disciplining employees; initiating, coordinating, and enforcing systems, policies, and procedures.
•	Provides supplies by identifying needs for reception, switchboard, mailroom, and kitchen; establishing policies, procedures, and work schedules.
•	Provides communication systems by identifying needs; evaluating options; maintaining equipment; approving invoices.
•	Purchases printed materials and forms by obtaining requirements; negotiating price, quality, and delivery; approving invoices.
•	Completes special projects by organizing and coordinating information and requirements; planning, arranging, and meeting schedules; monitoring results.
•	Provides historical reference by developing and utilizing filing and retrieval systems.
•	Improves program and service quality by devising new applications; updating procedures; evaluating system results with users.
•	Achieves financial objectives by anticipating requirements; submitting information for budget preparation; scheduling expenditures; monitoring costs; analyzing variances.
•	Maintains continuity among corporate, division, and local work teams by documenting and communicating actions, irregularities, and continuing needs.
•	* Maintains professional and technical knowledge by attending educational workshops; benchmarking professional standards; reviewing professional publications; establishing personal networks.
•	Contributes to team effort by accomplishing related results as needed.
*Skills 
Tracking Budget Expenses, Staffing, Quality Management, Managing Processes, Organization, Coaching, Communication Processes, Disciplining Employees, Motivating Others, Promoting Process Improvement, Reporting Skills

	03/2004 : 05/2005       
Assistant of Public relation and Customer Services Manager “Solimanyh City"

Education:
	University: Cairo University
	Faculty: Faculty of Arts
	Department: Roman and Greek Literature Department
	Section: Roman and Greek Literature / Modern Language: Italian
	Graduation Year: 2003    
	Graduation Grade: Good

Courses:
	English at AUC
	Italian at Italian institute In Cairo
	Management and Business Administration at American University of Cairo, Faculty of Continual Education ”under graduation” 

Languages:
	Arabic: Mother Tongue.
	English: Good command (spoken and written).
	Italy: Good

Translation Skills:
	Excellent in Translating from English to Arabic and vice versa.

Computer Skills:
	Proficient in Microsoft Office” Word, Excel, PowerPoint, Access”
	Well versed in Internet resources.
	High speed in Typing Skills

Communication Skills:
	Excellent methods of persuasion
	Highly organized
	Analytical approach to problem solving
	Excellent negotiation skills
	Wide experience in the field of research

Personal Skills:
	Hard Worker, tireless and productive: I am working very hard with a lot of effort without stopping; I am producing / achieving a lot and working under stress and in any difficult circumstances.
	Efficient: I am working well and quickly and I am good at organizing my work in the way that gets the best results. 
	Well organized: I am working in an effective and successful way because of good organization, orderly and efficient. 
	Ambitious: I can help your company because I want to help myself have a better career.  Ambition is what makes a company innovative, it''s what spawns creative ideas and what generates candor and openness amongst employees. 
	Autonomous: I can get the job done without extensive hand-holding. 
	Vision for Success: I seek to work for a successful company that has strong leadership & vision and who recognizes & rewards performers. 
	Revenue Generator: I am confident in my abilities to produce and while I prepare for the worst, I do the work necessary to tilt the odds that the best will happen.
	Leadership: I am a person who is able to control a situation rather than have a situation control them. 
	Driven to Excellence: I am someone who has been able to not only meet my employer''s expectations but I would describe myself as a person who has consistently exceeded those markers. 
	Strong Personal Values: I am someone who is mature, candid and who has integrity.  Every day I work to improve myself and my skills which is part of maturing and becoming better at what I do.
	Self-Determined: I am someone who has an unwavering resolve. I am determined to do well in my job and am determined to have a successful career as well as make the company I work for more competitive.
	Understand how to run all aspects of a business.
	Cold calling, via telephone and face to face.
	Organize contacts and notes.
	Building relationships, customer service, selling.
	Traveled throughout the Middle East 

Personal Information:
	Date of Birth: 05/05/82
	Nationality: Egyptian
	Religion: Muslim
	Gender: Female
	Marital status: Married

Activities:
	Reading English novels, Sports, Traveling.

REFERENCE 
	    Furnished upon request 
')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (11, N'amgad hassanain', N'amgadhassanain@hotmail.com', N'Inquiry about training for accountants', N'Good Evining,
I applyed for the accountants internship who are on wuzzuf website and did not come back any answer and written that the training began at the beginning of January, whether it started or not and i would like to join you. Thank you
')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (12, N'Divya Thampi', N'divyathampi.android@gmail.com', N'Skype Interview Call', N'Hi,
I have selected for your Skype call test for the job opening of position Game Developer Dubai. But i didn''t get any updates about that. ')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (13, N'RichardMub', N'vankrupin@yandex.ru', N'Top list', N'Top casino 
http://topratinglist.com/')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (14, N'islam allam', N'islam.3llam@gmail.com', N'Graphic Design ', N'Dear Officials at media gate ,

Here is Islam Allam Graphic Designer & Digital Artist based in Cairo, Egypt . 
i saw your ads about you need a graphic designer .

so check out my portfolio : https://www.photosnack.com/F85EC6DBDC9/islamallamportfolio.html

Sincerely,
')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (15, N'abdullah', N'abdallah.khorshed99@gmail.com', N'looking for a career in machine learning', N'https://drive.google.com/open?id=1oBQvlZWwgmd7qdkdth2Xaz1HkS93uGXw')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (16, N'Chaimaa ', N'chaimaatayssir75@gmail.com', N'Job vacancies (Director / Filmmaker)', N'Am asking about Vacancies for directors/ Filmmakers for advertising / short movies / documentaries /clips ')
GO
INSERT [dbo].[Contacts] ([ID], [Name], [Email], [Subject], [Message]) VALUES (17, N'EMAN KHALID IMAM', N'emankhaledemam@gmail.com', N'Game Design', N'HI, I''m Eman working as a photographer, but I''m very passionate about games, and I''d like to involve into designing games
so I wanna ask if there''s any possible chance  to train me, unpaid for sure, I''d be thankful.')
GO
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Content] ON 

GO
INSERT [dbo].[Content] ([ID], [Name], [Description]) VALUES (4, N'Tv Format ', N'Media Gate Studios aims toward building a video production that will highly relate to what is happening in everyday’s streets and what satisfies people in every aspect, we are aiming towards understanding and highlighting what meets our client''s satisfaction and to create a line of art between us and possible clients.')
GO
INSERT [dbo].[Content] ([ID], [Name], [Description]) VALUES (11, N'Digital production', N'Media Gate Studios provide an extensive array of creative, production, and digital media services for clients with social media platforms and channels for our clients who are looking to extend their reach into various social media platforms.')
GO
INSERT [dbo].[Content] ([ID], [Name], [Description]) VALUES (12, N'Commercials', N'We produce high quality commercial content for our clients that can be used in various platforms such as television, digital platforms and other media outlets, with high quality format and professional approach.')
GO
INSERT [dbo].[Content] ([ID], [Name], [Description]) VALUES (13, N'Corporate ', N'Our Video solutions will help you reach your goals and turn passer-by into clients, Media Gate Studios working on building an image to itself that is highly based on strategies and aims to implement it on others so that we can share with cohesive video content strategy. The bottom line is that you want more customers and improve conversion. That''s what we do. ')
GO
INSERT [dbo].[Content] ([ID], [Name], [Description]) VALUES (14, N'Gaming Studios  ', N'The game industry has increased within the media workplace, Media Gate Studios saw that it’s a must to have an impact in providing out of the box gaming with studios that are highly qualified and meets worldwide expectations.
')
GO
SET IDENTITY_INSERT [dbo].[Content] OFF
GO
SET IDENTITY_INSERT [dbo].[Content_Details] ON 

GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (23, N'Drama ', 4)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (24, N'Programs', 4)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (25, N'Programs Short Video Format ', 11)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (27, N'Music Videos ', 12)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (28, N'Advertising ', 12)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (29, N'Product and Services videos', 13)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (30, N'Training Videos ', 13)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (31, N'Sales conversion videos', 13)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (32, N'Brand Films', 13)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (33, N'Company Profile Videos ', 13)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (34, N'Company Profile Videos ', 13)
GO
INSERT [dbo].[Content_Details] ([ID], [Detail], [content_ID]) VALUES (35, N'Promotional Videos ', 13)
GO
SET IDENTITY_INSERT [dbo].[Content_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Custom_Price] ON 

GO
INSERT [dbo].[Custom_Price] ([ID], [DateOfDeadLine], [Message], [Contact], [Other], [UsersID]) VALUES (2, CAST(0x0000A89600000000 AS DateTime), NULL, N'Email', NULL, 36)
GO
INSERT [dbo].[Custom_Price] ([ID], [DateOfDeadLine], [Message], [Contact], [Other], [UsersID]) VALUES (3, CAST(0x0000A8C800000000 AS DateTime), NULL, N'Email', NULL, 39)
GO
SET IDENTITY_INSERT [dbo].[Custom_Price] OFF
GO
SET IDENTITY_INSERT [dbo].[custom_videos] ON 

GO
INSERT [dbo].[custom_videos] ([ID], [Video_TypeID], [CustomOrder_Id]) VALUES (2, 13, 2)
GO
INSERT [dbo].[custom_videos] ([ID], [Video_TypeID], [CustomOrder_Id]) VALUES (3, 10, 3)
GO
SET IDENTITY_INSERT [dbo].[custom_videos] OFF
GO
SET IDENTITY_INSERT [dbo].[Price_Orders] ON 

GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1009, 1005, 23, CAST(0x0000A800014740AC AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1010, 1006, 25, CAST(0x0000A80E0026C7FC AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1011, 1005, 26, CAST(0x0000A80E00B4F761 AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1012, 1005, 27, CAST(0x0000A80E00F37798 AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1014, 1006, 28, CAST(0x0000A8100060A98D AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1015, 1006, 30, CAST(0x0000A81B008183F4 AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1016, 1005, 34, CAST(0x0000A85100F147D0 AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1017, 1005, 35, CAST(0x0000A857008686B1 AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1018, 1005, 36, CAST(0x0000A884001FFBCD AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1019, 1007, 38, CAST(0x0000A8A3011B5455 AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1020, 1006, 38, CAST(0x0000A8A3011B5E7E AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1021, 1005, 39, CAST(0x0000A8A700FF4DC4 AS DateTime))
GO
INSERT [dbo].[Price_Orders] ([ID], [PricingId], [UsersID], [Date]) VALUES (1022, 1005, 22, CAST(0x0000A908011976FE AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Price_Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Pricings] ON 

GO
INSERT [dbo].[Pricings] ([ID], [Name]) VALUES (1005, N'Basic Video Package ')
GO
INSERT [dbo].[Pricings] ([ID], [Name]) VALUES (1006, N'Full Video Package ')
GO
INSERT [dbo].[Pricings] ([ID], [Name]) VALUES (1007, N'Custom Video Package')
GO
SET IDENTITY_INSERT [dbo].[Pricings] OFF
GO
SET IDENTITY_INSERT [dbo].[Protoflios] ON 

GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (31, N'Broadcast Production ')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (32, N'Digital Production')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (33, N'Gaming Studios  ')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (34, N'Commercials ')
GO
INSERT [dbo].[Protoflios] ([ID], [Name]) VALUES (35, N'Music Videos ')
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
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1056, N' Script writing', 1031)
GO
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1057, N'Story boarding', 1031)
GO
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1058, N'Location Scouting', 1031)
GO
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1059, N'Creative & Concept Development', 1031)
GO
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1060, N'Actor Casting', 1031)
GO
INSERT [dbo].[Service_Details] ([ID], [Detail], [ServicesId]) VALUES (1061, N'Set & Stage Design', 1031)
GO
SET IDENTITY_INSERT [dbo].[Service_Details] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

GO
INSERT [dbo].[Services] ([ID], [Name], [Description]) VALUES (1031, N'Pre-production ', N'Our Video services help you reach your goals and turn passers-by into clients. From Idea to script to screen. We master the art and craft of writing scripts for various media platforms. We host a group of creative graphic organizers and illustrators that will help bring your visions into visuals. Media Gate Studios generate, develop and communicate new ideas, where a creative idea is a basic element of thought that can be visually appealing throughout developed cycle, from innovation to development to actualization, Media Gate Studios will add it''s magic and transform a raw idea to stage designing.')
GO
INSERT [dbo].[Services] ([ID], [Name], [Description]) VALUES (1032, N' Studio Renting', N'Once scriptwriters, producers or directors have decided what general kind of scenery they require for the various parts of their work that is shot outside the studio, our clients won’t have to search for a suitable place or location because Media Gate owns various studios with around 2000 m. length equipped with high quality equipment including high definition cameras, lighting, audio recording studios and green screens etc, Not only that Media Gate will help you scout for the perfect location that will help present your vision it will look for generally spectacular or interesting locations beforehand, by having an extraordinary database of locations and manage the legal access to filming.')
GO
INSERT [dbo].[Services] ([ID], [Name], [Description]) VALUES (1033, N'Audio Recording', N'Our studios hold soundproof rooms that can hold intensive production varies from theatrical filmmaking and television production. A soundproofed room where sounds can be recorded to give an artistic final production sound.')
GO
INSERT [dbo].[Services] ([ID], [Name], [Description]) VALUES (1034, N'Video Editing ', N'Media Gate Studios holds editing studios were papers come to life including various methods, Linear video editing, Non-linear editing system (NLE) with specialized software. Professional video editing tools such as Adobe Premiere Pro, Final Cut Pro, Avid etc, And after the video is done in the final stage of a video production and vision mixing equipments and highly progressed video color correction and grading equipment. ')
GO
INSERT [dbo].[Services] ([ID], [Name], [Description]) VALUES (1035, N'Content Distribution', N'With Various social and media networks, Media Gate Studios can distribute to any of these medias outlet including plenty television platforms, social media platforms such as Youtube, Facebook, Twitter etc, ')
GO
INSERT [dbo].[Services] ([ID], [Name], [Description]) VALUES (1036, N'Media Tracking ', N'Media Gate holds professional effective platform for automatic TV ad tracking and detection for commercials verification and competitors monitoring. It offers an advanced audio and video advertisement detection solution. We have a report generator, allowing you to create any report, by any criteria and filter.')
GO
INSERT [dbo].[Services] ([ID], [Name], [Description]) VALUES (1037, N' Logistics ', N'Media gate studios coordinates the activities required to make a video content that is both creative and visually appealing. We offer  Transportation, Customer service, Inventory Management, Order Checking, Material Handling and Purchasing.')
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
INSERT [dbo].[Skills] ([ID], [Name]) VALUES (1007, N'facebook')
GO
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
SET IDENTITY_INSERT [dbo].[Subscripers] ON 

GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1, N'hossam.olwan@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2, N'ataeldon@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (3, N'salmaadham2014@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (4, N'mm4698917@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (5, N'gomaa.rawan@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (6, N'osama_elsedik@hotmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (7, N'maryan_ageeb@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (8, N'eman_rahman3@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (9, N'ayaalaa_92@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (10, N'magedtadrous@me.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (11, N'donya.yasser26@outlook.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (12, N'gihadfathy3@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (13, N'Amira.mahmoud@henkel.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (14, N'djjkeenan@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (15, N'maisy.dean2@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (16, N'rmolinares@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (17, N'joshua.y.wu@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (18, N'reetasubnaik@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (19, N'talarhk@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (20, N'lramont67@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (21, N'forentlich@isanow.biz')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (22, N'poseynan@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (23, N'ace6564@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (24, N'stansnewplan2@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (25, N'vmwest@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (26, N'rschmidt@strategiccfosolutions.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (27, N'russjohnso@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (28, N'azstlrfan@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (29, N'ace6564@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (30, N'mloustj77@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (31, N'tuttlejw@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (32, N'tpres29563@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (33, N'mendy1712@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (34, N'idaly.ramos13@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (35, N'casagraves@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (36, N'rvisfun@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (37, N'sigmaman78@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (38, N'emilyeckelman@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (39, N'tyhwrd@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (40, N'mikereservices@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (41, N'sigmaman78@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (42, N'privilegeagencybook@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (43, N'cduranbible@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (44, N'ctlockwood@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (45, N's.quinn_2010@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (46, N'kmcmahonkpm@optonline.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (47, N'privilegeagencybook@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (48, N'dorothy.beaverson@spencer.kyschools.us')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (49, N'jen@wildhairphotography.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (50, N'cft743@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (51, N'randy@turkenterprises.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (52, N'angela.sokalskaya@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (53, N'camrinray@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (54, N'thaddmac1@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (55, N'bmarsh07@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (56, N'makeyourdreamsreality@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (57, N'stormws@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (58, N'stacybodell@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (59, N'shoalga@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (60, N'manishmadan08@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (61, N'jonestr07@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (62, N'ml120503@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (63, N'xxwiczxx@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (64, N'kim@lasalviadentist.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (65, N'charleshblaney@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (66, N'clintmalfaro@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (67, N'hutchtrans@rogers.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (68, N'bryankong@me.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (69, N'daniel.fhagan@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (70, N'tara.south@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (71, N'brucerl@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (72, N'tayloranne1921@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (73, N'robertk@actslife.org')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (74, N'efrenbanegas@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (75, N'petercao.dmd@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (76, N'sabintelegariu85@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (77, N'jeannie.whitson@ymail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (78, N'cerysgreen@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (79, N'kylieedmunds524@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (80, N'free_fallin95@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (81, N'makeyourdreamsreality@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (82, N'getawaytravelcrew@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (83, N'jaamih14@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (84, N'shelby.steege@spencer.kyschools.us')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (85, N'amanbansil@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (86, N'reetasubnaik@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (87, N'daniel.tauscher@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (88, N'free_fallin95@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (89, N'shoalga@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (90, N'dpkobe@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (91, N'jst4liz@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (92, N'edp@dontechsolutions.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (93, N'fordrider@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (94, N'alberto@noordkaap.nl')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (95, N'bjktwofive@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (96, N'akakedenzokusei@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (97, N'edwardericsharples@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (98, N'chiragtanawala@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (99, N'hartledude@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (100, N'roxannaastorga@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (101, N'rsiames@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (102, N'hartledude@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (103, N'supermario4400@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (104, N'jessleemitchell90@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (105, N'twilson@saluxdesign.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (106, N'rvisfun@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (107, N't_n_hutchins@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (108, N'gogotravels@protonmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (109, N'krishna_4491@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (110, N'claudiahoras@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (111, N'trosen_24@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (112, N'mdconsignment@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (113, N'twinhairdryers@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (114, N'yim@chalk.org')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (115, N'castillo2547@bellsouth.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (116, N'alberto@noordkaap.nl')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (117, N'krishna_4491@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (118, N'cinintaesa@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (119, N'tom.warner@sodexo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (120, N'reetasubnaik@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (121, N'aprilovalle@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (122, N'claudosoretz@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (123, N'brehmer@kcia.us')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (124, N'moecromp@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (125, N'travelwoman007@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (126, N'travelwoman007@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (127, N'oc2rno@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (128, N'wmccrory@jwmpa.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (129, N'gerald.gragg@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (130, N'edtevans@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (131, N'jonathan.ryan@raicestexas.org')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (132, N'emelyne.laude@sfr.fr')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (133, N'kel14609@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (134, N'drewtopper@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (135, N'edavis_30188@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (136, N'sherilldenison@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (137, N'sprater_13@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (138, N'sherilldenison@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (139, N'catherineespinoza@ymail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (140, N'info@canyonstonecanada.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (141, N'mindymae@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (142, N'rafael.gutierrez@telcor.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (143, N'jasmin_y_santos@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (144, N'dsheppard@avantiwindow.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (145, N'gemmamsmedley@yahoo.co.uk')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (146, N'support@esteon.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (147, N'kevin@gaisconstruction.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (148, N'lynn.hatch@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (149, N'hsavery@si.rr.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (150, N'debevans58@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (151, N'b.johnson1990@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (152, N'carylsauers@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (153, N'natalyleon31@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (154, N'lynn.hatch@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (155, N'cbaz34@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (156, N'morgan_barklind@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (157, N'wornson@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (158, N'zapreagan@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (159, N'heidi.wamsher@sbcglobal.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (160, N'reynolds1107@charter.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (161, N'bmielke@bulldogbag.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (162, N'roberts322@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (163, N'orlandobuentello@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (164, N'ambiga@sreenevasan.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (165, N'ahumazda_98@yahoo.com.my')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (166, N'info@airchaser.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (167, N'ahmadsamsuri@yahoo.co.uk')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (168, N'lngahngah@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (169, N'edmundteoh@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (170, N'pkm_n02@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (171, N'maran_sk_7@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (172, N'kuilun@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (173, N'windyid2004@yahoo.com.hk')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (174, N'hazrul_8888@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (175, N'gayevdh@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (176, N'jillquirk13@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (177, N'jillquirk13@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (178, N'echerkin27@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (179, N'sgblock1@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (180, N'roberts322@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (181, N'morton_jd@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (182, N'info@sorealsounds.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (183, N'cjmurray2121@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (184, N'arundee30@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (185, N'tamikapearsonlewis@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (186, N'gilavalleyelectric10@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (187, N'morton_jd@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (188, N'rgolata@roadrunner.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (189, N'sonia1959@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (190, N'nicolevaldez2324@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (191, N'j.baker725@btinternet.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (192, N'rosenfieldp@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (193, N'susanne.boelitz@web.de')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (194, N'staceypinney@cox.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (195, N'mmccleary007@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (196, N'weillmi@gmx.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (197, N'scott@hepler-usa.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (198, N'cindypaulabby@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (199, N'patriciaracine@videotron.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (200, N'elisa_maps@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (201, N'dawnbear39@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (202, N'rosafox@btinternet.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (203, N'bikerboy6948@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (204, N'toricarter32@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (205, N'tjones3723@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (206, N'kylefire1203@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (207, N'dwight@vlins.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (208, N'suzeqfilms@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (209, N'too-short@att.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (210, N'kimobocci@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (211, N'kylefire1203@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (212, N'ubereverything@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (213, N'my2peaches@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (214, N'joerazz68@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (215, N'rgon21_00@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (216, N'garyncain@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (217, N'aire0221@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (218, N'gelorminonick@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (219, N'creoledoc@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (220, N'suzeqfilms@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (221, N'wong@torontoclub.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (222, N'mcdl33@icloud.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (223, N'creoledoc@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (224, N'pascale@pneumac.qc.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (225, N'wld801@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (226, N'jjstpafla33612@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (227, N'braverobertskid@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (228, N'aupjef@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (229, N'jeff@jeffbabcock.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (230, N'keithallisongray@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (231, N'pacsteacher@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (232, N'permauljohn@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (233, N'kerry.atkinson@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (234, N'melissastahl@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (235, N'melissastahl@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (236, N'sandhu@redleaflogistics.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (237, N'melissastahl@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (238, N'warpedscout@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (239, N'melissastahl@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (240, N's.garrant@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (241, N'lakeyarobinson@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (242, N'raira97@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (243, N'ruthie17@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (244, N'binesshayla@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (245, N'tmrieg@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (246, N'charliehorsecinch@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (247, N'biancaserie23@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (248, N'lakeyarobinson@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (249, N'binesshayla@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (250, N'mgoldish@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (251, N'jshaatal@fourseasonsnh.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (252, N'dean1419@bellsouth.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (253, N'cedrickedwards87@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (254, N'maureen@spiegelleffler.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (255, N'pecos140@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (256, N'sherrie0981@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (257, N'norsefreak32@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (258, N'norsefreak32@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (259, N'fchn602@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (260, N'wayne.samson@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (261, N'drsteve@serenityrejuvenationcenter.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (262, N'jimrfinlayson@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (263, N'amoore25304@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (264, N'knyghttime@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (265, N'info@colf.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (266, N'laurie.elliott@actslife.org')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (267, N'anthonywfranklin10@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (268, N'tonguetied0411@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (269, N'wspencer60@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (270, N'tooperky@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (271, N'gary.wen.pz8w@statefarm.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (272, N'migro@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (273, N'leacruzate@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (274, N'darmastra@tbaytel.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (275, N'bkharrison7.22@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (276, N'adecfl@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1276, N'cindi.kooyers@magna.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1277, N'xhunter04x@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1278, N'tim.cloutier@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1279, N'pifinsurance@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1280, N'dereklward@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1281, N'adafisher@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1282, N'martyd@mtintouch.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1283, N'vbtsta@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1284, N'erin.c.alghandoor@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1285, N'clarastudio@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1286, N'vbtsta@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1287, N'vbtsta@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1288, N'abby_brown81@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1289, N'pifinsurance@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1290, N'anne_ilcus@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1291, N'ishamarie12345@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1292, N'jtonyal1@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1293, N'kyra@sylvestersmm.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1294, N'woodville02@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1295, N'vbtsta@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1296, N'sbreindel@citileafhousing.nyc')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1297, N'dharrington1023@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1298, N'dereklward@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1299, N'richard@knk-heat-air.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1300, N'aa.mortge@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1301, N'dschoffie@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1302, N'kbwbella@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1303, N'mayte.castellanos@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1304, N'shugufa.fatih@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1305, N'amiecharbonneau@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1306, N'sbreindel@citileafhousing.nyc')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1307, N'ishamarie12345@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1308, N'martyd@mtintouch.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1309, N'kbr_brown@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1310, N'temmelk@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1311, N'bookbugclub@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1312, N'jaguarbelizesale@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1313, N'ericbmarshall@verizon.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1314, N'pamandrewsdds@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1315, N'asherby5@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1316, N'gtvt97@verizon.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1317, N'david.baldwin42@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1318, N'yves@yvesmtl.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1319, N'jbrad_martin@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1320, N'aa.mortge@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1321, N'algoudeketting@yahoo.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1322, N'cbethlyn@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1323, N'pjjonanni4@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1324, N'christopher.anest@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1325, N'mcgrawjf@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1326, N'jimfwfs@airmail.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1327, N'ali_mills23@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1328, N'sinsja@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1329, N'dereklward@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1330, N'edwinlovesjesus@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1331, N'moranajazz@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1332, N'pwolfe78@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1333, N'pwolfe78@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1334, N'spottedflowers@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1335, N'ohrmanappraisal@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1336, N'anitadejaynes@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1337, N'ogborne29@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1338, N'bobby@robertbryantandson.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1339, N'sciog@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1340, N'treyperry25@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1341, N'mirali303@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1342, N'mchangonzalez@jgamarketing.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1343, N'mchangonzalez@jgamarketing.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1344, N'info@markgrafshvac.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1345, N'nicolelopez3@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1346, N'doc.rosty@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1347, N'darlene_g_miller@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1348, N'kellymdubois@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1349, N'carol@allmetalsinc.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1350, N'nethouston@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1351, N'rmgbres@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1352, N'colknight@btinternet.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1353, N'annethompson381@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1354, N'brookemelillo93@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1355, N'enuteeez@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1356, N'peter@xeniamc.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1357, N'nekeitha0129@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1358, N'gutovi1@verizon.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1359, N'ddalke@pacbell.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1360, N'sb_sanjiv@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1361, N'eloisaguerrero@sbcglobal.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1362, N'yael.heather@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1363, N'chalsteadmd@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1364, N'bjktwofive@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1365, N'dbrickham19@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1366, N'deb.lang@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1367, N'srblackwell9@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1368, N'audrageorge99@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1369, N'dmerkle3@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1370, N'clint_1_2_3@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1371, N'carolina1283@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1372, N'ladybugcookie@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1373, N'c.schneider211996@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1374, N'ljw209@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1375, N'knichols@palmertool.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1376, N'mymsantos@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1377, N'baotrannguyen1977@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1378, N'chuckdgriffin@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1379, N'ninfans@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1380, N'carpenterins00@cs.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1381, N'ninfans@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1382, N'leon.yin@goaster.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1383, N'ettyler20@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1384, N'larry-karen@zoominternet.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1385, N'manjug6258@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1386, N'jspurgeon@bresnan.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1387, N'lweiss@fbra.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1388, N'la.coppersmith@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1389, N'yani4051@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1390, N'sandrashearer@photo-etch.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1391, N'yani4051@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1392, N'yani4051@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1393, N'nt99go@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1394, N'jaytung91@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1395, N'its.karyn@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1396, N'palmisanomcullen@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1397, N'illinoistextile@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1398, N'ryancford@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1399, N'lacroixnursery@hughes.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1400, N'gramik@bellsouth.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1401, N'rosybi@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1402, N'dukegirl67@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1403, N'tom.goebelbecker@gd-ms.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1404, N'ryancford@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1405, N'winter@winterusa.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1406, N'daduah@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1407, N'fish_girl_98@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1408, N'jennifermetz@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1409, N'ronf@scenework.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1410, N'g.plasmans@home.nl')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1411, N'zhangjoyy@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1412, N'harriet.mcgraw@blackrock.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1413, N'babsyhill@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1414, N'snussenfeld@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1415, N'kthompson@farberspecialty.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1416, N'yujason007@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1417, N'martyngthorne@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1418, N'chris.e2.turner@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1419, N'jennifermetz@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1420, N'malachi05@verizon.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1421, N'dr.selles@quiropractico.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1422, N'duckiesarelucky2@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1423, N'sandrathompson454@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1424, N'xr.vision@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1425, N'trislewis126@yahoo.co.uk')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1426, N'joshue.garcia77@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1427, N'idmkopes@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1428, N'idmkopes@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1429, N'martinezcinthia91@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1430, N'wayne.avery@att.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1431, N'thebest.allinone@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1432, N'borisovfilipp507@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1433, N'jmiles3435@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1434, N'jakindy@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1435, N'thebest.allinone@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1436, N'al@maxcourier.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1437, N'kdorwick@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1438, N'danl@maxico.necoxmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1439, N'kjbuckman68@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1440, N'hichurch@verizon.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1441, N'gsaucier@gsaucier.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1442, N'davidlstanley9@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1443, N'emilymealer@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1444, N'dishsoap514@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1445, N'danielscarlet45@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1446, N'speterson00@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1447, N'mezzonav@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1448, N'taradestine@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1449, N'daybrandt2012@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1450, N'baird01@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1451, N'roland.silk@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1452, N'mandymccolm@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1453, N'rlynnm1965@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1454, N'nickbylund@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1455, N'thughes510@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1456, N'jholley19@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1457, N'vanessarmatthews@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1458, N'barneyjules@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1459, N'rosemary.boustany@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1460, N'freddy1@optonline.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1461, N'ballabaybee88@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1462, N'hmanwiller@paquest.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1463, N'aholey@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1464, N'leeindus10@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1465, N'whatuwn@aim.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1466, N'karenlmahoney@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1467, N'chickenbone123@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1468, N'cudney@shaw.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1469, N'danica_stanciu@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1470, N'karen.mahoney@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1471, N'jim.agnew@uefa.ch')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1472, N'jessie_bobert@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1473, N'twams203@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1474, N'yvonne@2nd-flight.de')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1475, N'twams203@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1476, N'alexandra.crosby@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1477, N'watterson.seth@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1478, N'cmenyweather@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1479, N'stjohn.breana@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1480, N't_robinson_28@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1481, N'preston7326@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1482, N'joseph.deangelis@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1483, N'joseph.deangelis@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1484, N'mc1977@ymail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1485, N'karenlmahoney@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1486, N'snpdst2008@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1487, N'mark@kaycaterers.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1488, N'markay0415@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1489, N'jennifermetz@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1490, N'admin@krink.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1491, N'matthew.sidon@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1492, N'jrog2509@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1493, N'troth3030@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1494, N'aryehjason@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1495, N'kt.brown@verizon.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1496, N'jnnfrmcdnld13@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1497, N'bjoern.dauer@web.de')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1498, N'drewyap@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1499, N'mabdelazizny@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1500, N'gabriel_montgomery@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1501, N'sdunlea@billingsolutionsinc.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1502, N'luisj0004@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1503, N'adam.barry81@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1504, N'blue_eyed_girl08@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1505, N'prettyr.santacruz19@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1506, N'cgentry_nascarlady@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1507, N'joshua.buell99@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1508, N'mariselaserrato.77@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1509, N'wohlfeld149@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1510, N'shengroan@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1511, N'mpscontracting@embarqmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1512, N'vernita@vagco.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1513, N'seguritanpeter@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1514, N'toddagerken@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1515, N'ypielet@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1516, N'jramist@usnonwovens.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1517, N'ronda@phoenixhvac.org')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1518, N'dermmom379@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1519, N'benoitalison@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1520, N'tunesiajackson@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1521, N'robynfischer@tampabay.rr.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1522, N'jspeight2@sbcglobal.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1523, N'info@calzatureventuri.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1524, N'cruzei06ro@sympatico.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1525, N'jacob.domingue@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1526, N'rhecteman@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1527, N'charleswhite277v@sbcglobal.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1528, N'elmo6176@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1529, N'hdkesterton@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1530, N'kaylafishleigh@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1531, N'omarasmar@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1532, N'sharma.vibhor@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1533, N'tmaidds@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1534, N'ladyyoyogemini@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1535, N'sharma.vibhor@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1536, N'liz@citysign.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1537, N'corachiramirez@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1538, N'andmac92@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1539, N'jenn7087@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1540, N'djplug805@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1541, N'pyro4ik@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1542, N'dcmazingo@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1543, N'vera-sanders@web.de')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1544, N'jruptash@sorrell.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1545, N'mamaneko1@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1546, N'dcruse@atminsurance.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1547, N'mardigrasman69@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1548, N'thepvongsa@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1549, N'emgilbert13@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1550, N'usiltrading@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1551, N'dee.n.fitz@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1552, N'dgonza73@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1553, N'unitedmovietone@yahoo.com.au')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1554, N'richtasch@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1555, N'odreye@free.fr')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1556, N'alexandrareers@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1557, N'eric@entouchsolutions.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1558, N'russellm@mcfarlandinsurance.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1559, N'christine.utilla@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1560, N'joyce@kollingerautobody.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1561, N'mmmchd@mta.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1562, N'latoriaray@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1563, N'anil@aniljain.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1564, N'h.torres@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1565, N'nancyz849@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1566, N'trisha@brasher.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1567, N'sengger@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1568, N'xiaoxiaoaisj@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1569, N'info@iibbt.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1570, N'mfp.fire@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1571, N'lloydacarney@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1572, N'nickerson4385@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1573, N'freydonna2@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1574, N'sparkey4@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1575, N'elenitakas@icloud.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1576, N'galina0407@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1577, N'robtcook13@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1578, N'marlo.a.goldstein@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1579, N'mfp.fire@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1580, N'secolton@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1581, N'sphtobin@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1582, N'jdwilson385@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1583, N'valerie.morales25@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1584, N'budhraja.hb@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1585, N'jskifich@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1586, N'karthik.9.moorthy@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1587, N'audrey.guenver@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1588, N'braydensdad3336@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1589, N'johnterry530@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1590, N'jhnn_ortiz@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1591, N'jhnn_ortiz@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1592, N'merrilldca@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1593, N'jeb69111@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1594, N'jhdlocal37132@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1595, N'jesse@lexnimble.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1596, N'rachelhyatt1951@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1597, N'blopez1982@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1598, N'rachelhyatt1951@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1599, N'joyce@kollingerautobody.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1600, N'jesse@lexnimble.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1601, N'harris.greg62@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1602, N'lenny@mjfliegel.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1603, N'dnadelnyc@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1604, N'mirnafigueroa1304@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1605, N'exa.sick@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1606, N'stef.bona@free.fr')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1607, N'jsgreen64@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1608, N'dlafonj@peoplepc.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1609, N'prettydd2003@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1610, N'danahunt7336@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1611, N'aexton@jccrochester.org')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1612, N'lhackling@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1613, N'nmiachkon@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1614, N'leylekoglu@yahoo.de')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1615, N'21293009@adp.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1616, N'marcia.schr@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1617, N'jolene@fmpca.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1618, N'amyrae.wrinkles@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1619, N'spamy@email.unc.edu')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1620, N'clay@lonetrail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1621, N'marcia.schr@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1622, N'rwhite@fulham.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1623, N'jdeconcini@sbcglobal.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1624, N'kathleen.townes@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1625, N'downatdeanos3@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1626, N'kathleen.townes@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1627, N'alexjackson31@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1628, N'centroprofumi@libero.it')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1629, N'22317557@adp.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1630, N'ashley85lara@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1631, N'lyndz126@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1632, N'taaylorchapman@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1633, N'dmorrison@coyotevalleycasino.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1634, N'jmoody5476@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1635, N'stacystruth@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1636, N'cenrarisul1975@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1637, N'donalloh@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1638, N'will@billmaycpa.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1639, N'jmh7151@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1640, N'arperez@programmanagers.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1641, N'chamber@mountdora.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1642, N'blake.harris@princetoninformation.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1643, N'jcadman32@rogers.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1644, N'brian.kenyon@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1645, N'justinmartin08@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1646, N'alexjackson31@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1647, N'emobley23@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1648, N'mmandel@eriez.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1649, N'sallmond@cfl.rr.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1650, N'boris.barats@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1651, N'igetzel@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1652, N'harrison3@cox.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1653, N'smkerlin@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1654, N'jospeicher@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1655, N'gerardofeb@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1656, N'nishimoto58@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1657, N'msmj519@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1658, N'stephanie.auman@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1659, N'auto.sales@sbcglobal.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1660, N'thtsmee52@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1661, N'chamber@mountdora.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1662, N'brad@speedprinting.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1663, N'jp@htm-mbs.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1664, N'oomachew@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1665, N'derekelakin@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1666, N'sftmayes@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1667, N'customerservice@omeincorporated.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1668, N'jr_smith2005@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1669, N'horner_ally@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1670, N'apachebay@netzero.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1671, N'julbright@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1672, N'boullamitte@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1673, N'b_cobra443@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1674, N'jr_smith2005@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1675, N'dr.wallin@silverleafdentistry.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1676, N'asoriano@citileafhousing.nyc')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1677, N'only_serve_god@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1678, N'lgjohnson77@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1679, N'giwielen@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1680, N'stacys46@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1681, N'maggsb86@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1682, N'brendaluper6@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1683, N'azwafink@gmx.de')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1684, N'tobi.hirsch@roachcollections.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1685, N'alex_salas4@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1686, N'tanyamcason@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1687, N'ericcookmeyer@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1688, N'bmhughes13@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1689, N'michaelbedford24@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1690, N'l@mwrs-ei.de')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1691, N'tlcrabtree1@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1692, N'contact@blvdbaby.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1693, N'sally@silversally.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1694, N'russ.joan@vdps.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1695, N'jandbmcfadden@bell.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1696, N'toulou.yong@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1697, N'sejordan2111@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1698, N'danielagranja5@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1699, N'greeneleanna@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1700, N'lrothman828@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1701, N'frankiewood47@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1702, N'mehdikn@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1703, N'jenjenmonkey@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1704, N'achmeg@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1705, N'hay7448@setonhill.edu')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1706, N'rlavallee2@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1707, N'michaelkelley54@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1708, N'rirvingc@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1709, N'ibrahim.marouf@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1710, N'ckrawch@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1711, N'ronnica30@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1712, N'kroot@pinesofsarasota.org')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1713, N'stuartfleishman@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1714, N'horsedogcat@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1715, N'dougdward@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1716, N'omaristuart@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1717, N'nongsuwanna30@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1718, N'vastpp@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1719, N'amy@bainlaw.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1720, N'mark.sutfin@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1721, N'sfcguzmanretired@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1722, N'edgarbarcenas64@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1723, N'okfxo225@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1724, N'rhianna.gti@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1725, N'harris.c.james@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1726, N'menakaemoney1985@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1727, N'skyyystarr138@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1728, N'dolores.kehm@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1729, N'skelly_wi@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1730, N'nashia_smith@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1731, N'v.baugess@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1732, N'akeophaseut@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1733, N'denise@mjhorowitz-cpa.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1734, N'bbmorrisbozo2@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1735, N'chera.sturm@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1736, N'mayhem326@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1737, N'tbecks75@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1738, N'alucynski@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1739, N'rburnsede@cfl.rr.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1740, N'cando.tanya@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1741, N'ade.vickers@googlemail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1742, N'ashannibff@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1743, N'thomascsheridan199@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1744, N'briefel@bisdtx.org')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1745, N'heatherjmaynard@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1746, N'matthungerford12@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1747, N'jkindersr@windstream.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1748, N'mrbagby1@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (1749, N'blake.harris@princetoninformation.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2748, N'skswan@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2749, N'rmaxfield@optonline.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2750, N'sfox5371@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2751, N'skswan@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2752, N'm.gayed11@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2753, N'jpayne@geneseeins.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2754, N'kevin@bedemco.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2755, N'aryehjason@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2756, N'nathanrsims@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2757, N'aryehjason@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2758, N'aryehjason@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2759, N'sengtran007@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2760, N'connor.haneman@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2761, N'karlbrown@cfl.rr.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2762, N'shouser@bresnan.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2763, N'dparkinson@unxvision.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2764, N'jpreston40@cfl.rr.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2765, N'rothgeb@verizon.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2766, N'info@lease-line.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2767, N'anson2511a@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2768, N'ian-young@live.ca')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2769, N'quirecrew7@roadrunner.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2770, N'kkolich0502@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2771, N'kab027@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2772, N'randys1970@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2773, N'lucyskhagar@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2774, N'randys1970@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2775, N'amdelucia1@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2776, N'somersag@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2777, N'sebasti.h@web.de')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2778, N'pranjalshah@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2779, N'patience.niece@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2780, N'lilc0051@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2781, N'katrinatolton@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2782, N'csduncan@tampabay.rr.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2783, N'mlholmquistp@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2784, N'avar@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2785, N'fakhreshenouda@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2786, N'music@neuquest.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2787, N'ebannister21@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2788, N'josephinebima@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2789, N'ngaspa2971@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2790, N'mom2ashleigh@aol.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2791, N'somersag@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2792, N'miltonlugo77@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2793, N'tobypalmer@tampabay.rr.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2794, N'e.ebmeier2@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2795, N'feofilgorjachev020183@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2796, N'markustw@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2797, N'nychico5@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2798, N'sharma.pratika@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2799, N'melanie050388@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2800, N'karenhopeeiser@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2801, N'jackie.delllano@atlasair.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2802, N'margron@sbcglobal.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2803, N'juancamilo78@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2804, N'sharma.pratika@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2805, N'johnathanmarr@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2806, N'ebannister21@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2807, N'donalddcox@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2808, N'dermnpc@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2809, N'jjguldnerindy@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2810, N'karenhopeeiser@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2811, N'michael.roman23@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2812, N'keith.herring5102@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2813, N'daniel.seufert@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2814, N'winter_angel98@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2815, N'mgshuster@sbcglobal.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2816, N'hunterbradford13@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2817, N'imayankee@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2818, N'sara.vesta@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2819, N'relvisaw@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2820, N'torvald4162@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2821, N'dwcal9@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2822, N'poppyopalus@comcast.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2823, N'richardshutt@bellsouth.net')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2824, N'hops9936@yahoo.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2825, N'ataeldon@gmail.com')
GO
INSERT [dbo].[Subscripers] ([ID], [Email]) VALUES (2826, N'ataeldon@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[Subscripers] OFF
GO
SET IDENTITY_INSERT [dbo].[Teams] ON 

GO
INSERT [dbo].[Teams] ([ID], [Name], [Job], [Facebook], [Twitter], [Instgram]) VALUES (12, N'Noha Gamal', N'PR Executive ', N'FaceBook', N'Twitter', N'Instgram')
GO
INSERT [dbo].[Teams] ([ID], [Name], [Job], [Facebook], [Twitter], [Instgram]) VALUES (13, N'Mirna Galal ', N'Editor', N'www.facebook.com', N'www.twitter.com', N'www.instagram.com')
GO
SET IDENTITY_INSERT [dbo].[Teams] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (16, N'test', N'info@mediagatestudios.com', N'123', 1142229025, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (20, N'Ahmed Sami', N'programming@mediagatestudios.com', N'1234', 1142229025, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (22, N'Ata sabri', N'ataeldon@gmail.com', N'0123', 1142229025, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (23, N'Ramy George', N'ramy903@gmail.com', N'qwerty', 1095353520, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (24, N'Ahmad Muhammad Awad', N'ahmad.m.awad1991@gmail.com', N'ahmadawad', 1143116001, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (25, N'essamalgendy', N'algendy.essam@yahoo.com', N'hananhanan12', 1002481351, N'egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (26, N'salma.aql', N'salma.aql@gmail.com', N'((hope))', 1111199778, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (27, N'RASD FANI', N'rasdfani@gmail.com', N'4824967rasd', 24824967, N'egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (28, N'Eslam.elbatat', N'eslam.elbatat@hotmail.com', N'davinci_resolve2', 1114221174, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (29, N'Ahmed Gawad', N'gogo.gawad@gmail.com', N'1234567', 1005672255, N'egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (30, N'Amr Mokhtar', N'a.mokhtar83@gmail.com', N'yassin2011', 1007880272, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (31, N'Bmasry95', N'bassantmasry@gmail.com', N'ahmed9895', 1117084350, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (32, N'Rashad', N'rashadnayr@yahoo.com', N'kaitoukido', 1141277563, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (33, N'Donya yasser', N'donya.yasser26@outlook.com', N'123456789', 1091314243, N'Cairo')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (34, N'Marian', N'marianreda_89@yahoo.com', N'12345678', 1100248709, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (35, N'fifauwk', N'moe.ftw@yahoo.com', N'Mamaforever07', 1123008708, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (36, N'georgemonir', N'george_monir@yahoo.com', N'123456', 12554, N'egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (37, N'Reem', N'reem.hesham930@gmail.com', N'0Per@m0$t@f@', 1008972889, N'Cairo')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (38, N'sa', N'sa@yahoo.com', N'2358', 115764, N'jffjj')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (39, N'Marwanharoun ', N'marwan_haroun@hotmail.com', N'marlen817', 1061521924, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (40, N'man', N'a@gmail.com', N'a', 1551617059, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (41, N'Nada', N'nada.allam10@gmail.com', N'allam012', 1010003311, N'Egypt')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (42, N'Majed', N'majed.ahmed1029@gmail.com', N'123456', 1010618710, N'egypte')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (43, N'Tharwat Nassar', N'k.k.0044tn@gmail.com', N'schizophrenia', 1555223438, N'Egypt ')
GO
INSERT [dbo].[Users] ([ID], [UserName], [Email], [Password], [Phone], [Country]) VALUES (44, N'azxas', N'azxas30@gmail.com', N'0188377230', 1015171895, N'مصر')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET IDENTITY_INSERT [dbo].[video_type] ON 

GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (10, N'Promotional / Marketing')
GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (11, N'Event Coverage')
GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (12, N'Instructional / Training')
GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (13, N'TV Commercial')
GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (14, N'Social Media')
GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (15, N'Program Production')
GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (16, N'Broadcast Production')
GO
INSERT [dbo].[video_type] ([ID], [Name]) VALUES (17, N'Digital Content')
GO
SET IDENTITY_INSERT [dbo].[video_type] OFF
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Users]    Script Date: 11/19/2019 10:10:51 AM ******/
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
ALTER TABLE [dbo].[Career_Requirment]  WITH CHECK ADD  CONSTRAINT [FK_Career_ReCaree_4D94879B] FOREIGN KEY([Career_ID])
REFERENCES [dbo].[Careers] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Career_Requirment] CHECK CONSTRAINT [FK_Career_ReCaree_4D94879B]
GO
ALTER TABLE [dbo].[Career_Requirment]  WITH CHECK ADD  CONSTRAINT [FK_Career_ReReqir_4CA06362] FOREIGN KEY([Reqirment_ID])
REFERENCES [dbo].[Requirments] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Career_Requirment] CHECK CONSTRAINT [FK_Career_ReReqir_4CA06362]
GO
ALTER TABLE [dbo].[Career_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Career_SkCaree_534D60F1] FOREIGN KEY([Career_ID])
REFERENCES [dbo].[Careers] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Career_Skill] CHECK CONSTRAINT [FK_Career_SkCaree_534D60F1]
GO
ALTER TABLE [dbo].[Career_Skill]  WITH CHECK ADD  CONSTRAINT [FK_Career_SkSkill_52593CB8] FOREIGN KEY([Skill_ID])
REFERENCES [dbo].[Skills] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Career_Skill] CHECK CONSTRAINT [FK_Career_SkSkill_52593CB8]
GO
ALTER TABLE [dbo].[Content_Details]  WITH CHECK ADD  CONSTRAINT [FK_Content_Dconte_71D1E811] FOREIGN KEY([content_ID])
REFERENCES [dbo].[Content] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Content_Details] CHECK CONSTRAINT [FK_Content_Dconte_71D1E811]
GO
ALTER TABLE [dbo].[Custom_Price]  WITH CHECK ADD  CONSTRAINT [FK_UsersCustom_Price] FOREIGN KEY([UsersID])
REFERENCES [dbo].[Users] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Custom_Price] CHECK CONSTRAINT [FK_UsersCustom_Price]
GO
ALTER TABLE [dbo].[custom_videos]  WITH CHECK ADD  CONSTRAINT [FK_custom_viCusto_59063A47] FOREIGN KEY([CustomOrder_Id])
REFERENCES [dbo].[Custom_Price] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[custom_videos] CHECK CONSTRAINT [FK_custom_viCusto_59063A47]
GO
ALTER TABLE [dbo].[custom_videos]  WITH CHECK ADD  CONSTRAINT [FK_custom_viVideo_5812160E] FOREIGN KEY([Video_TypeID])
REFERENCES [dbo].[video_type] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[custom_videos] CHECK CONSTRAINT [FK_custom_viVideo_5812160E]
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
USE [master]
GO
ALTER DATABASE [Mediagatestudios] SET  READ_WRITE 
GO

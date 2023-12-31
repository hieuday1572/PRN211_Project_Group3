create database LMM;
USE [LMM]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[UserName] [nvarchar](450) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Phone] [bigint] NULL,
	[Address] [nvarchar](max) NULL,
	[Gender] [int] NULL,
	[Gmail] [nvarchar](max) NULL,
	[Fullname] [nvarchar](max) NULL,
	[Birthday] [datetime2](7) NULL,
	[RoleId] [int] NULL,
	[Active] [smallint] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[AssessmentId] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[Part] [int] NULL,
	[Weight] [nvarchar](max) NULL,
	[CompletionCriteria] [nvarchar](max) NULL,
	[Duration] [nvarchar](max) NULL,
	[Clo] [nvarchar](max) NOT NULL,
	[QuestionType] [nvarchar](max) NULL,
	[NoQuestion] [nvarchar](max) NULL,
	[KnowledgeSkill] [nvarchar](max) NULL,
	[GradingGuide] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[SyllabusId] [int] NULL,
 CONSTRAINT [PK_Assessment] PRIMARY KEY CLUSTERED 
(
	[AssessmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[ComboId] [int] IDENTITY(1,1) NOT NULL,
	[ComboNameVn] [nvarchar](max) NULL,
	[ComboNameEn] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[Tag] [nvarchar](max) NULL,
	[CurriculumId] [int] NULL,
 CONSTRAINT [PK_Combo] PRIMARY KEY CLUSTERED 
(
	[ComboId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Combo_Subject]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo_Subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ComboId] [int] NOT NULL,
	[SubjectCode] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Combo_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculum]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculum](
	[CurriculumId] [int] IDENTITY(1,1) NOT NULL,
	[CurriculumCode] [nvarchar](max) NOT NULL,
	[NameVn] [nvarchar](max) NULL,
	[NameEn] [nvarchar](max) NULL,
	[Decription] [nvarchar](max) NULL,
	[DecisionNo] [nvarchar](450) NULL,
 CONSTRAINT [PK_Curriculum] PRIMARY KEY CLUSTERED 
(
	[CurriculumId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Curriculum_Subject]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Curriculum_Subject](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CurriculumId] [int] NOT NULL,
	[SubjectCode] [nvarchar](450) NOT NULL,
	[Semester] [int] NULL,
 CONSTRAINT [PK_Curriculum_Subject] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Decision]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Decision](
	[DecisionNo] [nvarchar](450) NOT NULL,
	[DecisionName] [nvarchar](max) NULL,
	[Note] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_Decision] PRIMARY KEY CLUSTERED 
(
	[DecisionNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[FeedbackId] [int] IDENTITY(1,1) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[UserNameTo] [nvarchar](450) NOT NULL,
	[UserNameFrom] [nvarchar](max) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NULL,
 CONSTRAINT [PK_feedback] PRIMARY KEY CLUSTERED 
(
	[FeedbackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Material]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Material](
	[MaterialId] [int] IDENTITY(1,1) NOT NULL,
	[MaterialDescription] [nvarchar](max) NOT NULL,
	[Author] [nvarchar](max) NOT NULL,
	[Publisher] [nvarchar](max) NOT NULL,
	[PublishedDate] [nvarchar](max) NOT NULL,
	[Url] [nvarchar](max) NOT NULL,
	[SubjectCode] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_Material] PRIMARY KEY CLUSTERED 
(
	[MaterialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialOfTeacher]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialOfTeacher](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[TeacherUsername] [nvarchar](450) NOT NULL,
	[SubjectCode] [nvarchar](450) NOT NULL,
	[URL] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_MaterialOfTeacher] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[SessionId] [int] IDENTITY(1,1) NOT NULL,
	[Topic] [nvarchar](max) NOT NULL,
	[LearningTeachingType] [nvarchar](max) NULL,
	[StudentMaterials] [nvarchar](max) NULL,
	[Constructivequestion] [nvarchar](max) NULL,
	[SubjectCode] [nvarchar](450) NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[SessionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [smallint] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubjectCode] [nvarchar](450) NOT NULL,
	[SubjectNameVn] [nvarchar](max) NULL,
	[SubjectNameEn] [nvarchar](max) NULL,
	[PreRequisite] [nvarchar](max) NULL,
	[StatusId] [smallint] NOT NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[SubjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Syllabus]    Script Date: 22/07/2023 11:28:01 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Syllabus](
	[SyllabusId] [int] IDENTITY(1,1) NOT NULL,
	[SyllabusNameVn] [nvarchar](max) NULL,
	[SyllabusNameEn] [nvarchar](max) NULL,
	[SubjectCode] [nvarchar](450) NULL,
	[NoCredit] [int] NULL,
	[DegreeLevel] [nvarchar](max) NULL,
	[TimeAllocation] [nvarchar](max) NULL,
	[PreRequisite] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[StudentTask] [nvarchar](max) NULL,
	[Tool] [nvarchar](max) NULL,
	[ScoringScale] [int] NULL,
	[DecisionNo] [nvarchar](450) NULL,
	[IsApproved] [smallint] NULL,
	[Note] [nvarchar](max) NULL,
	[MinAvgMarkToPass] [int] NULL,
	[IsActive] [smallint] NULL,
 CONSTRAINT [PK_Syllabus] PRIMARY KEY CLUSTERED 
(
	[SyllabusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230717135449_LMM', N'6.0.18')
GO
INSERT [dbo].[Account] ([UserName], [Password], [Image], [Phone], [Address], [Gender], [Gmail], [Fullname], [Birthday], [RoleId], [Active]) VALUES (N'admin', N'12345', NULL, 837445702, N'Hoa Lac edited', 50, N'admin@fpt.edu.vn', N'Hiếu Lê edited', CAST(N'2023-07-12T10:50:00.0000000' AS DateTime2), 1, 1)
INSERT [dbo].[Account] ([UserName], [Password], [Image], [Phone], [Address], [Gender], [Gmail], [Fullname], [Birthday], [RoleId], [Active]) VALUES (N'ha', N'12345', NULL, NULL, NULL, NULL, N'ha@fpt.edu.vn', N'ha', NULL, 3, 1)
INSERT [dbo].[Account] ([UserName], [Password], [Image], [Phone], [Address], [Gender], [Gmail], [Fullname], [Birthday], [RoleId], [Active]) VALUES (N'hieu', N'12345', NULL, NULL, NULL, NULL, N'hieu@fpt.edu.vn', N'hieu', NULL, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Assessment] ON 

INSERT [dbo].[Assessment] ([AssessmentId], [Category], [Type], [Part], [Weight], [CompletionCriteria], [Duration], [Clo], [QuestionType], [NoQuestion], [KnowledgeSkill], [GradingGuide], [Note], [SyllabusId]) VALUES (1, N'Assignment', N'on-going	', 2, N'30.0%', N'>0', N'Option 1: At home Option2: (For Constructivism Approach only): Follow lecturer''s proposal', N'1', N'Option 1: Developing Assemly program Option 2 (For Constructivism Approach only): Follow lecturer''s proposal', N'Option 1: 2 Option 2 (For Constructivism Approach only): Follow lecturer''s proposal1: 2 Option 2: Follow lecturer''s proposal', N'Basic programs', N'Teachers assess their works on their computers', N'30% of total progress mark', 1)
INSERT [dbo].[Assessment] ([AssessmentId], [Category], [Type], [Part], [Weight], [CompletionCriteria], [Duration], [Clo], [QuestionType], [NoQuestion], [KnowledgeSkill], [GradingGuide], [Note], [SyllabusId]) VALUES (4, N'2', N'2', 2, N'2', N'2', N'2', N'2', N'2', N'2', N'2', N'2', N'2', 1)
SET IDENTITY_INSERT [dbo].[Assessment] OFF
GO
SET IDENTITY_INSERT [dbo].[Combo] ON 

INSERT [dbo].[Combo] ([ComboId], [ComboNameVn], [ComboNameEn], [Note], [Tag], [CurriculumId]) VALUES (1, N'Lap trinh .Net', N'.Net', N'none', N'none', 1)
INSERT [dbo].[Combo] ([ComboId], [ComboNameVn], [ComboNameEn], [Note], [Tag], [CurriculumId]) VALUES (2, N'ABC edited', N'CDE edited', N'none', N'none', 1)
SET IDENTITY_INSERT [dbo].[Combo] OFF
GO
SET IDENTITY_INSERT [dbo].[Curriculum] ON 

INSERT [dbo].[Curriculum] ([CurriculumId], [CurriculumCode], [NameVn], [NameEn], [Decription], [DecisionNo]) VALUES (1, N'SE', N'Kĩ thuật phần mềm edited', N'Software engineering ', N'none', N'1189-QÐ-ÐHFPT')
INSERT [dbo].[Curriculum] ([CurriculumId], [CurriculumCode], [NameVn], [NameEn], [Decription], [DecisionNo]) VALUES (3, N'AS', N'xvsfegrfgbf', N'bzdfbdz', N'bfdbdfbd', N'1189-QÐ-ÐHFPT')
INSERT [dbo].[Curriculum] ([CurriculumId], [CurriculumCode], [NameVn], [NameEn], [Decription], [DecisionNo]) VALUES (4, N'AI', N'Tri tuye nhan tao', N'abc', N'none', N'1189-QÐ-ÐHFPT')
SET IDENTITY_INSERT [dbo].[Curriculum] OFF
GO
SET IDENTITY_INSERT [dbo].[Curriculum_Subject] ON 

INSERT [dbo].[Curriculum_Subject] ([id], [CurriculumId], [SubjectCode], [Semester]) VALUES (3, 3, N'CEA201', 1)
SET IDENTITY_INSERT [dbo].[Curriculum_Subject] OFF
GO
INSERT [dbo].[Decision] ([DecisionNo], [DecisionName], [Note], [CreateDate]) VALUES (N'1189-QÐ-ÐHFPT', N'Ban hành đề cương chi tiết học kì Spring 2023', N'dgergre', NULL)
GO
SET IDENTITY_INSERT [dbo].[feedback] ON 

INSERT [dbo].[feedback] ([FeedbackId], [Content], [UserNameTo], [UserNameFrom], [Title], [CreateDate]) VALUES (1, N'fsdgd', N'admin', N'hieu', N'esdf', NULL)
SET IDENTITY_INSERT [dbo].[feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[Material] ON 

INSERT [dbo].[Material] ([MaterialId], [MaterialDescription], [Author], [Publisher], [PublishedDate], [Url], [SubjectCode]) VALUES (2, N'none', N'FPTU (edited)', N'ADMIN', N'2023-07-12', N'https://drive.google.com/drive/folders/1Xlc9pLTyKkR0j3OZ6gLaP0i1k9R2XjtH?usp=sharing', N'CEA201')
SET IDENTITY_INSERT [dbo].[Material] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialOfTeacher] ON 

INSERT [dbo].[MaterialOfTeacher] ([Id], [Description], [TeacherUsername], [SubjectCode], [URL], [Status]) VALUES (2, N'Tai lieu', N'hieu', N'CEA201', N'vhjhkl', N'approved')
INSERT [dbo].[MaterialOfTeacher] ([Id], [Description], [TeacherUsername], [SubjectCode], [URL], [Status]) VALUES (3, N'Tai lieu cua hieu', N'hieu', N'CEA201', N'vhjhkl', N'waiting')
INSERT [dbo].[MaterialOfTeacher] ([Id], [Description], [TeacherUsername], [SubjectCode], [URL], [Status]) VALUES (4, N'Tai lieu cua hieu', N'hieu', N'CEA201', N'abc', N'waiting')
SET IDENTITY_INSERT [dbo].[MaterialOfTeacher] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (1, N'ADMIN')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (2, N'Teacher')
INSERT [dbo].[Role] ([RoleId], [RoleName]) VALUES (3, N'Student')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Session] ON 

INSERT [dbo].[Session] ([SessionId], [Topic], [LearningTeachingType], [StudentMaterials], [Constructivequestion], [SubjectCode]) VALUES (1, N'Introduction to the course
Chapter 1: Introduction
1.1 Organization and Architecture', N'Offline', N'	- Slide
- Text Book,', N'What is computer architecture? What is computer organization? Example?', N'CEA201')
INSERT [dbo].[Session] ([SessionId], [Topic], [LearningTeachingType], [StudentMaterials], [Constructivequestion], [SubjectCode]) VALUES (2, N'	Introduction to the course
Chapter 1: Introduction
1.2 Structure and Function', N'Offline', N'- Slide
- Text Book,', N'Explain about Structure of computer. Explain about Functions of computer.', N'CEA201')
INSERT [dbo].[Session] ([SessionId], [Topic], [LearningTeachingType], [StudentMaterials], [Constructivequestion], [SubjectCode]) VALUES (7, N'fghjj edited', N'ffdghj', N'fghj', N'dfg', N'OSG202')
INSERT [dbo].[Session] ([SessionId], [Topic], [LearningTeachingType], [StudentMaterials], [Constructivequestion], [SubjectCode]) VALUES (8, N'fghjj', N'ffdghj edited', N'fghj', N'dfg', N'ewtrwrte')
INSERT [dbo].[Session] ([SessionId], [Topic], [LearningTeachingType], [StudentMaterials], [Constructivequestion], [SubjectCode]) VALUES (9, N'SDFB ', N'ƯEFG', N'ƯEF', N'È', N'CEA201')
SET IDENTITY_INSERT [dbo].[Session] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (1, N'ACTIVE')
INSERT [dbo].[Status] ([StatusId], [StatusName]) VALUES (2, N'MAINTAIN')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
INSERT [dbo].[Subject] ([SubjectCode], [SubjectNameVn], [SubjectNameEn], [PreRequisite], [StatusId]) VALUES (N'CEA201', N'Tổ chức và Kiến trúc máy tính', N'Computer Organization and Architecture', N'3trythfhg edited', 2)
INSERT [dbo].[Subject] ([SubjectCode], [SubjectNameVn], [SubjectNameEn], [PreRequisite], [StatusId]) VALUES (N'ewtrwrte', N'ewtqrwht', N'ewtrhtfdg', N'ewtrwtdfg', 1)
INSERT [dbo].[Subject] ([SubjectCode], [SubjectNameVn], [SubjectNameEn], [PreRequisite], [StatusId]) VALUES (N'OSG202', N'Hệ điều hành', N'Operating Systems', N'`wert', 2)
GO
SET IDENTITY_INSERT [dbo].[Syllabus] ON 

INSERT [dbo].[Syllabus] ([SyllabusId], [SyllabusNameVn], [SyllabusNameEn], [SubjectCode], [NoCredit], [DegreeLevel], [TimeAllocation], [PreRequisite], [Description], [StudentTask], [Tool], [ScoringScale], [DecisionNo], [IsApproved], [Note], [MinAvgMarkToPass], [IsActive]) VALUES (1, N'NUTổ chức và Kiến trúc máy tínhLL', N'Computer Organization and Architecture edited', N'CEA201', 5, N'Bachelor edited', N'Study hour (150h) = 45h contact hours + 1h final exam + 104h self-study', N'This course in an introduction to computer architecture and organization. It will cover topics in both the physical design of the computer (organization) and the logical design of the computer (architecture).', N'1) On-going asessment:- 4 Exercises: 30%- 02 Assignment: (2 Assembly programs) 30%2) Final exam: 40%3) Final result: 100%Completion Criteria:1) Every on-going assessment component >02) Final Exam Score >=4 & Final Result >=5', N'Upon successful completion of this course, students should:1. Knowledge:- Understand the structure and function of computers generally and a distinction between computer organization and computer architecture.- Understand computer organization: roles of processors, main memory, and interface between the computer and peripherals- Understand computer architecture: instruction set, the number of bits used to represent various data types, I/O mechanism and techniques for addressing memory2. Skills:- Be able to solve binary math operations using the computer.- Be able to write simple assembly language programs- Be able to prepare engineering reports and do presentations scientifically- Be able to apply knowledges to do research projects.', N'1', 10, N'1189-QÐ-ÐHFPT', NULL, N'45y46u578765u4', 5, NULL)
SET IDENTITY_INSERT [dbo].[Syllabus] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([RoleId])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role_RoleId]
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Syllabus_SyllabusId] FOREIGN KEY([SyllabusId])
REFERENCES [dbo].[Syllabus] ([SyllabusId])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Syllabus_SyllabusId]
GO
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD  CONSTRAINT [FK_Combo_Curriculum_CurriculumId] FOREIGN KEY([CurriculumId])
REFERENCES [dbo].[Curriculum] ([CurriculumId])
GO
ALTER TABLE [dbo].[Combo] CHECK CONSTRAINT [FK_Combo_Curriculum_CurriculumId]
GO
ALTER TABLE [dbo].[Combo_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Combo_Subject_Combo_ComboId] FOREIGN KEY([ComboId])
REFERENCES [dbo].[Combo] ([ComboId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Combo_Subject] CHECK CONSTRAINT [FK_Combo_Subject_Combo_ComboId]
GO
ALTER TABLE [dbo].[Combo_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Combo_Subject_Subject_SubjectCode] FOREIGN KEY([SubjectCode])
REFERENCES [dbo].[Subject] ([SubjectCode])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Combo_Subject] CHECK CONSTRAINT [FK_Combo_Subject_Subject_SubjectCode]
GO
ALTER TABLE [dbo].[Curriculum]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_Decision_DecisionNo] FOREIGN KEY([DecisionNo])
REFERENCES [dbo].[Decision] ([DecisionNo])
GO
ALTER TABLE [dbo].[Curriculum] CHECK CONSTRAINT [FK_Curriculum_Decision_DecisionNo]
GO
ALTER TABLE [dbo].[Curriculum_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_Subject_Curriculum_CurriculumId] FOREIGN KEY([CurriculumId])
REFERENCES [dbo].[Curriculum] ([CurriculumId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculum_Subject] CHECK CONSTRAINT [FK_Curriculum_Subject_Curriculum_CurriculumId]
GO
ALTER TABLE [dbo].[Curriculum_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Curriculum_Subject_Subject_SubjectCode] FOREIGN KEY([SubjectCode])
REFERENCES [dbo].[Subject] ([SubjectCode])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Curriculum_Subject] CHECK CONSTRAINT [FK_Curriculum_Subject_Subject_SubjectCode]
GO
ALTER TABLE [dbo].[feedback]  WITH CHECK ADD  CONSTRAINT [FK_feedback_Account_UserNameTo] FOREIGN KEY([UserNameTo])
REFERENCES [dbo].[Account] ([UserName])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[feedback] CHECK CONSTRAINT [FK_feedback_Account_UserNameTo]
GO
ALTER TABLE [dbo].[Material]  WITH CHECK ADD  CONSTRAINT [FK_Material_Subject_SubjectCode] FOREIGN KEY([SubjectCode])
REFERENCES [dbo].[Subject] ([SubjectCode])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Material] CHECK CONSTRAINT [FK_Material_Subject_SubjectCode]
GO
ALTER TABLE [dbo].[MaterialOfTeacher]  WITH CHECK ADD  CONSTRAINT [FK_MaterialOfTeacher_Account_TeacherUsername] FOREIGN KEY([TeacherUsername])
REFERENCES [dbo].[Account] ([UserName])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialOfTeacher] CHECK CONSTRAINT [FK_MaterialOfTeacher_Account_TeacherUsername]
GO
ALTER TABLE [dbo].[MaterialOfTeacher]  WITH CHECK ADD  CONSTRAINT [FK_MaterialOfTeacher_Subject_SubjectCode] FOREIGN KEY([SubjectCode])
REFERENCES [dbo].[Subject] ([SubjectCode])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MaterialOfTeacher] CHECK CONSTRAINT [FK_MaterialOfTeacher_Subject_SubjectCode]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Subject_SubjectCode] FOREIGN KEY([SubjectCode])
REFERENCES [dbo].[Subject] ([SubjectCode])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Subject_SubjectCode]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Status_StatusId] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Status_StatusId]
GO
ALTER TABLE [dbo].[Syllabus]  WITH CHECK ADD  CONSTRAINT [FK_Syllabus_Decision_DecisionNo] FOREIGN KEY([DecisionNo])
REFERENCES [dbo].[Decision] ([DecisionNo])
GO
ALTER TABLE [dbo].[Syllabus] CHECK CONSTRAINT [FK_Syllabus_Decision_DecisionNo]
GO
ALTER TABLE [dbo].[Syllabus]  WITH CHECK ADD  CONSTRAINT [FK_Syllabus_Subject_SubjectCode] FOREIGN KEY([SubjectCode])
REFERENCES [dbo].[Subject] ([SubjectCode])
GO
ALTER TABLE [dbo].[Syllabus] CHECK CONSTRAINT [FK_Syllabus_Subject_SubjectCode]
GO

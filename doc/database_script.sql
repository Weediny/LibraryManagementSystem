USE [Library]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 28.11.2018 1:30:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id_account] [int] NOT NULL,
	[id_personal_info] [int] NOT NULL,
	[login] [nvarchar](15) NOT NULL,
	[password] [nvarchar](30) NOT NULL,
	[position] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id_account] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Author]    Script Date: 28.11.2018 1:30:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[id_author] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[id_author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bibliography]    Script Date: 28.11.2018 1:30:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bibliography](
	[id_bibliography_record] [int] NOT NULL,
	[id_reader_ticket] [int] NOT NULL,
	[id_book_instance] [int] NOT NULL,
	[give_date] [datetime] NOT NULL,
	[get_date] [datetime] NULL,
 CONSTRAINT [PK_Bibliography] PRIMARY KEY CLUSTERED 
(
	[id_bibliography_record] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 28.11.2018 1:30:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[id_book_isbn] [int] NOT NULL,
	[title] [nvarchar](30) NOT NULL,
	[full_title] [nvarchar](150) NULL,
	[is_eBook] [bit] NOT NULL,
	[id_publishing] [int] NOT NULL,
	[language] [nvarchar](50) NOT NULL,
	[date_publish] [date] NOT NULL,
	[book_series] [nvarchar](50) NULL,
	[annotation] [nvarchar](256) NULL,
	[id_author] [int] NOT NULL,
	[id_subject] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[id_book_isbn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_related_Author]    Script Date: 28.11.2018 1:30:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_related_Author](
	[id_book] [int] NOT NULL,
	[id_author] [int] NOT NULL,
 CONSTRAINT [PK_Book_related_Author] PRIMARY KEY CLUSTERED 
(
	[id_book] ASC,
	[id_author] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instance]    Script Date: 28.11.2018 1:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instance](
	[id_book_inventory_num] [int] NOT NULL,
	[id_book_isbn] [int] NOT NULL,
 CONSTRAINT [PK_Instance] PRIMARY KEY CLUSTERED 
(
	[id_book_inventory_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 28.11.2018 1:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[id_person] [int] NOT NULL,
	[full_name] [nvarchar](50) NOT NULL,
	[birthday] [date] NOT NULL,
	[address] [nvarchar](150) NULL,
	[phone] [numeric](10, 0) NOT NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[id_person] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PublishingHouse]    Script Date: 28.11.2018 1:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublishingHouse](
	[id_publishing] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[location] [nvarchar](50) NULL,
	[category] [nvarchar](30) NULL,
 CONSTRAINT [PK_PublishingHouse] PRIMARY KEY CLUSTERED 
(
	[id_publishing] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reader]    Script Date: 28.11.2018 1:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reader](
	[id_reader_ticket] [int] NOT NULL,
	[id_personal_info] [int] NOT NULL,
 CONSTRAINT [PK_Reader] PRIMARY KEY CLUSTERED 
(
	[id_reader_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 28.11.2018 1:30:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[id_subject] [int] NOT NULL,
	[name] [nchar](10) NOT NULL,
	[id_parent_subject] [int] NULL,
 CONSTRAINT [PK_Subject] PRIMARY KEY CLUSTERED 
(
	[id_subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Person] FOREIGN KEY([id_personal_info])
REFERENCES [dbo].[Person] ([id_person])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Person]
GO
ALTER TABLE [dbo].[Bibliography]  WITH CHECK ADD  CONSTRAINT [FK_Bibliography_Instance] FOREIGN KEY([id_book_instance])
REFERENCES [dbo].[Instance] ([id_book_inventory_num])
GO
ALTER TABLE [dbo].[Bibliography] CHECK CONSTRAINT [FK_Bibliography_Instance]
GO
ALTER TABLE [dbo].[Bibliography]  WITH CHECK ADD  CONSTRAINT [FK_Bibliography_Reader] FOREIGN KEY([id_reader_ticket])
REFERENCES [dbo].[Reader] ([id_reader_ticket])
GO
ALTER TABLE [dbo].[Bibliography] CHECK CONSTRAINT [FK_Bibliography_Reader]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author] FOREIGN KEY([id_author])
REFERENCES [dbo].[Author] ([id_author])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_PublishingHouse] FOREIGN KEY([id_publishing])
REFERENCES [dbo].[PublishingHouse] ([id_publishing])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_PublishingHouse]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Subject] FOREIGN KEY([id_subject])
REFERENCES [dbo].[Subject] ([id_subject])
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Subject]
GO
ALTER TABLE [dbo].[Book_related_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_related_Author_Author] FOREIGN KEY([id_author])
REFERENCES [dbo].[Author] ([id_author])
GO
ALTER TABLE [dbo].[Book_related_Author] CHECK CONSTRAINT [FK_Book_related_Author_Author]
GO
ALTER TABLE [dbo].[Book_related_Author]  WITH CHECK ADD  CONSTRAINT [FK_Book_related_Author_Book] FOREIGN KEY([id_book])
REFERENCES [dbo].[Book] ([id_book_isbn])
GO
ALTER TABLE [dbo].[Book_related_Author] CHECK CONSTRAINT [FK_Book_related_Author_Book]
GO
ALTER TABLE [dbo].[Instance]  WITH CHECK ADD  CONSTRAINT [FK_Instance_Book] FOREIGN KEY([id_book_isbn])
REFERENCES [dbo].[Book] ([id_book_isbn])
GO
ALTER TABLE [dbo].[Instance] CHECK CONSTRAINT [FK_Instance_Book]
GO
ALTER TABLE [dbo].[Reader]  WITH CHECK ADD  CONSTRAINT [FK_Reader_Person] FOREIGN KEY([id_personal_info])
REFERENCES [dbo].[Person] ([id_person])
GO
ALTER TABLE [dbo].[Reader] CHECK CONSTRAINT [FK_Reader_Person]
GO
ALTER TABLE [dbo].[Subject]  WITH CHECK ADD  CONSTRAINT [FK_Subject_Subject] FOREIGN KEY([id_parent_subject])
REFERENCES [dbo].[Subject] ([id_subject])
GO
ALTER TABLE [dbo].[Subject] CHECK CONSTRAINT [FK_Subject_Subject]
GO

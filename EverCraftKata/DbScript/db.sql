 
/****** Object:  Table [dbo].[Ability]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ability](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ability] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AbilityModifier]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AbilityModifier](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[score] [int] NOT NULL,
	[modifier] [int] NOT NULL,
 CONSTRAINT [PK_AbilityModifier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Alignment]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Alignment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Alignment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Character]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Character](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[fk_race] [int] NOT NULL,
	[fk_alignment] [int] NOT NULL,
	[armor_class] [int] NOT NULL,
	[hit_point] [int] NOT NULL,
	[experience_point] [int] NOT NULL,
	[fk_weapon] [int] NOT NULL,
	[created_date] [datetime] NOT NULL,
 CONSTRAINT [PK_Character] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterAbility]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterAbility](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fk_character] [int] NOT NULL,
	[fk_ability] [int] NOT NULL,
	[score] [int] NOT NULL,
 CONSTRAINT [PK_CharacterAbility] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterAbilityModifier]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterAbilityModifier](
	[id] [int] NOT NULL,
	[fk_character] [int] NOT NULL,
	[fk_character_ability] [int] NOT NULL,
	[modifier_point] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_CharacterAbilityModifier] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CharacterClass]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CharacterClass](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fk_character] [int] NOT NULL,
	[fk_ability] [int] NOT NULL,
	[attack] [int] NOT NULL,
	[hit_point] [int] NOT NULL,
	[critical_range_point] [int] NOT NULL,
	[bonuses] [int] NOT NULL,
	[penalties] [int] NOT NULL,
	[special_abilities] [int] NOT NULL,
	[alignment_limitation] [int] NOT NULL,
 CONSTRAINT [PK_CharacterClass] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GameRoll]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GameRoll](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[batch_game] [varchar](50) NOT NULL,
	[fk_character] [int] NOT NULL,
	[roll_score] [int] NOT NULL,
	[is_hit] [int] NOT NULL,
 CONSTRAINT [PK_GameRoll] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Level]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Level](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[range_from] [int] NOT NULL,
	[range_to] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[increase_hit_point] [int] NOT NULL,
 CONSTRAINT [PK_Level] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Race]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Race](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[is_default] [tinyint] NOT NULL,
 CONSTRAINT [PK_Race] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Weapon]    Script Date: 15 Dec 2021 16:9:18 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Weapon](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fk_race] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Weapon] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Ability] ON 
GO
INSERT [dbo].[Ability] ([id], [name]) VALUES (1, N'Strength')
GO
INSERT [dbo].[Ability] ([id], [name]) VALUES (2, N'Dexterity')
GO
INSERT [dbo].[Ability] ([id], [name]) VALUES (3, N'Constitution')
GO
INSERT [dbo].[Ability] ([id], [name]) VALUES (4, N'Wisdom')
GO
INSERT [dbo].[Ability] ([id], [name]) VALUES (5, N'Intelligence')
GO
INSERT [dbo].[Ability] ([id], [name]) VALUES (6, N'Charisma')
GO
SET IDENTITY_INSERT [dbo].[Ability] OFF
GO
SET IDENTITY_INSERT [dbo].[AbilityModifier] ON 
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (1, 1, -5)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (2, 2, -4)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (3, 3, -4)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (4, 4, -3)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (5, 5, -3)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (6, 6, -2)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (7, 7, -2)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (8, 8, -1)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (9, 9, -1)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (10, 10, 0)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (11, 11, 0)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (12, 12, 1)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (13, 13, 1)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (14, 14, 2)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (15, 15, 2)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (16, 16, 3)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (17, 17, 3)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (18, 18, 4)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (19, 19, 4)
GO
INSERT [dbo].[AbilityModifier] ([id], [score], [modifier]) VALUES (20, 20, 5)
GO
SET IDENTITY_INSERT [dbo].[AbilityModifier] OFF
GO
SET IDENTITY_INSERT [dbo].[Alignment] ON 
GO
INSERT [dbo].[Alignment] ([id], [name]) VALUES (1, N'Good')
GO
INSERT [dbo].[Alignment] ([id], [name]) VALUES (2, N'Neutral')
GO
INSERT [dbo].[Alignment] ([id], [name]) VALUES (3, N'Evil')
GO
SET IDENTITY_INSERT [dbo].[Alignment] OFF
GO
SET IDENTITY_INSERT [dbo].[Level] ON 
GO
INSERT [dbo].[Level] ([id], [range_from], [range_to], [name], [increase_hit_point]) VALUES (1, 0, 999, N'1st Level', 5)
GO
INSERT [dbo].[Level] ([id], [range_from], [range_to], [name], [increase_hit_point]) VALUES (2, 1000, 1999, N'2nd Level', 5)
GO
INSERT [dbo].[Level] ([id], [range_from], [range_to], [name], [increase_hit_point]) VALUES (3, 2000, 2999, N'3rd Level', 5)
GO
INSERT [dbo].[Level] ([id], [range_from], [range_to], [name], [increase_hit_point]) VALUES (4, 3000, 3999, N'4th Level', 5)
GO
SET IDENTITY_INSERT [dbo].[Level] OFF
GO
SET IDENTITY_INSERT [dbo].[Race] ON 
GO
INSERT [dbo].[Race] ([id], [name], [is_default]) VALUES (1, N'Human', 1)
GO
SET IDENTITY_INSERT [dbo].[Race] OFF
GO
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_armor_class]  DEFAULT ((10)) FOR [armor_class]
GO
ALTER TABLE [dbo].[Character] ADD  CONSTRAINT [DF_Character_hit_point]  DEFAULT ((5)) FOR [hit_point]
GO

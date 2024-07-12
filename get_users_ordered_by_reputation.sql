SELECT TOP (200) [Id]
      ,[DisplayName]
      ,[Location]
      ,[Reputation]
  FROM [StackOverflow2010].[dbo].[Users]
  ORDER BY Reputation DESC
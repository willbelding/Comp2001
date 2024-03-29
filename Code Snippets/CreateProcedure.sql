CREATE PROCEDURE CW2.CreateProfile
  @Email NVARCHAR(255),
  @Profile_Picture NVARCHAR(255),
  @First_Name NVARCHAR(255),
  @Last_Name NVARCHAR(255),
  @Bio NVARCHAR(MAX),
  @Location_id INT,
  @Height INT,
  @Weight INT,
  @Units NVARCHAR(50),
  @Activity_Time_Preference NVARCHAR(50),
  @Language_id INT
AS
BEGIN
  INSERT INTO CW2.PROFILE (
    Email,
    Profile_Picture,
    First_Name,
    Last_Name,
    Bio,
    Location_id,
    Height,
    Weight,
    Units,
    Activity_Time_Preference,
    Language_id
  )
  VALUES (
    @Email,
    @Profile_Picture,
    @First_Name,
    @Last_Name,
    @Bio,
    @Location_id,
    @Height,
    @Weight,
    @Units,
    @Activity_Time_Preference,
    @Language_id
  );
END;
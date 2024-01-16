CREATE PROCEDURE CW2.UpdateProfile
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
  UPDATE PROFILE SET
    Profile_Picture = @Profile_Picture,
    First_Name = @First_Name,
    Last_Name = @Last_Name,
    Bio = @Bio,
    Location_id = @Location_id,
    Height = @Height,
    Weight = @Weight,
    Units = @Units,
    Activity_Time_Preference = @Activity_Time_Preference,
    Language_id = @Language_id
  WHERE Email = @Email;
END;
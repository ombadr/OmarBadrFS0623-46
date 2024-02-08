SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[EliminazioneImpiegato]
    @IDImpiegato INT
AS
BEGIN
    DELETE  FROM IMPIEGATO WHERE IDImpiegato = @IDImpiegato
END
GO

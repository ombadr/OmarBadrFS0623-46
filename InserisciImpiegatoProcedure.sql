SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create the stored procedure in the specified schema
CREATE PROCEDURE [dbo].[InserisciImpiegato]
    @Cognome VARCHAR(255),
    @Nome VARCHAR(255),
    @CodiceFiscale VARCHAR(255),
    @Età INT,
    @RedditoMensile MONEY,
    @DetrazioneFiscale BIT
AS
BEGIN
    INSERT INTO IMPIEGATO(Cognome, Nome, CodiceFiscale, Età, RedditoMensile, DetrazioneFiscale)
    VALUES(@Cognome, @Nome, @CodiceFiscale, @Età, @RedditoMensile, @DetrazioneFiscale)
    
END
GO

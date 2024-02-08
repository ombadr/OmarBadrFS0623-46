-- CREATE TABLE IMPIEGATO (
--     IDImpiegato INT PRIMARY KEY,
--     Cognome VARCHAR(255) NOT NULL,
--     Nome VARCHAR(255) NOT NULL,
--     CodiceFiscale VARCHAR(255) NOT NULL,
--     Età INT,
--     RedditoMensile MONEY,
--     DetrazioneFiscale BIT
-- );

-- CREATE TABLE IMPIEGO (
--     IDImpiego INT PRIMARY KEY,
--     IDImpiegato INT,
--     TipoImpiego VARCHAR(255) NOT NULL,
--     Data_Assunzione DATETIME NOT NULL,
--     FOREIGN KEY (IDImpiegato) REFERENCES IMPIEGATO(IDImpiegato)
-- );

-- INSERT INTO Impiegato (IDImpiegato,Cognome, Nome, CodiceFiscale, Età, RedditoMensile, DetrazioneFiscale)
-- VALUES
-- (1, 'Lucian', 'Schwartz', '6X3XQVPXRL591TDA', 12, 2500.00, 0),
-- (2, 'Homer', 'Waters', '96JGLWSNIA6Y4KV5', 12, 5466.00, 0),
-- (3, 'Tanisha', 'McKnight', 'CTIRIMQ36AP2JI6H', 12, 890.00, 1),
-- (4, 'Belle', 'Fisher', 'E2RO906WARSAJ34J', 12, 500.00, 0),
-- (5, 'Oliwier', 'Donnelly', 'ZOFK1IOW0UXXSEAQ', 12, 675.00, 0),
-- (6, 'Wesley', 'Moran', '54QF7UPZOYMREF1Y', 12, 2500.00, 0),
-- (7, 'Ayden', 'Hayes', '1SA0TXSW6LTW2VT2', 12, 3532.00, 1),
-- (8, 'Jasper', 'Macdonald', 'QZPTMKAPCI7NZC90', 12, 2500.00, 0),
-- (9, 'Leyton', 'Mcgee', 'UH2KNYNO4BDLW9NW', 12, 2500.00, 0),
-- (10, 'Ayden', 'Walls', 'RWXLO7R080UXQDNA', 12, 6785.00, 1),
-- (11, 'Mason', 'Obrien', 'TBI7NB83F4T4E1DV', 12, 123.00, 0),
-- (12, 'Curtis', 'Moss', '7PYVK2NU893Q2NI9', 12, 6543.00, 0),
-- (13, 'Hattie', 'Flynn', 'RBVLHOSCIJK6HCMV', 12, 533.00, 0),
-- (14, 'Paula', 'Wade', 'ST9XNCT0QX8SNTNL', 12, 653.00, 1),
-- (15, 'Roxanne', 'Love', 'J7LK7UE6GA2ME0ZN', 12, 2500.00, 0),
-- (16, 'Frazer', 'Valenzuela', 'O6KS2CQ3TOW3K5GR', 12, 8976.00, 1),
-- (17, 'Myles', 'Marsh', 'CCKNIQC3AN1NCR96', 12, 645.00, 0),
-- (18, 'Ahmed', 'Merritt', '8NN9MJDCBX3Q03B5', 12, 432.00, 0),
-- (19, 'Kenneth', 'Ponce', 'UC8LTUQB0J28UJHE', 12, 865.00, 0),
-- (20, 'Lina', 'Dixon', 'LKIM3B8UT5KXQTU2', 12, 764.00, 0)


-- INSERT INTO IMPIEGO (IDImpiego, IDImpiegato, TipoImpiego, Data_Assunzione)
-- VALUES
-- (1, 1, 'Accountant', '2020-01-10 09:00'),
-- (2, 2, 'Analyst', '2021-06-15 09:00'),
-- (3, 3, 'Developer', '2020-01-10 09:00'),
-- (4, 4, 'Sales Manager', '2021-06-15 09:00'),
-- (5, 5, 'CEO', '2020-01-10 09:00'),
-- (6, 6, 'Sales Representative', '2021-06-15 09:00'),
-- (7, 7, 'Farmer', '2020-01-10 09:00'),
-- (8, 8, 'Gardener', '2021-06-15 09:00'),
-- (9, 9, 'Janitor', '2020-01-10 09:00'),
-- (10, 10, 'Teacher', '2021-06-15 09:00'),
-- (11, 11, 'Professor', '2020-01-10 09:00'),
-- (12, 12, 'Data Analyst', '2021-06-15 09:00'),
-- (13, 13, 'Banker', '2020-01-10 09:00'),
-- (14, 14, 'Journalist', '2021-06-15 09:00'),
-- (15, 15, 'Detective', '2020-01-10 09:00'),
-- (16, 16, 'Truck Driver', '2021-06-15 09:00'),
-- (17, 17, 'Bus Driver', '2020-01-10 09:00'),
-- (18, 18, 'Airline Pilot', '2021-06-15 09:00'),
-- (19, 19, 'Hostess', '2020-01-10 09:00'),
-- (20, 20, 'Steward', '2021-06-15 09:00')

-- SELECT * FROM Impiegato WHERE Età > 29

-- SELECT * FROM Impiegato WHERE RedditoMensile > 800

-- SELECT * FROM Impiegato WHERE DetrazioneFiscale = 1

-- SELECT * FROM Impiegato WHERE DetrazioneFiscale = 0

-- SELECT * FROM Impiegato WHERE Cognome LIKE 'G%' ORDER BY Cognome ASC

-- SELECT count(*) as TotaleImpiegati FROM Impiegato

-- SELECT sum(RedditoMensile) as TotaleRedditoMensileImpiegati FROM Impiegato 

-- SELECT avg(RedditoMensile) as MediaRedditoMensileImpiegati FROM Impiegato

-- SELECT MAX(RedditoMensile) as ImportoRedditoMensileMaggiore FROM Impiegato

-- SELECT MIN(RedditoMensile) as ImportoRedditoMensileMaggiore FROM Impiegato

-- SELECT * FROM Impiegato
-- JOIN Impiego ON Impiegato.IDImpiegato = Impiego.IDImpiegato
-- WHERE Impiego.Data_Assunzione BETWEEN '2007-01-01' AND '2008-01-01'

-- DECLARE @TipoImpiego VARCHAR(255) = 'Developer'
-- SELECT IMPIEGATO.* FROM IMPIEGATO
-- JOIN Impiego ON IMPIEGATO.IDImpiegato = IMPIEGO.IDImpiegato
-- WHERE IMPIEGO.TipoImpiego = @TipoImpiego

-- SELECT avg(Età) as EtàMediaLavoratori FROM IMPIEGATO

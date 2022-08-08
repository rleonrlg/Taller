CREATE TABLE Cliente
(
		Dni varchar(8) NOT NULL,		
		Nombres varchar(32) NOT NULL,
		Apellidos varchar(32) NOT NULL,
		Direccion varchar(64) NOT NULL,
		Telefono varchar(16) NOT NULL,
		Estado char(1) NOT NULL,
		IdTaller int NOT NULL		
);
GO
		ALTER TABLE Cliente ADD CONSTRAINT PK_Cliente_Dni PRIMARY KEY(Dni);
		GO
		ALTER TABLE Cliente ADD CONSTRAINT CK_Cliente_Dni CHECK(LEN(Dni)>0 and LEN(Dni)<9);
		GO
		ALTER TABLE Cliente ADD CONSTRAINT CK_Cliente_Estado CHECK(Estado in('A','I'));
		GO
		ALTER TABLE Cliente ADD CONSTRAINT DF_Cliente_Nombres DEFAULT('') FOR Nombres;
		GO
		ALTER TABLE Cliente ADD CONSTRAINT DF_Cliente_Apellidos DEFAULT('') FOR Apellidos;
		GO
		ALTER TABLE Cliente ADD CONSTRAINT DF_Cliente_Direccion DEFAULT('') FOR Direccion;
		GO
		ALTER TABLE Cliente ADD CONSTRAINT DF_Cliente_Telefono DEFAULT('') FOR Telefono;
		GO
		ALTER TABLE Cliente ADD CONSTRAINT DF_Cliente_Estado DEFAULT('A') FOR Estado;
		GO
		ALTER TABLE Cliente ADD CONSTRAINT DF_Cliente_IdTaller DEFAULT(0) FOR IdTaller;
		GO
		ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_IdTaller FOREIGN KEY(IdTaller) REFERENCES Talleres(IdTaller);
		GO
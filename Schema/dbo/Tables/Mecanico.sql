CREATE TABLE Mecanico
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
		ALTER TABLE Mecanico ADD CONSTRAINT PK_Mecanico_Dni PRIMARY KEY(Dni);
		GO
		ALTER TABLE Mecanico ADD CONSTRAINT DF_Mecanico_Nombres DEFAULT('') FOR Nombres;
		GO
		ALTER TABLE Mecanico ADD CONSTRAINT DF_Mecanico_Apellidos DEFAULT('') FOR Apellidos;
		GO
		ALTER TABLE Mecanico ADD CONSTRAINT DF_Mecanico_Direccion DEFAULT('') FOR Direccion;
		GO
		ALTER TABLE Mecanico ADD CONSTRAINT DF_Mecanico_Telefono DEFAULT('') FOR Telefono;
		GO
		ALTER TABLE Mecanico ADD CONSTRAINT DF_Mecanico_Estado DEFAULT('D') FOR Estado;
		GO
		ALTER TABLE Mecanico ADD CONSTRAINT DF_Mecanico_IdTaller DEFAULT(0) FOR IdTaller;
		GO
		ALTER TABLE Mecanico ADD CONSTRAINT FK_Mecanico_IdTaller FOREIGN KEY(IdTaller) REFERENCES Talleres(IdTaller);
		GO
		ALTER TABLE Mecanico ADD CONSTRAINT CK_Mecanico_Estado CHECK(Estado in('D','O','I'));
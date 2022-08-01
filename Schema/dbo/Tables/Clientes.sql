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
		Alter table Cliente
		ADD CONSTRAINT PK_Cliente_Dni PRIMARY KEY(Dni);
		GO
		Alter table Cliente
		ADD CONSTRAINT CK_Cliente_Dni CHECK(LEN(Dni)>0 and LEN(Dni)<9);
		GO
		Alter table Cliente
		ADD CONSTRAINT CK_Cliente_Estado CHECK(Estado in('A','I'));
		GO
		Alter table Cliente
		ADD CONSTRAINT DF_Cliente_Nombres DEFAULT('') FOR Nombres;
		GO
		Alter table Cliente
		ADD CONSTRAINT DF_Cliente_Apellidos DEFAULT('') FOR Apellidos;
		GO
		Alter table Cliente
		ADD CONSTRAINT DF_Cliente_Direccion DEFAULT('') FOR Direccion;
		GO
		Alter table Cliente
		ADD CONSTRAINT DF_Cliente_Telefono DEFAULT('') FOR Telefono;
		GO
		Alter table Cliente
		ADD CONSTRAINT DF_Cliente_Estado DEFAULT('A') FOR Estado;
		GO
		Alter table Cliente
		ADD CONSTRAINT DF_Cliente_IdTaller DEFAULT(0) FOR IdTaller;
		GO
		Alter table Cliente
		ADD CONSTRAINT FK_Cliente_IdTaller FOREIGN KEY(IdTaller) REFERENCES Talleres(IdTaller);
		GO
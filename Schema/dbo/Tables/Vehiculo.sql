CREATE TABLE Vehiculo
(
	Matricula varchar(8) NOT NULL,
	CodigoModelo char(3) NOT NULL,
	Codigocolor char(2) NOT NULL,
	IdTaller int NOT NULL	
);
GO
ALTER TABLE Vehiculo
ADD CONSTRAINT PK_Vehiculo_Matricula PRIMARY KEY(Matricula);
GO
ALTER TABLE Vehiculo
ADD CONSTRAINT DF_Vehiculo_CodigoModelo DEFAULT('') FOR CodigoModelo;
GO
ALTER TABLE Vehiculo
ADD CONSTRAINT DF_Vehiculo_Codigocolor DEFAULT('') FOR Codigocolor;
GO
ALTER TABLE Vehiculo
ADD CONSTRAINT DF_Vehiculo_IdTaller DEFAULT(0) FOR IdTaller;
GO
ALTER TABLE Vehiculo
ADD CONSTRAINT FK_Vehiculo_IdTaller FOREIGN KEY(IdTaller) REFERENCES Talleres(IdTaller);
GO
ALTER TABLE Vehiculo
ADD CONSTRAINT FK_Vehiculo_CodigoModelo FOREIGN KEY(CodigoModelo) REFERENCES VehiculoModelo(CodigoModelo);
GO
ALTER TABLE Vehiculo
ADD CONSTRAINT FK_Vehiculo_CodigoColor FOREIGN KEY(CodigoColor) REFERENCES Color(CodigoColor)
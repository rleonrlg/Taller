CREATE TABLE Servicios
(
	CodigoServicio int NOT NULL,
	DniCliente varchar(8) NOT NULL,
	Matricula varchar(8) NOT NULL,
	DniMecanico varchar(8) NOT NULL,
	FechaRegistro datetime NOT NULL,
	Observacion varchar(500) NOT NULL,
	IdTaller int NOT NULL
);
GO
ALTER TABLE Servicios ADD CONSTRAINT PK_Servicios_CodigoServicio PRIMARY KEY(CodigoServicio);
GO
ALTER TABLE Servicios ADD CONSTRAINT DF_Servicios_DniCliente DEFAULT('') FOR DniCliente;
GO
ALTER TABLE Servicios ADD CONSTRAINT DF_Servicios_Matricula DEFAULT('') FOR Matricula;
GO
ALTER TABLE Servicios ADD CONSTRAINT DF_Servicios_DniMecanico DEFAULT('') FOR DniMecanico;
GO
ALTER TABLE Servicios ADD  CONSTRAINT DF_Servicios_Observacion DEFAULT('') FOR Observacion;
GO 
ALTER TABLE Servicios ADD  CONSTRAINT DF_Servicios_fechaRegistro DEFAULT(getdate()) FOR FechaRegistro;
GO
ALTER TABLE Servicios ADD CONSTRAINT DF_Servicios_IdTaller DEFAULT(0) FOR IdTaller;
GO
ALTER TABLE Servicios ADD CONSTRAINT FK_Servicios_IdTaller FOREIGN KEY(IdTaller) REFERENCES Talleres(IdTaller);
GO
ALTER TABLE Servicios ADD CONSTRAINT FK_Servicios_Matricula FOREIGN KEY(Matricula) REFERENCES Vehiculo(Matricula);
GO
ALTER TABLE Servicios ADD CONSTRAINT FK_Servicios_DniCliente FOREIGN KEY(DniCliente) REFERENCES Cliente(Dni);
GO
ALTER TABLE Servicios ADD CONSTRAINT FK_Servicios_DniMecanico FOREIGN KEY(DniMecanico) REFERENCES Mecanico(Dni)
GO
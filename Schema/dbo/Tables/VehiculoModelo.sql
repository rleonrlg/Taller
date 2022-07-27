CREATE TABLE VehiculoModelo
(
	CodigoModelo CHAR(3) NOT NULL ,
	Modelo VARCHAR(64) NOT NULL ,
	IdTaller INT NOT NULL
);
GO
		ALTER TABLE VehiculoModelo
		ADD CONSTRAINT PK_VehiculoModelo_CodigoModelo PRIMARY KEY(CodigoModelo);
		GO
		ALTER TABLE VehiculoModelo
		ADD CONSTRAINT DF_VehiculoModelo_Modelo DEFAULT('') FOR Modelo;
		GO
		ALTER TABLE VehiculoModelo
		ADD CONSTRAINT DF_VehiculoModelo_IdTaller DEFAULT(0) FOR IdTaller;
		GO
		ALTER TABLE VehiculoModelo
		ADD CONSTRAINT CK_VehiculoModelo_CodigoModelo CHECK(LEN(CodigoModelo)=3);
		GO
		ALTER TABLE VehiculoModelo
		ADD CONSTRAINT FK_VehiculoModelo_IdTaller FOREIGN KEY(IdTaller) REFERENCES Talleres(IdTaller);
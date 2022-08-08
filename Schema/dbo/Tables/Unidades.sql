CREATE TABLE Unidades
(
		CodigoUnidad char(3) NOT NULL,
		Unidad varchar(32) NOT NULL ,
		IdTaller int NOT NULL		
);
GO
ALTER TABLE Unidades ADD CONSTRAINT PK_Unidades_CodigoUnidad PRIMARY KEY(CodigoUnidad);
GO
ALTER TABLE Unidades ADD CONSTRAINT CK_Unidades_CodigoUnidad CHECK(LEN(CodigoUnidad)=3);
GO 
ALTER TABLE Unidades ADD CONSTRAINT DF_Unidades_Unidad DEFAULT('') FOR Unidad;
GO
ALTER TABLE Unidades ADD CONSTRAINT DF_Unidades_IdTaller DEFAULT(0) FOR IdTaller;
GO
ALTER TABLE Unidades ADD CONSTRAINT FK_Unidades_IdTaller FOREIGN KEY(IdTaller) REFERENCES Talleres(IdTaller);
GO
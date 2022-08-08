CREATE TABLE Productos
(
		CodigoProducto char(3) NOT NULL,
		Producto varchar(64) NOT NULL,
		PrecioUnitario decimal NOT NULL,
		CodigoUnidad char(3) NOT NULL,
		Estado char(1) NOT NULL,
		IdTaller int NOT NULL				
);
GO
ALTER TABLE Productos ADD CONSTRAINT PK_Productos_CodigoProducto PRIMARY KEY(CodigoProducto)
GO
ALTER TABLE Productos ADD CONSTRAINT CK_Productos_Estado CHECK(Estado in('A','I'));
GO
ALTER TABLE Productos ADD CONSTRAINT DF_Productos_Produto DEFAULT('') FOR Producto;
GO
ALTER TABLE Productos ADD CONSTRAINT DF_Productos_PrecioUnitario DEFAULT(0) FOR PrecioUnitario;
GO
ALTER TABLE Productos ADD CONSTRAINT DF_Productos_CodigoUnidad DEFAULT('') FOR CodigoUnidad;
GO
ALTER TABLE Productos ADD CONSTRAINT DF_Productos_Estado DEFAULT('A') FOR Estado;
GO
ALTER TABLE Productos  ADD CONSTRAINT DF_Productos_IdTaller DEFAULT(0) FOR IdTaller;
GO
ALTER TABLE Productos ADD CONSTRAINT FK_Productos_IdTaller FOREIGN KEY(IdTaller) REFERENCES Talleres(IdTaller);
GO
ALTER TABLE Productos ADD CONSTRAINT FK_Productos_CodigoUnidad FOREIGN KEY(CodigoUnidad) REFERENCES Unidades(CodigoUnidad);


-- -------------clients-------------------------------

INSERT INTO clients  VALUES (1,'tarquino@hotmail.com','12345','Daniel','Tarquino','3122456788',33,'carrera 33');
INSERT INTO clients  VALUES (2,'gomez@hotmail.com','54321','Felipe','Gomez','3113839848',19,'carrera 19');


-- --------------CATEGORIA TIENDA----------------------------------------------------------
INSERT INTO stores_category VALUES (1,'Deportes');
INSERT INTO stores_category VALUES (2,'Moda');

-- -------------  store_category ---------------------------------------------------------
INSERT INTO products_category VALUES (1,'Ropa deportiva');

INSERT INTO products_category VALUES (2,'Ropa femenina');


-- ---------------- stores ------------------------------------------------------------------------
INSERT INTO stores VALUES (1,1,'ADIDAS', 'cc santa fe');


INSERT INTO stores VALUES (2,2,'ZARA', 'cc titan plaza');

-- --------------branch_offices --------------------------------------------------------------------
INSERT INTO branch_offices VALUES (1,1,'Avenida Carrera 45 #185, Bogotá','L-203','2334567', -74.1093, 4.6532,'8:30 am a 8:00 pm');

INSERT INTO branch_offices VALUES (2,2,'Av. Boyacá #80-94, Bogotá','L-122','3567832', -74.0871, 4.6955,'10:30 am a 10:00 pm');


-- --------------- PRODUCTO ---------------------------------------------------------------------------

INSERT INTO products VALUES (1,1,1,1,'Camiseta Bayer Munchen',200.000,'T');

INSERT INTO products VALUES (2,2,2,2,'Jean',100.000,'T');


-- ---------------- DESCUENTOS ------------------------------------------------------------------------

INSERT INTO discounts VALUES (1,1,1523664000,1524873600,333,'descuento bayer',150.000);

INSERT INTO discounts VALUES (2,2,1523664000,1524873600,50,'descuento jean hombre',80.000);


-- -------------------- HISTORIAL DE DESCUENTOS---------------------------------------------------------


INSERT INTO record_discounts VALUES (2,1); 
INSERT INTO record_discounts VALUES (1,2); 

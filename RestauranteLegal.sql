CREATE TABLE pratos(
idPrato INT AUTO_INCREMENT PRIMARY KEY,
nomePrato VARCHAR(100) NOT NULL UNIQUE,
descricao VARCHAR(255),
preco DECIMAL(6,2) NOT NULL
);

SELECT * FROM pratos

INSERT INTO pratos
(nomePrato, descricao, preco)
VALUES
('Strogonoff de Frango','Frango em pedaços com molho de Strogonoff acompanhados com deliciosos champignons. Acompanhado arroz e batata palha',34.99),
('Lasanha a Bolonhesa','Deliciosas folhas de massa produzida na casa com queijo, presunto e molho de tomate com carne moida. Acompanhado de arroz, feijão e batata frita.',46.99),
('Frango a Milsanesa','Delicioso peito de frango à milanesa. Acompanhado de arroz, feijão e batata frita',37.99),
('Fillet Mignon ao Molho Madeira','Filé Mignon ao molho madeira. Acompanha arroz e batata rústica',87.99),
('Costela ao Molho Barbecue','Costela ao molho barbecue. Acompanhado arroz e cebola à milanesa.',59.99);
CREATE TABLE endereco (
	cep VARCHAR(8),
	codigo_endereco INT,
	rua VARCHAR(100), 
	numero VARCHAR(10),
	cidade VARCHAR(50),
	bairro VARCHAR(50),
	estado VARCHAR(50),

	PRIMARY KEY (cep, codigo_endereco)
);

CREATE TABLE cliente (
	cpf VARCHAR (11) PRIMARY KEY,
	nome VARCHAR (60),
	rg VARCHAR (20),
	fk_codigo_endereco INT,
	fk_cep VARCHAR(8),
	data_nascimento TEXT,

	FOREIGN KEY (fk_codigo_endereco, fk_cep) 
	REFERENCES endereco(codigo_endereco, cep)
);

CREATE TABLE produto (
	codigo INT PRIMARY KEY,
    nome_produto VARCHAR (100),
    descricao TEXT,
    quantidade INT,
    preco_unitario DECIMAL (8,2)
);

CREATE TABLE compra (
    fk_cpf_cliente VARCHAR(11),
    fk_codigo_produto INT,
    data_hora_compra DATETIME,
    valor_total_compra DECIMAL(10,2),

    PRIMARY KEY (fk_cpf_cliente, fk_codigo_produto),

    FOREIGN KEY (fk_cpf_cliente) REFERENCES cliente(cpf),
    FOREIGN KEY (fk_codigo_produto) REFERENCES produto(codigo)
);

INSERT INTO endereco VALUES
('29175000', 11, 'Avenida Abdo Saad', '1200', 'Serra', 'Jacaraípe', 'ES'),
('29182000', 12, 'Rua Principal', '300', 'Serra', 'Nova Almeida', 'ES'),
('29101030', 13, 'Avenida Antônio Gil Veloso', '500', 'Vila Velha', 'Praia da Costa', 'ES'),
('29160130', 4, 'Rua das Palmeiras', '45A', 'Serra', 'Jardim Limoeiro', 'ES'),
('29100250', 5, 'Avenida Carlos Lindenberg', '500', 'Vila Velha', 'Glória', 'ES'),
('29101200', 6, 'Rua Luciano das Neves', '150', 'Vila Velha', 'Centro', 'ES'),
('29140080', 7, 'Avenida Expedito Garcia', '250', 'Cariacica', 'Campo Grande', 'ES'),
('29145000', 8, 'Rua São João', 'S/N', 'Cariacica', 'Centro', 'ES'),
('29055030', 9, 'Rua Constante Sodré', '75', 'Vitória', 'Santa Lúcia', 'ES'),
('29160090', 10, 'Avenida Eudes Scherrer Souza', '600', 'Serra', 'Parque Residencial Laranjeiras', 'ES');

INSERT INTO cliente VALUES
('12345678901', 'Mariana Souza', 'MG1234567', 11, '29175000', '1998-05-12'),
('98765432100', 'Lucas Ferreira', 'SP7654321', 12, '29182000', '2000-09-23'),
('45678912345', 'Beatriz Oliveira', 'RJ4567891', 13, '29101030', '1995-03-30'),
('32165498700', 'Rafael Gomes', 'ES1122334', 4, '29160130', '1992-11-15'),
('15975348620', 'Camila Alves', 'BA9988776', 5, '29100250', '2001-07-08'),
('75315985246', 'Pedro Henrique', 'ES5544332', 6, '29101200', '1999-01-20'),
('85245696311', 'Juliana Martins', 'MG2233445', 4, '29160130', '1997-06-17'),
('95135785200', 'Gabriel Rocha', 'SP6677889', 5, '29100250', '2002-12-05'),
('74185296300', 'Larissa Costa', 'RJ3344556', 6, '29101200', '1996-08-28'),
('36925814700', 'Thiago Ribeiro', 'ES7788990', 7, '29140080', '1993-04-10');

INSERT INTO produto VALUES
(1, 'Arroz 5kg', 'Arroz branco tipo 1', 50, 25.90),
(2, 'Feijão 1kg', 'Feijão carioca', 60, 7.50),
(3, 'Macarrão', 'Espaguete 500g', 80, 4.20),
(4, 'Açúcar 1kg', 'Açúcar refinado', 70, 3.80),
(5, 'Café 500g', 'Café moído', 40, 12.90),
(6, 'Leite 1L', 'Leite integral', 90, 4.50),
(7, 'Óleo 900ml', 'Óleo de soja', 65, 6.90),
(8, 'Farinha 1kg', 'Farinha de trigo', 55, 5.20),
(9, 'Sal 1kg', 'Sal refinado', 100, 2.50),
(10, 'Biscoito', 'Biscoito recheado', 120, 3.00),
(11, 'Detergente', 'Detergente líquido', 85, 2.80),
(12, 'Sabão em pó', 'Sabão 1kg', 45, 10.50),
(13, 'Shampoo', 'Shampoo 350ml', 30, 14.90),
(14, 'Condicionador', 'Condicionador 350ml', 30, 15.90),
(15, 'Papel higiênico', 'Pacote com 4 rolos', 70, 8.90),
(16, 'Refrigerante 2L', 'Refrigerante cola', 60, 9.50),
(17, 'Suco 1L', 'Suco de laranja', 50, 6.50),
(18, 'Margarina 500g', 'Margarina com sal', 40, 5.90),
(19, 'Queijo 1kg', 'Queijo mussarela', 25, 32.00),
(20, 'Presunto 1kg', 'Presunto fatiado', 25, 28.00);

INSERT INTO compra VALUES
('12345678901', 1, '2026-04-24 10:00:00', 25.90),
('98765432100', 2, '2026-04-24 10:05:00', 7.50),
('45678912345', 3, '2026-04-24 10:10:00', 4.20),
('32165498700', 4, '2026-04-24 10:15:00', 3.80),
('15975348620', 5, '2026-04-24 10:20:00', 12.90),
('75315985246', 6, '2026-04-24 10:25:00', 4.50),
('85245696311', 7, '2026-04-24 10:30:00', 6.90),
('95135785200', 8, '2026-04-24 10:35:00', 5.20),
('74185296300', 9, '2026-04-24 10:40:00', 2.50),
('36925814700', 10, '2026-04-24 10:45:00', 3.00),
('12345678901', 11, '2026-04-24 11:00:00', 2.80),
('98765432100', 12, '2026-04-24 11:05:00', 10.50),
('45678912345', 13, '2026-04-24 11:10:00', 14.90),
('32165498700', 14, '2026-04-24 11:15:00', 15.90),
('15975348620', 15, '2026-04-24 11:20:00', 8.90),
('75315985246', 16, '2026-04-24 11:25:00', 9.50),
('85245696311', 17, '2026-04-24 11:30:00', 6.50),
('95135785200', 18, '2026-04-24 11:35:00', 5.90),
('74185296300', 19, '2026-04-24 11:40:00', 32.00),
('36925814700', 20, '2026-04-24 11:45:00', 28.00);

ALTER TABLE endereco 
RENAME TO logradouro;

ALTER TABLE produto
RENAME nome_produto TO nome;

ALTER TABLE produto
RENAME descricao TO descricao_curta;

ALTER TABLE compra 
RENAME valor_total_compra TO valor_total;
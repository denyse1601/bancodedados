INSERT INTO Cliente (nome, endereco, email, celular, data_nascimento) 
VALUES 
('João Silva', 'Rua A, 123', 'joao@email.com', '(00) 12345-6789', '1990-05-15'),
('Maria Oliveira', 'Avenida B, 456', 'maria@email.com', '(00) 98765-4321', '1985-10-20'),
('Pedro Santos', 'Rua C, 789', 'pedro@email.com', '(00) 54321-9876', '1978-03-25'),
('Ana Souza', 'Avenida D, 987', 'ana@email.com', '(00) 24680-1357', '1995-12-10'),
('Carlos Lima', 'Rua E, 654', 'carlos@email.com', '(00) 97531-2468', '1982-07-05'),
('Juliana Pereira', 'Avenida F, 321', 'juliana@email.com', '(00) 13579-0246', '1998-09-30'),
('Fernando Costa', 'Rua G, 852', 'fernando@email.com', '(00) 36985-1470', '1970-11-28'),
('Aline Vieira', 'Avenida H, 147', 'aline@email.com', '(00) 85236-9741', '1989-02-14'),
('Rafaela Martins', 'Rua I, 369', 'rafaela@email.com', '(00) 74185-2369', '1993-06-18'),
('Bruno Oliveira', 'Avenida J, 258', 'bruno@email.com', '(00) 36914-8527', '1987-08-22');

INSERT INTO Produto (nome, preco, descricao, quantidade_estoque) 
VALUES 
('Livro 1', 29.99, 'Descrição do Livro 1', 100),
('Livro 2', 19.99, 'Descrição do Livro 2', 50),
('Livro 3', 24.99, 'Descrição do Livro 3', 75),
('Livro 4', 34.99, 'Descrição do Livro 4', 120),
('Livro 5', 39.99, 'Descrição do Livro 5', 80),
('Livro 6', 44.99, 'Descrição do Livro 6', 60),
('Livro 7', 27.99, 'Descrição do Livro 7', 90),
('Livro 8', 32.99, 'Descrição do Livro 8', 110),
('Livro 9', 21.99, 'Descrição do Livro 9', 70),
('Livro 10', 37.99, 'Descrição do Livro 10', 85);

INSERT INTO Pedido (id_cliente, data_compra, valor_total, data_entrega_estimada) 
VALUES 
(1, '2024-03-27', 59.98, '2024-04-03'),
(2, '2024-03-27', 84.97, '2024-04-05'),
(3, '2024-03-26', 42.99, '2024-04-02'),
(4, '2024-03-26', 67.98, '2024-04-04'),
(5, '2024-03-25', 69.98, '2024-04-01'),
(6, '2024-03-25', 104.97, '2024-04-03'),
(7, '2024-03-24', 32.99, '2024-04-01'),
(8, '2024-03-24', 79.98, '2024-04-02'),
(9, '2024-03-23', 54.98, '2024-03-31'),
(10, '2024-03-23', 94.97, '2024-04-01');

INSERT INTO ItemPedido (id_pedido, id_produto, quantidade, valor_unitario, valor_total) 
VALUES 
(1, 1, 2, 29.99, 59.98),
(2, 3, 3, 19.99, 59.97),
(3, 5, 1, 39.99, 39.99),
(4, 2, 2, 24.99, 49.98),
(5, 4, 2, 34.99, 69.98),
(6, 7, 3, 27.99, 83.97),
(7, 6, 1, 44.99, 44.99),
(8, 8, 2, 32.99, 65.98),
(9, 9, 2, 21.99, 43.98),
(10, 10, 3, 37.99, 113.97);

UPDATE Cliente SET endereco = 'Rua X, 123' WHERE id_cliente = 1;
UPDATE Produto SET preco = 31.99 WHERE id_produto = 2;
UPDATE Pedido SET valor_total = 63.98 WHERE id_pedido = 4;
UPDATE ItemPedido SET quantidade = 4 WHERE id_item = 7;

DELETE FROM Cliente WHERE id_cliente = 10;
DELETE FROM Produto WHERE id_produto = 3;

-- Criação da tabela de produtos
CREATE TABLE produtos (
  id_produto INT PRIMARY KEY,
  nome VARCHAR(100),
  preco DECIMAL(6,2)
);

-- Inserção de produtos
INSERT INTO produtos (id_produto, nome, preco) VALUES
(1, 'Café Expresso', 5.50),
(2, 'Cappuccino', 7.00),
(3, 'Pão de Queijo', 4.00);

-- Criação da tabela de pedidos
CREATE TABLE pedidos (
  id_pedido INT PRIMARY KEY,
  id_produto INT,
  quantidade INT,
  data_pedido DATE,
  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Inserção de pedidos
INSERT INTO pedidos (id_pedido, id_produto, quantidade, data_pedido) VALUES
(1, 1, 2, '2025-05-10'),
(2, 2, 1, '2025-05-11'),
(3, 3, 3, '2025-05-12');
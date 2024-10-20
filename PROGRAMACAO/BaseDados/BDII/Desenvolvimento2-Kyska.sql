CREATE DATABASE SistemaVendas;
USE SistemaVendas;

CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Preco DECIMAL(10, 2)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    ProdutoID INT,
    Quantidade INT,
    Total DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

DELIMITER //
CREATE TRIGGER CalculaTotalPedido AFTER INSERT ON Pedidos
FOR EACH ROW
BEGIN
    DECLARE preco_unit DECIMAL(10, 2);
    DECLARE total_pedido DECIMAL(10, 2);

    -- Obter o preço unitário do produto inserido no pedido
    SELECT Preco INTO preco_unit FROM Produtos WHERE ProdutoID = NEW.ProdutoID;

    -- Calcular o total do pedido
    SET total_pedido = preco_unit * NEW.Quantidade;

    -- Atualizar o campo Total do pedido inserido
    UPDATE Pedidos SET Total = total_pedido WHERE PedidoID = NEW.PedidoID;
END//
DELIMITER ;

INSERT INTO Clientes (ClienteID, Nome, Email) VALUES
(1, 'João da Silva', 'joao@example.com');

INSERT INTO Produtos (ProdutoID, Nome, Preco) VALUES
(1, 'Camiseta', 25.00);

INSERT INTO Pedidos (PedidoID, ClienteID, ProdutoID, Quantidade, Total) VALUES
(1, 1, 1, 3, 0); -- O campo Total será calculado pelo trigger

SELECT * FROM Pedidos;

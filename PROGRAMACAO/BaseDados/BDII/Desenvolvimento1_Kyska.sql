CREATE DATABASE Biblioteca;
USE Biblioteca;

CREATE TABLE Autores (
    AutorID INT PRIMARY KEY,
    Nome VARCHAR(100)
);

CREATE TABLE Editoras (
    EditoraID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Localizacao VARCHAR(100)
);

CREATE TABLE Livros (
    LivroID INT PRIMARY KEY,
    Titulo VARCHAR(100),
    AutorID INT,
    EditoraID INT,
    AnoPublicacao INT,
    FOREIGN KEY (AutorID) REFERENCES Autores(AutorID),
    FOREIGN KEY (EditoraID) REFERENCES Editoras(EditoraID)
);

INSERT INTO Autores (AutorID, Nome) VALUES
(1, 'Machado de Assis'),
(2, 'Clarice Lispector'),
(3, 'George Orwell');

INSERT INTO Editoras (EditoraID, Nome, Localizacao) VALUES
(1, 'Companhia das Letras', 'São Paulo'),
(2, 'Editora Intrínseca', 'Rio de Janeiro'),
(3, 'Penguin Books', 'Londres');

INSERT INTO Livros (LivroID, Titulo, AutorID, EditoraID, AnoPublicacao) VALUES
(1, 'Dom Casmurro', 1, 1, 1899),
(2, '1984', 3, 3, 1949),
(3, 'A hora da estrela', 2, 2, 1977);

SELECT Livros.Titulo, Autores.Nome AS Autor, Editoras.Nome AS Editora
FROM Livros
INNER JOIN Autores ON Livros.AutorID = Autores.AutorID
INNER JOIN Editoras ON Livros.EditoraID = Editoras.EditoraID;

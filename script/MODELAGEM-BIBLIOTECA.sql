CREATE DATABASE biblioteca_livros;

USE biblioteca_livros;

CREATE TABLE `editora` (
id_editora INT AUTO_INCREMENT PRIMARY KEY,
cnpj VARCHAR(14),
razao_social VARCHAR(50)
);

CREATE TABLE `autores` (
id_autor INT AUTO_INCREMENT PRIMARY KEY,
primeiro_nome VARCHAR (100),
sobrenome VARCHAR(100),
cpf VARCHAR (11),
id_editora_fk INT,
FOREIGN KEY (id_editora_fk) REFERENCES editora (id_editora)
);

CREATE TABLE `livros` (
id_livros INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(255) NOT NULL,
isbn VARCHAR(13) UNIQUE,
ano_publicacao YEAR,
id_autor_fk INT,
FOREIGN KEY (id_autor_fk) REFERENCES autores (id_autor),
id_editora_fk INT,
FOREIGN KEY (id_editora_Fk) REFERENCES editora (id_editora)
);

CREATE TABLE `mutuarios` (
id_mutuario INT AUTO_INCREMENT PRIMARY KEY,
primeiro_nome VARCHAR(100) NOT NULL,
sobrenome VARCHAR(100) NOT NULL,
email_contato VARCHAR(100),
id_livros_fk INT,
FOREIGN KEY (id_livros_fk) REFERENCES livros (id_livros)
);

CREATE TABLE `emprestimos` (
id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
id_mutuario INT NOT NULL,
data_emprestimo DATE NOT NULL,
data_devolucao DATE,
id_livros_fk INT,
FOREIGN KEY (id_livros_fk) REFERENCES livros (id_livros),
id_mutuario_fk INT,
FOREIGN KEY (id_mutuario_fk) REFERENCES mutuarios (id_mutuario)
);







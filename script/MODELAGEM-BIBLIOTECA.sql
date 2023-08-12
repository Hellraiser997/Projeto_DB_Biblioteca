-- Aqui, o banco de dados denominado "biblioteca_livros" é criado;
CREATE DATABASE biblioteca_livros;

-- É utilizado o comando "USE" para que tal biblioteca seja utilizada;
USE biblioteca_livros;

-- A partir daqui, começamos a criação das tabelas a partir do comando "CREATE", sendo essa a tabela editora, armazenando seu id, cnpj e razão social;
CREATE TABLE `editora` (
id_editora INT AUTO_INCREMENT PRIMARY KEY, -- "PRIMARY KEY" indica uma chave primária, ou seja, um identificador único para determinado objeto
cnpj VARCHAR(14),
razao_social VARCHAR(50)
);

-- Aqui, temos a tabela autores, que armazena id, primeiro nome e sobrenome, cpf e uma chave estrangeira da editora;
CREATE TABLE `autores` (
id_autor INT AUTO_INCREMENT PRIMARY KEY,
primeiro_nome VARCHAR (100),
sobrenome VARCHAR(100),
cpf VARCHAR (11),
id_editora_fk INT, -- Aqui, possuimos uma FOREIGN KEY, ou chave estrangeira, para associar o autor a uma editora
FOREIGN KEY (id_editora_fk) REFERENCES editora (id_editora) -- Aqui, é feita a referência à tabela "editora"
);

-- Aqui, a tabela livros, armazenando id, título, isbn, o ano de publicação e duas chaves estrangeiras: a do autor e a da editora;
CREATE TABLE `livros` (
id_livros INT AUTO_INCREMENT PRIMARY KEY,
titulo VARCHAR(255) NOT NULL, -- "NOT NULL" indica que o preenchimento deste é obrigatório
isbn VARCHAR(13) UNIQUE, -- "UNIQUE" indica que este é um valor único, não pode ser repetido em diferentes registros
ano_publicacao YEAR, -- "YEAR" indica que o valor que será inserido é um ano
id_autor_fk INT,
FOREIGN KEY (id_autor_fk) REFERENCES autores (id_autor),
id_editora_fk INT,
FOREIGN KEY (id_editora_Fk) REFERENCES editora (id_editora)
);

-- Temos a tabela mutuários (as pessoas que irão emprestar os livros), que contém o id, primeiro nome e sobrenome de tal pessoa, email para contato e a chave estrangeira de livros;
CREATE TABLE `mutuarios` (
id_mutuario INT AUTO_INCREMENT PRIMARY KEY,
primeiro_nome VARCHAR(100) NOT NULL,
sobrenome VARCHAR(100) NOT NULL,
email_contato VARCHAR(100),
id_livros_fk INT,
FOREIGN KEY (id_livros_fk) REFERENCES livros (id_livros)
);

-- Por fim, temos a tabela de empréstimos, que contém os ids de empréstimos e mutuários, assim como as datas de empréstimo e devolução, e as chaves estrangeiras dos livros e mutuários;
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







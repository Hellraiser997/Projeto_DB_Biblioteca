INSERT INTO editora (cnpj, razao_social)
VALUES 
("10493827584301", "Girassol"), 
("30295037195015", "Gralha Azul"),
("20953059175825", "Sol Nascente"),
("52584108516702", "Valeria"),
("80187425802683", "T.B.D");
SELECT * FROM editora;

INSERT INTO autores (primeiro_nome, sobrenome, cpf)
VALUES
("Roberto", "Giruvaldo", "10693019481"),
("Leonardo", "Ribas", "5920496134"),
("Amanda", "Carvalho", "70495728912"),
("Gerson", "Arruda", "70491646201"),
("Diógenes", "Magalhães", "34590614277");
SELECT * FROM autores;

INSERT INTO livros (titulo, isbn, ano_publicacao)
VALUES
("A floresta", "7945587779031", "1995"),
("Uma noite fria", "8025542888065", "2000"),
("A Herança Perdida", "0135519322220", "1998"),
("A Profecia do Livro Antigo", "3135578888809", "1988"),
("O Enigma do Relógio", "4045512692420", "1973");
SELECT * FROM livros;
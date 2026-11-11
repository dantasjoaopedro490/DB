CREATE TABLE Editora(
idEditora INT AUTO_INCREMENT PRIMARY KEY UNIQUE,
Nome VARCHAR(50) NOT NULL,
Telefone CHAR(13),
tipoLogradouro VARCHAR(100) NOT NULL,
nomeLogradouro VARCHAR(100) NOT NULL,
numerologradouro VARCHAR(100) NOT NULL,
complementoLogradouro VARCHAR(100),
cidade VARCHAR(45) NOT NULL
);

CREATE TABLE Exemplar(
idExemplar INT AUTO_INCREMENT PRIMARY KEY,
idLivro INT NOT NULL
);

CREATE TABLE Usuario(
idUsuario INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(45) NOT NULL,
Telefone CHAR(13) NOT NULL,
CPF VARCHAR(45) NOT NULL,
NomeLogradouro VARCHAR(45) NOT NULL,
TipoLogradouro VARCHAR(45) NOT NULL,
NumeroLogradouro VARCHAR(45) NOT NULL,
ComplementoLogradouro VARCHAR(45),
Cidade VARCHAR(45) NOT NULL,
Uf VARCHAR(45) NOT NULL,
TipoUsuario VARCHAR(45) NOT NULL
);

CREATE TABLE Recepcionista(
idRecepcionista INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(45) NOT NULL,
Telefone VARCHAR(45) NOT NULL,
CPF VARCHAR(45) NOT NULL,
NomeLogradouro VARCHAR(45) NOT NULL,
TipoLogradouro VARCHAR(45) NOT NULL,
NumeroLogradouro VARCHAR(45) NOT NULL,
ComplementoLogradouro VARCHAR(45),
Cidade VARCHAR(45) NOT NULL,
Uf VARCHAR(45) NOT NULL
);

CREATE TABLE Emprestimo(
idEmprestimo INT AUTO_INCREMENT PRIMARY KEY,
idUsuario INT NOT NULL,
idExemplar INT NOT NULL,
idRecepcionista INT NOT NULL,

CONSTRAINT fk_Exemplar_Emprestimo FOREIGN KEY (idExemplar)
REFERENCES Exemplar (idExemplar),

CONSTRAINT fk_Recepcionista_Emprestimo FOREIGN KEY (idRecepcionista)
REFERENCES Recepcionista (idRecepcionista),

CONSTRAINT fk_Usuario_Emprestimo FOREIGN KEY (idUsuario)
REFERENCES Usuario (idUsuario)
);

CREATE TABLE ExemplarEmprestimo(
idExemplarEmprestimo INT AUTO_INCREMENT PRIMARY KEY,
idExemplar INT NOT NULL,
idEmprestimo INT NOT NULL,
dataRetirada DATE NOT NULL,
Devolucao DATE NOT NULL,

CONSTRAINT fk_Exemplar_ExemplarEmprestimo FOREIGN KEY (idExemplar)
REFERENCES Exemplar (idExemplar),

CONSTRAINT fk_Emprestimo_ExemplarEmprestimo FOREIGN KEY (idEmprestimo)
REFERENCES Emprestimo (idEmprestimo)
);

CREATE TABLE AreaC-Titulo(
idArea-Conhecimento INT NOT NULL,
idLivro INT NOT NULL
);

CREATE TABLE AreaConhecimento(
idAreaConhecimento INT AUTO_INCREMENT PRIMARY KEY,
Descricao VARCHAR(500)
);

CREATE TABLE titulo(
idTitulo INT AUTO_INCREMENT PRIMARY KEY,
idLivro INT NOT NULL,
idEditora INT NOT NULL UNIQUE,
Nome VARCHAR(50) NOT NULL,

CONSTRAINT fk_Titulo_Editora FOREIGN KEY (idEditora)
REFERENCES Editora (idEditora)
);

CREATE TABLE Autor(
idAutor INT AUTO_INCREMENT PRIMARY KEY,
Nome VARCHAR(100) NOT NULL,
Telefone CHAR(13)
);

CREATE TABLE TituloAutor(
idTituloAutor INT AUTO_INCREMENT PRIMARY KEY,
idAutor INT NOT NULL,
idTitulo INT NOT NULL,

CONSTRAINT fk_Titulo_TituloAutor FOREIGN KEY (idTitulo)
REFERENCES Titulo (idTitulo),

CONSTRAINT fk_Autor_TituloAutor FOREIGN KEY (idAutor)
REFERENCES Autor (idAutor)
);
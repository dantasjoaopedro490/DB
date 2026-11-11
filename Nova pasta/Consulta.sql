CREATE TABLE Mae (
idMae INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
telefone CHAR(13) NOT NULL,
dataNascimento DATE,
tipoLogradouro VARCHAR(50) NOT NULL,
nomeLogradouro VARCHAR(100) NOT NULL,
numeroLogradouro VARCHAR(10) NOT NULL,
complemento VARCHAR(10) NOT NULL,
cidadeLogradouro VARCHAR(100) NOT NULL,
uf CHAR(2) NOT NULL
);
CREATE TABLE Especialidade (
idEspecialidade INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(45) NOT NULL UNIQUE 
);
/* Apagar uma Tabela*/

DROP TABLE Especialidade;

CREATE TABLE Medico(
idMedico INT AUTO_INCREMENT PRIMARY KEY,
crm CHAR(6) NOT NULL UNIQUE,
nome VARCHAR(100) NOT NULL,
Telefone CHAR(13) NOT NULL,
idEspecialidade INT NOT NULL,
CONSTRAINT fk_Medico_Especialidade FOREIGN KEY (idEspecialidade)
REFERENCES especialidade (idEspecialidade)
);

CREATE TABLE Parto(
idParto INT AUTO_INCREMENT PRIMARY KEY,
idMedico INT NOT NULL,
dataHoraInicio DATETIME NOT NULL,
dataHoraTermino DATETIME,
observacao VARCHAR(45),
CONSTRAINT fk_Parto_Medico FOREIGN KEY (idMedico)
REFERENCES medico(idMedico)
);

CREATE TABLE Bebe(
idBebe INT AUTO_INCREMENT PRIMARY KEY,
idMae INT NOT NULL,
nome VARCHAR(100),
dataNascimento DATETIME,
autura DECIMAL(3,2),
peso DECIMAL(4,2),
idParto INT NOT NULL,
CONSTRAINT fk_Bebe_Parto FOREIGN KEY (idBebe)
REFERENCES (idBebe)
);

SHOW TABLES

SELECT * FROM bebe
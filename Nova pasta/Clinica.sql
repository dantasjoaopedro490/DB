CREATE TABLE Medico(
idMedico INT AUTO_INCREMENT PRIMARY KEY,
nomeMedico VARCHAR(100) NOT NULL,
CRM VARCHAR(6) NOT NULL UNIQUE,
emailMedico VARCHAR(100),
telefoneMedico CHAR(13),
especialidadeMedico VARCHAR(100) NOT NULL,
loginMedico VARCHAR(100) NOT NULL,
senhamedico VARCHAR(100) NOT NULL
);

CREATE TABLE Paciente(
idPaciente INT AUTO_INCREMENT PRIMARY KEY,
nomePaciente VARCHAR(100) NOT NULL,
cpf CHAR(11) NOT NULL,
email VARCHAR(100),
telefone CHAR(13) NOT NULL,
tipoLogradouro VARCHAR(50) NOT NULL,
numeroLogradouro VARCHAR(5) NOT NULL,
Complemento VARCHAR(10),
CEP CHAR(8) NOT NULL,
Nascimento DATE
);

CREATE TABLE Recepcionista (
idRecepcionista INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
cpf CHAR(11) NOT NULL,
email VARCHAR(100),
telefone CHAR(13) NOT NULL,
login VARCHAR(100) NOT NULL UNIQUE,
senha VARCHAR(100) NOT NULL
);

CREATE TABLE Consultas(
idConsulta INT AUTO_INCREMENT PRIMARY KEY,
idMedico INT NOT NULL,
idPaciente INT NOT NULL,
idRecepcionista INT NOT NULL,
DataHora DATETIME NOT NULL,
queixa VARCHAR(300),
prescricao VARCHAR(100),
tipoConsulta VARCHAR(45),
planoSaude VARCHAR(45),
CONSTRAINT fk_Consulta_Medico FOREIGN KEY (idMedico)
REFERENCES Medicos(idMedico),
CONSTRAINT fk_Consulta_Paciente FOREIGN KEY (idPaciente)
REFERENCES pacientes(idpaciente),
CONSTRAINT fk_Consulta_Recepcionista FOREIGN KEY (idRecepcionista)
REFERENCES Recepcionistas(idRecepcionista)
);

CREATE TABLE exames(
idExames INT AUTO_INCREMENT PRIMARY KEY,
idConsultas INT NOT NULL,
idRecepcionistas INT NOT NULL,
dataHora DATETIME,
tipoExame VARCHAR(45),
diagnostico VARCHAR (100),
CONSTRAINT fk_Exames_Consultas FOREIGN KEY(idConsultas)
REFERENCES consultas (idConsultas),
CONSTRAINT fk_Exames_Recepcionistas FOREIGN KEY(idRecepcionistas)
REFERENCES recepcionistas (idRecepcionistas)
);

 
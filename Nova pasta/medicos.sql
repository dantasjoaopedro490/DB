INSERT INTO medicos (idEspecialidadeMedico, nomeMedico, CRM, 
emailMedico, telefoneMedico, loginMedico, senhaMedico)
VALUES (5,'Ailton Carneiro','985627','ailtoncarneiro@clinic.com',
'15989657896','115943','1212');
 
INSERT INTO medicos (idEspecialidadeMedico, nomeMedico,CRM, emailMedico,telefoneMedico,loginMedico,senhaMedico)
VALUES (5,'José', '256877', 'josemedico@hotmail.com', '1344445555', 'josefisio', '123456789');
 
INSERT INTO medicos (idEspecialidadeMedico, nomeMedico, CRM, 
emailMedico, telefoneMedico, loginMedico, senhaMedico)
VALUES (5,'Carlos Henrique Souza','742315','carloshenrique@clinic.com',
'13987456321','126784','3434');
 
INSERT INTO medicos (idEspecialidadeMedico, nomeMedico, CRM, emailMedico, 
telefoneMedico, loginMedico, senhaMedico)
VALUES (1, 'Renato', 'SP7589', 'renatomedico@gmail.com', '13988420540', 
'renatoOtorrino', 'curasurdo123');
 


INSERT INTO recepcionistas (nomeRecepcionista, CPF, celularRecepcionista, emailRecepcionista, loginRecepcionista, senhaRecepcionista)
VALUES ('Andressa de Abreu', '12598748625', '1398877456', 'dressadeabreu@email.com', '453563', '2020');
 
INSERT INTO recepcionistas (nomeRecepcionista, CPF, celularRecepcionista, emailRecepcionista, loginRecepcionista, senhaRecepcionista)
VALUES ('Fernanda Lima Oliveira', '36925814701', '5513981234567', 'fernandalima@clinic.com', '128956', '5656');
 
INSERT INTO recepcionistas (nomeRecepcionista, CPF, celularRecepcionista, emailRecepcionista, loginRecepcionista, senhaRecepcionista) 
VALUES ('Rebeca', '04454376587', '1399456765', 'rebecarecep@gmail.com', 'rebecaRecep.54', 'ClincaIsMyLife');
 
INSERT INTO recepcionistas (nomeRecepcionista, cpf, celularRecepcionista, emailRecepcionista, loginRecepcionista, senhaRecepcionista)
VALUES ('Maria Joaquina', '99988877700', '13987632542','mariajoaq@hotmail.com', 'Maria13987', '74569821');



INSERT INTO pacientes (nomePaciente, cpf, email, celular, 
tipoLog, numeroLog, nomeLog, complemento, cidade, uf, cep)
VALUES ('Anamary Souza', '56898798565', 'anysouza@email.com', 
'1388121214', 'Rua', '626', 'Pinheiro Machado', 'Casa', 'Santos', 'SP', '11070880');
 
INSERT INTO pacientes (nomePaciente, cpf, email, celular, tipoLog, numeroLog, nomeLog, complemento, cidade, uf, cep)
VALUES ('Mariana Alves Santos','45872196310','marianaalves@clinic.com','13987654321','Rua','125','das Flores','Casa','Santos','SP','11050100');
 
INSERT INTO pacientes (nomePaciente,cpf, email, celular, tipoLog, numeroLog, nomeLog, cidade, uf, cep)
values ('José da Silva', '55566677789', 'zedasilva@hotmail.com', '1398765432', 'avenida', '285',' Rua Dados Martins','Santos', 'SP', '11544987');
 
INSERT INTO pacientes (nomePaciente, cpf, email, celular, tipoLog, numeroLog, nomeLog, complemento, cidade, uf, cep)
VALUES ('Alexandre Camargo', '54295768910', 'aleMargo@email.com', '1398362784', 'Rua', '854', 'Macuco', 'Casa', 'Santos', 'SP', '11015030');
 
INSERT INTO pacientes (nomePaciente, cpf, email, celular, tipoLog, numeroLog, nomeLog, complemento, cidade, uf, cep) 
VALUES ('Felipe', '45678910457', 'felipeG@gmail.com', '11995678999', 'Avenida', '309', 'Conselheiro Nébias', '', 'São Paulo', 'SP', '11015003');


/*##############################################################################################################*/

/*Listar o nome e o cpf dos recepcionistas*/
SELECT nomeRecepcionista, cpf FROM recepcionistas

/*Ordenando dados*/
SELECT * FROM recepcionistas
ORDER BY nomeRecepcionista ASC

/*Filtrando e ordenando*/
SELECT nomeMedico, CRM, emailMedico FROM medicos
WHERE emalimedico LIKE '%@clinic.com'
ORDER BY nomeMedico ASC

/*Listar nome do medico e crm apenas dos medicos com crm acima dos 500000, ordenados pelo crm do maior ao menor*/
SELECT nomeMedico, CRM FROM medicos
WHERE CRM > 500000
ORDER BY CRM ASC

/*Inserir mais de 2 especialidades novas,Oftamologista e Oncologista*/
SELECT INTO especialidadesmedicos (nomeEspecialidade)
VALUES ('Oftamologista'),
		 ('Oncologista');
		 
/*Alterar o telefone e o email do médico Carlos Henrique Souza para email:carlos.hsouza@clinic.com
telefone:11988664422*/
UPDATE medicos
SET emaliMedico='carlos.hsouza@clinic.com',
telefoneMedico='11988664422'
WHERE idMedico='3'

/*Listar apenas nome, crm e telefone dos médicos ortopedistas em ordem alfabética por nome*/
SELECT nomeMedico, crm, telefoneMedico FROM medicos
WHERE idEspecialidadeMedico = 5




/*===ATIVIDADE===*/
/*1. Cadastre uma nova especialidade médica chamada Cardiologista.*/
INSERT INTO especialidadesmedicos (nomeEspecialidadeMedico)
VALUES ('Cardiologista');

/*2. Cadastre um recepcionista com os seguintes dados:*/
SELECT nomeMedico, cpf, celular, email, login, senha FROM medicos
VALUES (6'João Silva', '12345678901', '11988887777', 'joao.silva@clinica.com', ' joaosilva', '123456');

/*3. Cadastre um paciente chamado Maria Oliveira, residente em São Paulo/SP, com os seguintes dados:*/
SELECT pacientes (nomePaciente, cpf, email, celular, tipoLog, numero, logradouro, complemento, cidade, uf, cep)
VALUES (11'Maria Oliveira', '98765432100', ' maria@email.com', '11999998888', 'Rua', '100', 'Flores', 'Apartamento 21', 'São Paulo', 'SP', '01234567');

/*16*/
 
INSERT INTO consultas 
(idPaciente, idRecepcionista, idMedico, dataHora, queixa, prescricao, tipoConsulta, planoSaude)
VALUES 
(8,3,2, '2026-10-22 10:00', 'Dor de cabeça', 'Tomar dorflex a cada 12hr', 'Primeira vez', 'Não tem')
(SELECT * FROM consultas)
SELECT * FROM pacientes
 
/*17*/
INSERT INTO consultas 
(idPaciente, idRecepcionista, idMedico, dataHora, queixa, prescricao, tipoConsulta, planoSaude)
VALUES 
(9,4,6, '2026-10-22 17:30', 'Dor do peito', 'Fazer ecocardiograma', 'Primeira vez', 'Não tem')

/*20*/
INSERT INTO consultas 
(idPaciente, idRecepcionista, idMedico, dataHora, queixa, prescricao, tipoConsulta, planoSaude)
VALUES 
(9,4,6, '2026-10-22 17:30', 'Dor do peito', 'Fazer ecocardiograma', 'Primeira vez', 'Não tem')

SELECT * FROM pacientes

/*===VIEW===*/
CREATE VIEW paciente_santistas AS 
SELECT nomePaciente, cidade
FROM pacientes
WHERE cidade = 'santos'

SELECT * FROM paciente_santistas

SELECT uf FROM paciente_santistas

DROP VIEW paciente_santistas

/*SQL Injection*/


/*Procedure*/
CREATE PROCEDURE agendar_consulta(
	IN p_idMedico INT,
	IN p_idPaciente INT,
	IN p_idRecepcionista INT,
	IN p_dataHora DATETIME
)

INSERT INTO consulta (idMedico, idPaciente, idRecepcionista, dataHora)
VALUES (p_idMedico, p_Paciente, p_Recepcionista, p_dataHora);

DROP PROCEDURE agendar_consulta
CALL agendar_consulta(1,1,1, '2026-10-16 21:00')

CREATE PROCEDURE agendar_vacinacao(
	IN p_idMedico INT,
	IN p_idPaciente INT,
	IN p_idRecepcionista INT,
	IN p_dataHora DATETIME
)

INSERT INTO vacinacao (idMedico, idPaciente, idRecepcionista, dataHora)
VALUES (p_idMedico, p_Paciente, p_Recepcionista, p_dataHora);

DROP PROCEDURE agendar_vacinacao
CALL agendar_vacinacao(1,1,1, '2026-10-16 21:00')

/**/
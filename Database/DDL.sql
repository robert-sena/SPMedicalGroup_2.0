CREATE DATABASE SPMedicalGroup;
GO

USE SPMedicalGroup;
GO

CREATE TABLE tiposUsuarios
(
	idTipo				INT PRIMARY KEY IDENTITY,
	tituloTipo			VARCHAR(100) NOT NULL
);
GO

CREATE TABLE clinicas
(
	idClinica			INT PRIMARY KEY IDENTITY,
	razaoSocial			VARCHAR(100) NOT NULL,
	nomeClinica			VARCHAR(100) NOT NULL,
	cnpj				CHAR(14) UNIQUE NOT NULL,
	endereco			VARCHAR(255) NOT NULL,
	horarioAbertura		TIME,
	horarioFechamento	TIME
);
GO

CREATE TABLE especialidades
(
	idEspecialidade		INT PRIMARY KEY IDENTITY,
	nome				VARCHAR(100) NOT NULL
);
GO

CREATE TABLE situacoes
(
	idSituacao			INT PRIMARY KEY IDENTITY,
	situacao			VARCHAR(100) NOT NULL
);
GO

CREATE TABLE usuarios
(
	idUsuario			INT PRIMARY KEY IDENTITY,
	idTipo				INT FOREIGN KEY REFERENCES tiposUsuarios(idTipo) NOT NULL,
	nome				VARCHAR(255) NOT NULL,
	email				VARCHAR(255) UNIQUE NOT NULL,
	dataNascimento		DATE NOT NULL,
	senha				VARCHAR(255) NOT NULL
);
GO

CREATE TABLE pacientes
(
	idPaciente			INT PRIMARY KEY IDENTITY,
	idUsuario			INT FOREIGN KEY REFERENCES usuarios(idUsuario) NOT NULL,
	telefone			BIGINT,
	rg					CHAR(9) NOT NULL,
	cpf					CHAR(11) UNIQUE NOT NULL,
	endereco			VARCHAR(255) NOT NULL
);
GO

CREATE TABLE medicos
(
	idMedico			INT PRIMARY KEY IDENTITY,
	idUsuario			INT FOREIGN KEY REFERENCES usuarios(idUsuario) NOT NULL,
	idEspecialidade		INT FOREIGN KEY REFERENCES especialidades(idEspecialidade) NOT NULL,
	idClinica			INT FOREIGN KEY REFERENCES clinicas(idClinica) NOT NULL,
	crm                 VARCHAR(100) UNIQUE NOT NULL
);
GO

CREATE TABLE consultas
(
	idConsulta			INT PRIMARY KEY IDENTITY,
	idPaciente			INT FOREIGN KEY REFERENCES pacientes(idPaciente) NOT NULL,
	idMedico			INT FOREIGN KEY REFERENCES medicos(idMedico) NOT NULL,
	idSituacao			INT FOREIGN KEY REFERENCES situacoes(idSituacao) DEFAULT (1),
	dataConsulta		SMALLDATETIME NOT NULL,
	descricao			VARCHAR(500)
);
GO


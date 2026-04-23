USE SPMedicalGroup;

INSERT INTO clinicas (razaoSocial, nomeClinica, cnpj, endereco, horarioAbertura, horarioFechamento)
VALUES				 ('SP Medical Group', 'Clinica Robert', '00000000000001', 'Av. Barao de Limeira, 532, Sao Paulo, SP', '09:00', '17:00');

INSERT INTO especialidades (nome)
VALUES					   ('Cardiologia'),
						   ('Dermatologia'),
						   ('Pediatria'),
						   ('Psicologia'),
						   ('Radiologia');

INSERT INTO tiposUsuarios (tituloTipo)
VALUES					  ('Administrador'),
						  ('Medico'),
						  ('Paciente');

INSERT INTO situacoes (situacao)
VALUES				  ('Agendada'),
					  ('Realizada'),
					  ('Cancelada');

INSERT INTO	usuarios (idTipo, nome, email, senha, dataNascimento)
VALUES				 (2, 'Ricardo Santos', 'ricardo.santos@spmedical.com.br', 'r123456', '01/01/1981'),
					 (2, 'Lucas Lima', 'lucas.lima@spmedical.com.br', 'l123456', '02/02/1982'),
					 (3, 'Pedro Paulo', 'pedro@gmail.com', 'p123456', '03/03/1983'),
					 (3, 'Gabriel Souza', 'gabriel@gmail.com', 'g123456', '04/04/1984'),
					 (3, 'Neymar Junior', 'neymar@gmail.com', 'n123456', '05/05/1985'),
					 (3, 'Fernanda Pereira', 'fernanda@gmail.com', 'f123456', '06/06/1986'),
					 (3, 'Maria Eduarda', 'maria@gmail.com', 'm123456', '07/07/1987'),
					 (1, 'Eduarda Gabriela', 'eduarda@spmedical.com.br', 'e123456', '08/08/1988');

INSERT INTO medicos (idUsuario, idEspecialidade, idClinica, crm)
VALUES				(1, 1, 1, '12345SP'),
					(2, 2, 1, '54321SP');

INSERT INTO pacientes (idUsuario, telefone, rg, cpf, endereco)
VALUES				  (3, 11911111111, '111111111', '11111111111', 'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000'),
					  (4, 11922222222, '222222222', '22222222222', 'Avenida Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200'),
					  (5, 11933333333, '333333333', '33333333333', 'Avenida Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200'),
					  (6, 11944444444, '444444444', '44444444444', 'Rua Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
					  (7, 11955555555, '555555555', '55555555555', 'Rua Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140');

INSERT INTO consultas (idPaciente, idMedico, dataConsulta, idSituacao)
VALUES				  (1, 1, '01/01/2026  13:00:00', 2),
					  (2, 1, '02/02/2026  14:00:00', 3),
					  (3, 1, '03/03/2026  15:00:00', 2),
					  (4, 2, '04/04/2026  16:00:00', 2),
					  (5, 2, '05/05/2026  17:00:00', 3),
					  (1, 1, '06/06/2026  18:00:00', 1),
					  (2, 2, '07/07/2026  19:00:00', 1);
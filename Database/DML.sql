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
VALUES					  ('administrador'),
						  ('medico'),
						  ('paciente');
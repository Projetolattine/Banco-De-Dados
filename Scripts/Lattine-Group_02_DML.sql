USE lattine;
GO

INSERT INTO contatosLattine (localizacao)
VALUES
('Alameda Tocantins, 350 Barueri - S�o Paulo / SP');
GO

INSERT INTO telefone (idContatosLattine, numero) 
VALUES
(1, '11 4209-1000');
GO

INSERT INTO tipoUsuario (titulo) 
VALUES
('Administrador'),
('Cliente'),
('Funcion�rio Lattine Group');
GO

INSERT INTO usuario (idTipoUsuario, nome, sobrenome, email, senha, dataCadastro) 
VALUES
(1, 'Luca', 'Silvestri', 'luca@email.com', 'luca*123', '25/03/2022'),
(2, 'Fl�via', 'Brito', 'flavia@email.com', 'flavia*123', '25/03/2022'),
(3, 'Gabriel', 'Brito', 'gabriel@email.com', 'gabriel*123', '25/03/2022');
GO

INSERT INTO grupoRecursos (idUsuario, nomeGrupoRecursos, dataCadastro) 
VALUES
(1, 'Grupo Luca', '25/03/2022'),
(2, 'Grupo Fl�via', '25/03/2022'),
(3, 'Grupo Gabriel', '25/03/2022');
GO

INSERT INTO infraestrutura (dataCadastro) 
VALUES
('25/03/2022'),
('25/03/2022'),
('25/03/2022');
GO

INSERT INTO grupoInfraestrutura (idGrupoRecursos, idInfraestrutura) 
VALUES
(1, 1),
(2, 2),
(3, 3);
GO

INSERT INTO maquinaVirtual (idInfraestrutura, nomeMaquinaVirtual, opcoesDisponibilidade, sistemaOperacional, tamanho, nomeAdmin, origemChavePublicaSSH) 
VALUES
(1, 'Minha M�quina Virtual', 'Zona de disponibilidade', 'Windows Server 2019', 'Standard_D2s_v3 - 2vCPU,8Gib de mem�ria', 'Luca', 'Gerar novo par de chaves');
GO

INSERT INTO enderecoIP (endereco) 
VALUES
('192.168.3.151');
GO

INSERT INTO subRede(nomeSubRede, intervalosEndereco) 
VALUES
('Minha Sub-Rede', '10.0.0.1.0/24');
GO

INSERT INTO redeVirtual (idInfraestrutura, idEnderecoIP, idSubRede, nomeRedeVirtual, bastionHost, protecaoDDoS, fireWall) 
VALUES
(2, 1, 1, 'Minha Rede Virtual', 1, 1, 1);
GO

INSERT INTO servicoAplicacional (idInfraestrutura, nomeServicoAplicacional, pilhaRuntime, SKUeTamanho) 
VALUES
(3, 'Meu Servi�o Aplicacional', '.NET 6 (LTS)', 'B�sico B1- 100 ACU total, 1.75 GB de mem�ria');
GO
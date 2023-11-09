CREATE TABLE [usuarios] (
  [cpf] interger PRIMARY KEY,
  [nome] nvarchar(255),
  [sobrenome] nvarchar(255),
  [idade] interger
)
GO

CREATE TABLE [cadastro_pj] (
  [cnpj] interger PRIMARY KEY,
  [nomeempresa] nvarchar(255),
  [local] nvarchar(255),
  [tipoatv] nvarchar(255)
)
GO

CREATE TABLE [produto] (
  [id] interger PRIMARY KEY,
  [nome] nvarchar(255),
  [descricao] nvarchar(255),
  [cod_qr] interger
)
GO

ALTER TABLE [cadastro_pj] ADD FOREIGN KEY ([cnpj]) REFERENCES [usuarios] ([cpf])
GO

ALTER TABLE [produto] ADD FOREIGN KEY ([id]) REFERENCES [cadastro_pj] ([cnpj])
GO

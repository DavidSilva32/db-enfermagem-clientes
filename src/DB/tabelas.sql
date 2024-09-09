-- Tabela Paciente
CREATE TABLE PACIENTE (
  ID_Paciente INT PRIMARY KEY AUTO_INCREMENT,
  Nome VARCHAR(100) NOT NULL,
  Idade INT,
  Endereço VARCHAR(150),
  Telefone VARCHAR(15)
);

-- Tabela Medicamento
CREATE TABLE MEDICAMENTO (
  ID_Medicamento INT PRIMARY KEY AUTO_INCREMENT,
  Nome_Medicamento VARCHAR(100) NOT NULL,
  Dosagem VARCHAR(50),
  Frequencia VARCHAR(50),
  Instruções TEXT
);

-- Tabela Administração
CREATE TABLE ADMINISTRACAO (
  ID_administracao INT PRIMARY KEY AUTO_INCREMENT,
  Data_Adm DATE,
  Horario TIME,
  Observacoes TEXT,
  ID_Paciente INT,
  ID_Medicamento INT,
  FOREIGN KEY (ID_Paciente) REFERENCES PACIENTE(ID_Paciente),
  FOREIGN KEY (ID_Medicamento) REFERENCES MEDICAMENTO(ID_Medicamento)
);

-- Tabela Salário
CREATE TABLE SALARIO (
  ID_Salario INT PRIMARY KEY AUTO_INCREMENT,
  Mes VARCHAR(20),
  Valor DECIMAL(10,2),
  Observacoes TEXT
);

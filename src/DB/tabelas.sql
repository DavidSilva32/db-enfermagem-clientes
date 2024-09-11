-- Tabela Paciente
CREATE TABLE PACIENTE (
  id_paciente SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  idade INT,
  endereco VARCHAR(150),
  telefone VARCHAR(15)
);

-- Tabela Medicamento
CREATE TABLE MEDICAMENTO (
  id_medicamento SERIAL PRIMARY KEY,
  nome_medicamento VARCHAR(100) NOT NULL,
  dosagem VARCHAR(50),
  frequencia VARCHAR(50),
  instrucoes TEXT
);

-- Tabela Administração
CREATE TABLE ADMINISTRACAO (
  id_administracao SERIAL PRIMARY KEY,
  data_adm DATE,
  horario TIME,
  observacoes TEXT,
  id_paciente INT,
  id_medicamento INT,
  FOREIGN KEY (id_paciente) REFERENCES PACIENTE(id_paciente),
  FOREIGN KEY (id_medicamento) REFERENCES MEDICAMENTO(id_medicamento)
);

-- Tabela Salário
CREATE TABLE SALARIO (
  id_salario SERIAL PRIMARY KEY,
  mes VARCHAR(20),
  valor DECIMAL(10,2),
  observacoes TEXT
);

# Sistema de Banco de Dados para Técnico de Enfermagem

Este projeto é um sistema de banco de dados desenvolvido para auxiliar uma técnica de enfermagem a organizar e gerenciar as informações de seus pacientes, medicamentos e salários. O banco de dados foi modelado para ser simples, eficiente e adaptável às necessidades de um ambiente de atendimento domiciliar.

## Funcionalidades
- Armazenamento de dados de pacientes (nome, idade, endereço, telefone).
- Registro de medicamentos administrados (nome, dosagem, frequência).
- Controle de administração de medicamentos, com datas e horários.
- Registro de pagamentos feitos pelos pacientes à técnica de enfermagem.

## Estrutura do Banco de Dados
O banco de dados possui quatro tabelas principais:
- **PACIENTE**: Contém informações pessoais dos pacientes.
- **MEDICAMENTO**: Detalhes sobre os medicamentos prescritos.
- **ADMINISTRACAO**: Registra as datas e horários de administração de medicamentos.
- **SALRAIO**: Registra o valor pago por cada paciente.

## Instalação
### Requisitos
- PostgreSQL ou outro SGBD compatível.

### Como instalar
1. Clone o repositório:
   ```bash
   git clone https://github.com/DavidSilva32/db-enfermagem-clientes.git     
   ```
2. Importe o arquivo SQL no seu banco de dados:
    ```bash
    source src/DB/tabelas.sql;
    ```
3. As tabelas serão criadas automaticamente e estarão prontas para uso.

## Exemplo de Uso
- **Adicionar um novo paciente:**
    ```bash
    INSERT INTO PACIENTE (nome, idade, endereco, telefone)
    VALUES ('João Silva', 45, 'Rua das Flores, 123', '11-98765-4321');
    ```
- **Consultar medicamentos administrados:**
    ```bash
    SELECT PACIENTE.nome, MEDICAMENTO.nome_medicamento, ADMINISTRACAO.data_adm, ADMINISTRACAO.horario, ADMINISTRACAO.observacoes
    FROM ADMINISTRACAO
    JOIN PACIENTE ON ADMINISTRACAO.id_paciente = PACIENTE.id_paciente
    JOIN MEDICAMENTO ON ADMINISTRACAO.id_medicamento = MEDICAMENTO.id_medicamento;
    ```
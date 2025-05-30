# class-schedules

## Gerenciamento de Horários para Professores e Salas

Este repositório contém scripts SQL e pseudocódigo Python para ajudar no gerenciamento e visualização de horários de professores e salas de aula, com base em um modelo ER fornecido. As consultas e a lógica foram desenvolvidas para responder às necessidades do Professor Girafales em sua nova função de diretor.

### Estrutura do Projeto

```
A estrutura do projeto é organizada da seguinte forma:
├── sql/
│   ├── hoursProfessor.sql
│   └── occupancyRoom.sql
├── python/
│   └── roomFreeTimesFind.py
└── README.md
```
-   **`sql/`**: Este diretório contém todas as consultas SQL necessárias para extrair dados relevantes do banco de dados.
-   **`python/`**: Este diretório armazena o pseudocódigo Python que lida com a lógica de processamento de dados, especialmente para identificar horários livres.
-   **`README.md`**: Este arquivo que você está lendo, fornecendo uma visão geral do projeto, instruções de uso e detalhes sobre cada script.

### Descrição dos Arquivos

#### 1. `sql/hoursProfessor.sql`

* **Propósito**: Calcula a quantidade total de horas que cada professor está comprometido em aulas. Isso é útil para avaliar a carga horária de cada docente e auxiliar no planejamento.
* **Como usar**: Execute esta consulta em seu sistema de gerenciamento de banco de dados para obter uma lista dos professores e suas respectivas horas comprometidas.
* **Saída Esperada**: Uma tabela com duas colunas: `professor_name` (nome do professor) e `total_committed_hours` (total de horas em aulas), ordenada pelas horas comprometidas em ordem decrescente.

#### 2. `sql/occupancyRoom.sql`
* **Propósito**: Fornece uma lista detalhada de todos os horários em que as salas estão ocupadas. Esta consulta serve como base para identificar os horários livres.
* **Como usar**: Execute esta consulta em seu sistema de gerenciamento de banco de dados para obter uma visão dos horários de ocupação das salas.
* **Saída Esperada**: Uma tabela com colunas como room_name (nome da sala), day_of_week (dia da semana), start_time (hora de início da ocupação), end_time (hora de término da ocupação) e status (sempre 'Occupied').

#### 3. `python/roomFreeTimesFind.py`
* **Propósito**: Este é um pseudocódigo Python que demonstra a lógica para encontrar os horários livres das salas. Ele assume que você já obteve os horários ocupados usando a consulta room_occupancy.sql.
* **Como usar**:
  1. Execute a consulta occupancyRoom.sql para obter os dados dos horários ocupados.
  2. Transfira esses dados para a variável occupied_slots dentro do script Python.
  4. Certifique-se de que a lista all_rooms no script Python contenha todas as salas relevantes do seu sistema.
  5. Execute o script Python.
* **Lógica**: O script itera sobre cada sala e cada dia da semana dentro de um horário de funcionamento predefinido. Ele compara os horários ocupados com este intervalo para identificar e registrar as lacunas, que representam os horários livres. Ao final, ele pode combinar os slots ocupados e livres para fornecer uma visão completa do agendamento de cada sala.


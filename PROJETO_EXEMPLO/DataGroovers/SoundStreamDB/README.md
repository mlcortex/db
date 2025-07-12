# 📊 Projeto de Banco de Dados - Plataforma de Streaming Musical

## 🎓 Turma MBA em Engenharia de Dados

---

## 🧠 Nome da Equipe
**DataGroovers**

## 📌 Nome do Projeto
**SoundStreamDB - Gerenciamento de Plataforma de Streaming Musical**

---

## 📝 Descrição do Projeto

A SoundStreamDB é um projeto de banco de dados voltado para o gerenciamento e análise de dados de uma plataforma online de streaming de música.

O banco de dados foi modelado para representar um cenário real onde usuários acessam músicas, artistas lançam faixas, álbuns são cadastrados, e estatísticas de execução (streams) são monitoradas.

Esse projeto foca em responder perguntas relevantes para o negócio, como:

- Quais são as músicas mais tocadas por artista?
- Quais usuários ouvem mais músicas?
- Quais são os gêneros mais populares?
- Quais artistas têm mais ouvintes únicos?

---

## 👥 Membros da Equipe

| Nome               | Responsabilidade Principal |
|--------------------|----------------------------|
| Ana Silva          | Modelagem ER e lógica      |
| Bruno Oliveira     | Scripts SQL (DDL + DML)    |
| Carla Souza        | Consultas e relatórios     |
| Diego Ferreira     | Diagrama físico e índices  |
| Eduardo Martins    | Integração e documentação  |

---

## 🧰 SGBD Escolhido

**PostgreSQL**

---

## 📂 Artefatos do Projeto

- **Repositório GitHub** (código + documentação): [https://github.com/EquipeDataGroovers/SoundStreamDB](https://github.com/EquipeDataGroovers/SoundStreamDB)

---

## 📐 Modelagem de Dados

### 📘 Modelo Conceitual (Diagrama ER)

![Modelo Conceitual ER](modelo_er.jpg)

### 📗 Modelo Lógico

- Entidades normalizadas com chaves primárias e estrangeiras.
- Tipos de dados ajustados ao contexto de negócio.

### 📙 Modelo Físico

- Scripts SQL compatíveis com PostgreSQL.
- Índices primários, estrangeiros e otimizadores de busca.

---

## 🛠️ Scripts SQL

### 🏗️ Criação das Tabelas (DDL)

```sql
CREATE TABLE artista (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    genero VARCHAR(50)
);

CREATE TABLE album (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    artista_id INT REFERENCES artista(id),
    ano_lancamento INT
);

CREATE TABLE musica (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(100),
    album_id INT REFERENCES album(id),
    duracao_segundos INT
);

CREATE TABLE usuario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE stream (
    id SERIAL PRIMARY KEY,
    usuario_id INT REFERENCES usuario(id),
    musica_id INT REFERENCES musica(id),
    data_execucao TIMESTAMP
);
```

### 📥 Inserção de Dados (DML)

```sql
INSERT INTO artista (nome, genero) VALUES
('The Jazz Cats', 'Jazz'),
('ElectroNova', 'Eletrônica'),
('RockStorm', 'Rock');

INSERT INTO album (titulo, artista_id, ano_lancamento) VALUES
('Smooth Nights', 1, 2022),
('Beats & Bass', 2, 2021),
('Thunder Rock', 3, 2023);

INSERT INTO musica (titulo, album_id, duracao_segundos) VALUES
('Night Vibes', 1, 180),
('Midnight Sax', 1, 200),
('Drop the Bass', 2, 210),
('Electric Dreams', 2, 230),
('Rock You', 3, 250);

INSERT INTO usuario (nome, email) VALUES
('João Mendes', 'joao@gmail.com'),
('Maria Lima', 'maria@gmail.com'),
('Carlos Souza', 'carlos@gmail.com');

INSERT INTO stream (usuario_id, musica_id, data_execucao) VALUES
(1, 1, '2025-07-10 10:00'),
(2, 2, '2025-07-10 10:05'),
(1, 3, '2025-07-11 09:30'),
(3, 3, '2025-07-11 11:15'),
(2, 4, '2025-07-12 14:00'),
(1, 5, '2025-07-12 15:00');

```

### 🔍 Consultas SQL Relevantes
### 🎧 Top 3 músicas mais ouvidas por artista
```sql
SELECT a.nome AS artista, m.titulo, COUNT(s.id) AS total_execucoes
FROM stream s
JOIN musica m ON s.musica_id = m.id
JOIN album al ON m.album_id = al.id
JOIN artista a ON al.artista_id = a.id
GROUP BY a.nome, m.titulo
ORDER BY a.nome, total_execucoes DESC
LIMIT 3;
```
### 👤 Lista de usuários únicos que ouviram cada artista
```sql
SELECT DISTINCT a.nome AS artista, u.nome AS usuario
FROM stream s
JOIN musica m ON s.musica_id = m.id
JOIN album al ON m.album_id = al.id
JOIN artista a ON al.artista_id = a.id
JOIN usuario u ON s.usuario_id = u.id;
```
### 📊 Quantidade total de execuções por gênero
```sql
SELECT a.genero, COUNT(s.id) AS total_streams
FROM stream s
JOIN musica m ON s.musica_id = m.id
JOIN album al ON m.album_id = al.id
JOIN artista a ON al.artista_id = a.id
GROUP BY a.genero;
```
### 🕒 Duração média das músicas por álbum
```sql
SELECT al.titulo, AVG(m.duracao_segundos) AS duracao_media
FROM album al
JOIN musica m ON al.id = m.album_id
GROUP BY al.titulo;
```
### 🔄 Operações Avançadas
### 🔁 LEFT JOIN – Músicas sem execuções
```sql
SELECT m.titulo
FROM musica m
LEFT JOIN stream s ON m.id = s.musica_id
WHERE s.id IS NULL;
```
### ✏️ UPDATE – Atualizar nome de um artista
```sql
UPDATE artista
SET nome = 'Jazz Masters'
WHERE nome = 'The Jazz Cats';
```
### 🗑️ DELETE – Remover um usuário e seus streams

```sql
DELETE FROM stream WHERE usuario_id = 3;
DELETE FROM usuario WHERE id = 3;
```
✅ Conclusão

Este projeto demonstra a modelagem e implementação de um banco de dados relacional completo, com foco em consultas reais de negócio, uso de boas práticas em SQL e estruturação clara para futuras expansões, como dashboards, análises de BI e integrações com sistemas externos.
🛠️ Repositório Final

🔗 GitHub: https://github.com/EquipeDataGroovers/SoundStreamDB

(Material criado com ChatGPT)


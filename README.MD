# LOJA DE VINHOS

Este projeto cria o banco de dados Loja de Vinhos utilizando o MySQL. O objetivo é armazenar informações sobre vinhos, vinícolas e as regiões a que pertencem. As tarefas envolvem a criação do modelo físico, a inserção de registros, a consulta de dados, e a configuração de um usuário com permissões limitadas.

## 1. Criação do Database no MySQL Workbench
```bash
CREATE DATABASE LojaDeVinhos;
USE LojaDeVinhos;

```

## 2. Criação das Tabelas:
```bash
CREATE TABLE Regiao (
    codRegiao BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeRegiao VARCHAR(100) NOT NULL,
    descricaoRegiao TEXT
);

CREATE TABLE Vinicola (
    codVinicola BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeVinicola VARCHAR(100) NOT NULL,
    descricaoVinicola TEXT,
    foneVinicola VARCHAR(15),
    emailVinicola VARCHAR(50),
    codRegiao BIGINT,
    FOREIGN KEY (codRegiao) REFERENCES Regiao(codRegiao) ON DELETE CASCADE
);

CREATE TABLE Vinho (
    codVinho BIGINT AUTO_INCREMENT PRIMARY KEY,
    nomeVinho VARCHAR(50) NOT NULL,
    tipoVinho VARCHAR(30),
    anoVinho INT,
    descricaoVinho TEXT,
    codVinicola BIGINT,
    FOREIGN KEY (codVinicola) REFERENCES Vinicola(codVinicola) ON DELETE CASCADE
);
```

## 3. Insira Dados nas Tabelas - Apenas duas regiões para teste
```bash
-- Inserindo dados na tabela Regiao
INSERT INTO Regiao (nomeRegiao, descricaoRegiao)
VALUES 
('Bordeaux', 'Famosa região vinícola na França, conhecida por vinhos tintos de alta qualidade.'),
('Toscana', 'Região italiana conhecida por vinhos tradicionais como o Chianti e o Brunello di Montalcino.');

-- Inserindo dados na tabela Vinicola
INSERT INTO Vinicola (nomeVinicola, descricaoVinicola, foneVinicola, emailVinicola, codRegiao)
VALUES 
('Vinícola Château Margaux', 'Uma das mais prestigiadas vinícolas em Bordeaux, produz vinhos tintos clássicos.', '123456789', 'contato@margaux.com', 1),
('Vinícola Antinori', 'Famosa vinícola italiana localizada na região da Toscana, produtora de vinhos de alta qualidade.', '987654321', 'info@antinori.it', 2);

-- Inserindo dados na tabela Vinho
INSERT INTO Vinho (nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicola)
VALUES 
('Château Margaux 2015', 'Tinto', 2015, 'Vinho tinto elegante e refinado, com notas de frutas vermelhas e taninos suaves.', 1),
('Tignanello 2016', 'Tinto', 2016, 'Um vinho tinto italiano renomado, com aromas complexos e sabor profundo.', 2);

```

## 4.Consulta SQL para listar vinhos com vinícolas e regiões:

```bash
SELECT 
    v.nomeVinho AS 'Nome do Vinho', 
    v.anoVinho AS 'Ano do Vinho', 
    vi.nomeVinicola AS 'Vinícola', 
    r.nomeRegiao AS 'Região'
FROM 
    Vinho v
JOIN 
    Vinicola vi ON v.codVinicola = vi.codVinicola
JOIN 
    Regiao r ON vi.codRegiao = r.codRegiao;

```

## 5. -- Criar o usuário Sommelier
```bash

CREATE USER 'Sommelier'@'localhost' IDENTIFIED BY 'senha_forte';

-- Conceder permissões de SELECT apenas nas tabelas e campos especificados
GRANT SELECT (codVinicola, nomeVinicola) ON LojaDeVinhos.Vinicola TO 'Sommelier'@'localhost';
GRANT SELECT ON LojaDeVinhos.Vinho TO 'Sommelier'@'localhost';

-- Limitar a 40 consultas por hora
ALTER USER 'Sommelier'@'localhost' WITH MAX_QUERIES_PER_HOUR 40;
```


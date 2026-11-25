-- SmartStock - Modelagem inicial do banco de dados (MySQL)

CREATE DATABASE IF NOT EXISTS smartstock;
USE smartstock;

CREATE TABLE produtos (
    id              INT AUTO_INCREMENT PRIMARY KEY,
    nome            VARCHAR(100)  NOT NULL,
    categoria       VARCHAR(50)   NOT NULL,
    quantidade      INT           NOT NULL DEFAULT 0,
    estoque_minimo  INT           NOT NULL DEFAULT 0,
    preco           DECIMAL(10,2) NOT NULL,
    data_cadastro   DATETIME      NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE movimentacoes (
    id          INT AUTO_INCREMENT PRIMARY KEY,
    produto_id  INT      NOT NULL,
    tipo        ENUM('ENTRADA', 'SAIDA') NOT NULL,
    quantidade  INT      NOT NULL,
    data        DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_movimentacoes_produto
        FOREIGN KEY (produto_id) REFERENCES produtos(id)
        ON DELETE CASCADE
);

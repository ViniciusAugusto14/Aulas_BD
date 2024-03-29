-- Gera��o de Modelo f�sico
-- Sql ANSI 2003 - brModelo.

CREATE DATABASE FLORICULTURA;
USE FLORICULTURA;

CREATE TABLE CLIENTES (
registro int PRIMARY KEY AUTO_INCREMENT,
rg varchar(12),
nome varchar(255),
telefone varchar(14),
endereco varchar(255)
);

CREATE TABLE PRODUTOS (
codproduto int PRIMARY KEY AUTO_INCREMENT,
nomeproduto varchar(255),
tipo varchar(255),
preco decimal(10,2),
qtde_estoque int
);

CREATE TABLE COMPRAS (
notafiscal int PRIMARY KEY AUTO_INCREMENT,
valor_total decimal(10,2),
registro int,
FOREIGN KEY(registro) REFERENCES CLIENTES (registro)
);

CREATE TABLE compra-produto (
data_compra date,
qtde_itens int,
codproduto int,
notafiscal int,
FOREIGN KEY(codproduto) REFERENCES PRODUTOS (codproduto),
FOREIGN KEY(notafiscal) REFERENCES COMPRAS (notafiscal)
);


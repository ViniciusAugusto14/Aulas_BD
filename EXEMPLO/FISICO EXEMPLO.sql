CREATE DATABASE EXEMPLO;
USE EXEMPLO;



CREATE TABLE  JOGADORES (
NUM_JOGADORES int PRIMARY KEY AUTO_INCREMENT,
nome_jogador  varchar(255),
num_equipe int
);

CREATE TABLE EQUIPE (
num_equipe int PRIMARY KEY AUTO_INCREMENT,
 nome_equipe varchar(255)
);

ALTER TABLE  JOGADORES ADD FOREIGN KEY(num_equipe) REFERENCES EQUIPE (num_equipe);

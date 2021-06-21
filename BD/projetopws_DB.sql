DROP DATABASE projetopws;

CREATE DATABASE projetopws;

USE projetopws;

CREATE TABLE Aeroportos(
 idAeroporto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR(50) NOT NULL,
 Cidade VARCHAR(50) NOT NULL,
 Pais VARCHAR(50) NOT NULL,
 Morada VARCHAR(100) NOT NULL
);

CREATE TABLE Planes(
 idAviao INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 Marca VARCHAR(50) NOT NULL,
 Modelo VARCHAR(50) NOT NULL,
 nPassageiros INT NOT NULL,
 Referencia varchar(7) not null
);

CREATE TABLE Users(
 idUtilizador INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 primeiroNome VARCHAR(50) NOT NULL,
 apelido VARCHAR(50) NOT NULL,
 telemovel INT(9) NOT NULL,
 email VARCHAR(50) NOT NULL,
 morada varchar(150),
 username VARCHAR(50) NOT NULL,
 password VARCHAR(50) NOT NULL,
 role ENUM('passageiro','operador','gestor','administrador') NOT NULL
);

CREATE TABLE Voos( -- preco venda, disntacia e duracao(m)
 idVoo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 idAeroportoOrigem INT NOT NULL,
 idAeroportoDestino INT NOT NULL,
 preco decimal(6,2) not null,
 distancia int not null,
 duracao int not null, -- duração em minutos de cada voo
 CONSTRAINT fk_idAeroporto_origem FOREIGN KEY(idAeroportoOrigem) REFERENCES Aeroporto(idAeroporto),
 CONSTRAINT fk_idAeroporto_destino FOREIGN KEY(idAeroportoDestino) REFERENCES Aeroporto(idAeroporto)
);

CREATE TABLE Escalas(
 idEscala INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 idVoo INT NOT NULL,
 idAeroportoOrigem INT NOT NULL,
 idAeroportoDestino INT NOT NULL,
 data_hora_origem DATETIME NOT NULL,
 data_hora_destino DATETIME NOT NULL,
 distancia int NOT NULL,
 duracao int not null, -- duração em minutos de cada voo
 CONSTRAINT fk_idAeroportoOrigem FOREIGN KEY(idAeroportoOrigem) REFERENCES Aeroporto(idAeroporto),
 CONSTRAINT fk_idAeroportoDestino FOREIGN KEY(idAeroportoDestino) REFERENCES Aeroporto(idAeroporto),
 CONSTRAINT fk_idVoo FOREIGN KEY(idVoo) REFERENCES Voo(idVoo)
);

CREATE TABLE Escala_Planes(
 idEscala INT NOT NULL,
 idAviao INT NOT NULL,
 CONSTRAINT fk_idEscala FOREIGN KEY(idEscala) REFERENCES Escala(idEscala),
 CONSTRAINT fk_idAviao FOREIGN KEY(idAviao) REFERENCES Planes(idAviao)
);

CREATE TABLE Passagem_Vendas(
 idPassagemVenda INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
 idUtilizador INT NOT NULL,
 idVooIda INT NOT NULL,
 idVooVolta INT,
 preco FLOAT NOT NULL,
 checkin ENUM('nao_concluido','concluido'),
 CONSTRAINT fk_idUtilizador FOREIGN KEY(idUtilizador) REFERENCES Utilizador(idUtilizador),
 CONSTRAINT fk_idVooIda FOREIGN KEY(idVooIda) REFERENCES Voo(idVoo),
 CONSTRAINT fk_idVooVolta FOREIGN KEY(idVooVolta) REFERENCES Voo(idVoo)
);
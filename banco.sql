CREATE TABLE Plataforma (
  idP INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nomePlataforma VARCHAR(20)  NULL  ,
  imgPlataforma VARCHAR(255)  NULL    ,
PRIMARY KEY(idP));



CREATE TABLE Visitante (
  idV INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nomeVisitante VARCHAR(255)  NULL  ,
  celular VARCHAR(11)  NULL  ,
  dataNasc DATE  NULL  ,
  nick VARCHAR(20)  NULL    ,
PRIMARY KEY(idV));



CREATE TABLE Curso (
  idC INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  nomeCurso VARCHAR(25)  NULL    ,
PRIMARY KEY(idC));



CREATE TABLE Jogo (
  idJ INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  idP INTEGER UNSIGNED  NOT NULL  ,
  nomeJogo VARCHAR(50)  NULL  ,
  logo VARCHAR(255)  NULL  ,
  imgFundo VARCHAR(255)  NULL  ,
  tipoPont VARCHAR(25)  NULL    ,
PRIMARY KEY(idJ)  ,
INDEX Jogo_FKIndex1(idP),
  FOREIGN KEY(idP)
    REFERENCES Plataforma(idP)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE Curso_Visitante (
  idC INTEGER UNSIGNED  NOT NULL  ,
  idV INTEGER UNSIGNED  NOT NULL    ,
PRIMARY KEY(idC, idV)  ,
INDEX Curso_has_Visitante_FKIndex1(idC)  ,
INDEX Curso_has_Visitante_FKIndex2(idV),
  FOREIGN KEY(idC)
    REFERENCES Curso(idC)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idV)
    REFERENCES Visitante(idV)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);



CREATE TABLE Resultado (
  idR INTEGER UNSIGNED  NOT NULL   AUTO_INCREMENT,
  idJ INTEGER UNSIGNED  NOT NULL  ,
  idV INTEGER UNSIGNED  NOT NULL  ,
  pontos INTEGER UNSIGNED  NULL  ,
  tempo TIME  NULL    ,
PRIMARY KEY(idR)  ,
INDEX Resultado_FKIndex1(idV)  ,
INDEX Resultado_FKIndex2(idJ),
  FOREIGN KEY(idV)
    REFERENCES Visitante(idV)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(idJ)
    REFERENCES Jogo(idJ)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION);




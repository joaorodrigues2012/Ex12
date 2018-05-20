drop database pais;
CREATE DATABASE pais;
USE pais;

CREATE TABLE pais (
  id INT NOT NULL auto_increment,
  nome VARCHAR(100) NOT NULL,
  populacao bigint NOT NULL,
  area numeric(15,2),
  PRIMARY KEY (id));
  
  USE pais;
INSERT INTO `pais` (`id`,`nome`,`populacao`,`area`) VALUES (1,'Brasil','207.7','8516000');
INSERT INTO `pais` (`id`,`nome`,`populacao`,`area`) VALUES (2,'Argentina','43.85','2780000');
INSERT INTO `pais` (`id`,`nome`,`populacao`,`area`) VALUES (3,'Bolivia','10.89','1099000');
INSERT INTO `pais` (`id`,`nome`,`populacao`,`area`) VALUES (4,'Estados Unidos','323.1','9834000');
INSERT INTO `pais` (`id`,`nome`,`populacao`,`area`) VALUES (5,'Portugal','10.32','92212');
INSERT INTO `pais` (`id`,`nome`,`populacao`,`area`) VALUES (6,'Alemanha','82.67','357376');
INSERT INTO `pais` (`id`,`nome`,`populacao`,`area`) VALUES (7,'Colombia','48.65','1142000');

select * from
 pais;
 
 
 /*----------------USUARIO----------------------*/
 
 
 CREATE TABLE usuario
 (username VARCHAR(100) NOT NULL,
 password VARCHAR(100) NOT NULL,
 PRIMARY KEY (username))
 ENGINE = InnoDB DEFAULT CHARACTER SET = utf8;
 
 INSERT INTO `usuario` (`username`,`password`)
 VALUES ('Victor@victor','123456');
 
 select * from usuario;
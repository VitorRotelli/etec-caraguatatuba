/*
SQLyog Community v13.2.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - etec
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`etec` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `etec`;

/*Table structure for table `cursos_medio` */

DROP TABLE IF EXISTS `cursos_medio`;

CREATE TABLE `cursos_medio` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(255) DEFAULT NULL,
  `imagem_curso` text DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `ativo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `cursos_medio` */

insert  into `cursos_medio`(`id_curso`,`nome_curso`,`imagem_curso`,`link`,`ativo`) values 
(7,'Administração','Administração.jpg','https://www.cps.sp.gov.br/cursos-etec/administracao/','1'),
(8,'Meio Ambiente','Meio Ambiente.jpg','https://www.cps.sp.gov.br/cursos-etec/meio-ambiente/','1');

/*Table structure for table `cursos_tecnicos` */

DROP TABLE IF EXISTS `cursos_tecnicos`;

CREATE TABLE `cursos_tecnicos` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(255) DEFAULT NULL,
  `imagem_curso` text DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `ativo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `cursos_tecnicos` */

insert  into `cursos_tecnicos`(`id_curso`,`nome_curso`,`imagem_curso`,`link`,`ativo`) values 
(1,'Administração','Administração.jpg','https://www.cps.sp.gov.br/cursos-etec/administracao/','1'),
(2,'Gastronomia','gastronomia.jpg','https://www.cps.sp.gov.br/cursos-etec/gastronomia/','1'),
(3,'Informática para Internet','Informática para Internet.jpg','https://www.cps.sp.gov.br/cursos-etec/informatica-para-internet/','0'),
(4,'Logística','Logística.jpg','https://www.cps.sp.gov.br/cursos-etec/logistica/','1'),
(5,'Nutrição e Dietética','Nutrição e Dietética.jpg','https://www.cps.sp.gov.br/cursos-etec/nutricao-e-dietetica/','1'),
(6,'Recursos Humanos','Recursos Humanos.jpg','https://www.cps.sp.gov.br/cursos-etec/recursos-humanos/','1');

/*Table structure for table `cursos_ubatuba` */

DROP TABLE IF EXISTS `cursos_ubatuba`;

CREATE TABLE `cursos_ubatuba` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(255) DEFAULT NULL,
  `imagem_curso` text DEFAULT NULL,
  `link` longtext DEFAULT NULL,
  `ativo` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `cursos_ubatuba` */

insert  into `cursos_ubatuba`(`id_curso`,`nome_curso`,`imagem_curso`,`link`,`ativo`) values 
(1,'Administração','Administração.jpg','https://www.cps.sp.gov.br/cursos-etec/administracao/','1'),
(3,'Nutrição e Dietética','Nutrição e Dietética.jpg','https://www.cps.sp.gov.br/cursos-etec/nutricao-e-dietetica/','1'),
(4,'Recursos Humanos','Recursos Humanos.jpg','https://www.cps.sp.gov.br/cursos-etec/recursos-humanos/','1'),
(7,'Transações Imobiliárias','Transações Imobiliárias.jpg','https://www.cps.sp.gov.br/cursos-etec/transacoes-imobiliarias/','1');

/*Table structure for table `noticias` */

DROP TABLE IF EXISTS `noticias`;

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL AUTO_INCREMENT,
  `titulo_noticia` varchar(255) DEFAULT NULL,
  `texto_noticia` text DEFAULT NULL,
  `tipo_noticia` varchar(255) DEFAULT NULL,
  `autor` varchar(255) DEFAULT NULL,
  `data_postagem` datetime DEFAULT NULL,
  `foto_noticia` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_noticia`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `noticias` */

insert  into `noticias`(`id_noticia`,`titulo_noticia`,`texto_noticia`,`tipo_noticia`,`autor`,`data_postagem`,`foto_noticia`) values 
(1,'Desenvolvimento Site Etec','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Vestibulinho','Vitor Rotelli','2024-02-06 09:27:25','programacao.jpg'),
(2,'Doação de Sangue','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.','Outros','Amanda Rodriguez','2024-02-07 11:13:08','programacao.jpg');

/*Table structure for table `professores` */

DROP TABLE IF EXISTS `professores`;

CREATE TABLE `professores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `unidade` varchar(255) DEFAULT NULL,
  `titulos` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `professores` */

insert  into `professores`(`id`,`nome`,`unidade`,`titulos`) values 
(3,'ADENILSON DOS SANTOS','Escola Técnica Estadual de Caraguatatuba','Tecnologia em Turismo'),
(4,'ADRIANO TEIXEIRA BASTOS NETO','Escola Técnica Estadual de Caraguatatuba','Química (LP), Engenharia Agronômica'),
(5,'ADRIENE NORMA VIVIANI OLIVEIRA','Escola Técnica Estadual de Caraguatatuba','Pedagogia (LP), Educação Artística com Habilitação em Artes Plásticas (LP)'),
(6,'ALTIVO ALEXANDRE DE GOVEA JUNIOR','Escola Técnica Estadual de Caraguatatuba','Física (LP)'),
(7,'ANA PAULA DE OLIVEIRA LOPES','Escola Técnica Estadual de Caraguatatuba','Biologia (LP), Pedagogia (LP)'),
(8,'ANDERSON MARIOTO ROLA','Escola Técnica Estadual de Caraguatatuba','Geografia (LP), Pedagogia (LP)'),
(9,'ARNALDO TOSHIO HAMAGUTI','Escola Técnica Estadual de Caraguatatuba','Sistemas de Informação, Tecnologia em Logística, Tecnologia em Processos Gerenciais'),
(10,'CAMILA HIPOLITO RODRIGUES MOREIRA DA SILVA','Escola Técnica Estadual de Caraguatatuba','Direito, Pedagogia (LP)'),
(11,'CARLOS CHRISTIAN PEREZ DAS CHAGAS','Escola Técnica Estadual de Caraguatatuba','Tecnologia em Produção Multimídia, Computação (LP), Tecnologia em Processos Gerenciais'),
(12,'CARLOS EDUARDO FELGUEIRAS','Escola Técnica Estadual de Caraguatatuba','Geografia (LP)'),
(13,'CARLOS OLAVO NOVAES AMARAL DE OLIVEIRA','Escola Técnica Estadual de Caraguatatuba','Engenharia Mecânica, Matemática (LP), Marketing'),
(14,'CAROLINA FORESTTI LANFRANCHI','Escola Técnica Estadual de Caraguatatuba','Marketing, Tecnologia em Processos Gerenciais'),
(15,'CAROLINA LIMA DE SOUZA','Escola Técnica Estadual de Caraguatatuba','História (LP)'),
(16,'CAROLINA NASCIMENTO ALVES DE LIMA','Escola Técnica Estadual de Caraguatatuba','Engenharia Agronômica, Matemática (LP)'),
(17,'CASSIA BUENO MIGUEL PEREIRA','Escola Técnica Estadual de Caraguatatuba','Tecnologia em Turismo'),
(18,'CHRISTIANE METELMANN SOARES SACCHETTI','Escola Técnica Estadual de Caraguatatuba','Nutrição'),
(19,'CRISTINA DE OLIVEIRA MORISHITA','Escola Técnica Estadual de Caraguatatuba','Informática (LP), Tecnologia em Informática para (a) Gestão de Negócios'),
(20,'DAYANE CARLA DA SILVA','Escola Técnica Estadual de Caraguatatuba','Administração'),
(21,'DEBORA LILIANE DE SOUZA RENO','Escola Técnica Estadual de Caraguatatuba','Ciências Biológicas (LP)'),
(22,'DELANO MOREIRA DE REZENDE','Escola Técnica Estadual de Caraguatatuba','Nutrição'),
(23,'ELIAS JOSE DOS SANTOS','Escola Técnica Estadual de Caraguatatuba','Administração - Habilitação em Hotelaria e Turismo, Administração'),
(24,'EMERSON NUNES DE MELO MOURA','Escola Técnica Estadual de Caraguatatuba','Ciências Biológicas (LP), Pedagogia (LP)'),
(25,'EVANDER CORTEZ','Escola Técnica Estadual de Caraguatatuba','Matemática (LP), Ciências Econômicas'),
(26,'FABRICIO ANSELMO DA SILVA','Escola Técnica Estadual de Caraguatatuba','Fisioterapia, Tecnologia em Gestão Empresarial'),
(27,'FERNANDA SAPORITO RIVELLINO','Escola Técnica Estadual de Caraguatatuba','Nutrição, Pedagogia (LP)'),
(28,'FILIPE HIPOLITO RODRIGUES MOREIRA DA SILVA','Escola Técnica Estadual de Caraguatatuba','Sistemas de Informação, Matemática (LP)'),
(29,'HENRIQUE DUARTE BORGES LOURO','Escola Técnica Estadual de Caraguatatuba','Sistemas de Informação'),
(30,'HEVERTON RODRIGUES DE OLIVEIRA','Escola Técnica Estadual de Caraguatatuba','Nutrição, Tecnologia em Recursos Humanos, Letras - Língua e Literatura Portuguesa (LP)'),
(31,'IZALTINO FERNANDO SILVA SOUZA','Escola Técnica Estadual de Caraguatatuba','Ciências Contábeis'),
(32,'JAMIL SALAMENE','Escola Técnica Estadual de Caraguatatuba','Física (LP), Matemática (LP), Química (LP)'),
(33,'JEAN CARLOS DA SILVA','Escola Técnica Estadual de Caraguatatuba','Ciências Contábeis'),
(34,'JONATAS FRANCISCO FERRAZ','Escola Técnica Estadual de Caraguatatuba','História (LP), Filosofia, Pedagogia (LP), Geografia (LP)'),
(35,'JOSE CARLOS FELIX JUNIOR','Escola Técnica Estadual de Caraguatatuba','Administração, Pedagogia (LP), Tecnologia em Fabricação Mecânica, Matemática (LP)'),
(36,'JOSE REINALDO SILVA','Escola Técnica Estadual de Caraguatatuba','Pedagogia (LP), Letras - Língua Portuguesa e Inglesa (LP)'),
(37,'KELLY CRISTINA ALEXANDRE RODRIGUES','Escola Técnica Estadual de Caraguatatuba','Matemática (LP)'),
(38,'LAYRA EDUARDA NEITZER','Escola Técnica Estadual de Caraguatatuba','História (LP)'),
(39,'LEANDRO BARBOSA DA SILVEIRA GATTO','Escola Técnica Estadual de Caraguatatuba','Física (LP)'),
(40,'LILIA BORGES DA SILVEIRA','Escola Técnica Estadual de Caraguatatuba','Computação'),
(41,'LILIAN PEIXOTO GUIMARAES','Escola Técnica Estadual de Caraguatatuba','Comunicação Social com Habilitação em Publicidade e Propaganda, Artes Visuais (LP)'),
(42,'MAIRA LEONILDA MARCHIORI','Escola Técnica Estadual de Caraguatatuba','Artes Cênicas (LP)'),
(43,'MARCIO ROBERTO RIZZATTO','Escola Técnica Estadual de Caraguatatuba','Ciência(s) da(de) Computação, Pedagogia (LP)'),
(44,'MARIA WELINADIA DA SILVA BRITO','Escola Técnica Estadual de Caraguatatuba','Matemática (LP), Pedagogia (LP)'),
(45,'MARIANA DE SOUZA','Escola Técnica Estadual de Caraguatatuba','Gastronomia, Comunicação Social com Habilitação em Publicidade e Propaganda'),
(46,'MARIVANE TURIM KOSCHEVIC','Escola Técnica Estadual de Caraguatatuba','Biologia (LP), Tecnologia em Gestão Ambiental'),
(47,'MATEUS HASHIMOTO DE ALMEIDA','Escola Técnica Estadual de Caraguatatuba','Arquitetura e Urbanismo com Especialização em Segurança do Trabalho, Arquitetura e Urbanismo'),
(48,'MAURICIO DE PAULA LIMA','Escola Técnica Estadual de Caraguatatuba','Ciências Contábeis, Matemática (LP)'),
(49,'MICHELE JÉSSICA COSTA SANTOS DE CASTILHO','Escola Técnica Estadual de Caraguatatuba','Ciências Biológicas (LP)'),
(50,'MICHELLE SIMOES DE REZENDE QUEIROZ','Escola Técnica Estadual de Caraguatatuba','Ciências Biológicas (LP), Pedagogia (LP)'),
(51,'MONIQUE SILVA COELHO','Escola Técnica Estadual de Caraguatatuba','Química, Química (LP)'),
(52,'NADIA GARCIA BASSO','Escola Técnica Estadual de Caraguatatuba','Comunicação Social com Habilitação em Publicidade e Propaganda'),
(53,'NATÁLIA MATOS PEREIRA','Escola Técnica Estadual de Caraguatatuba','Tecnologia em Gestão Empresarial'),
(54,'PALOMA DE FATIMA POLIZELI','Escola Técnica Estadual de Caraguatatuba','Administração, Pedagogia (LP)'),
(55,'PAULO ALEXANDRE GOMES FREIRE DOS SANTOS','Escola Técnica Estadual de Caraguatatuba','Filosofia (LP)'),
(56,'PAULO SERGIO CASELLA FILHO','Escola Técnica Estadual de Caraguatatuba','Tecnologia em Gestão Empresarial - Ênfase em Marketing e Comércio Exterior, Educação Física (LP), Pedagogia'),
(57,'RAILSON MUNIZ DOS SANTOS','Escola Técnica Estadual de Caraguatatuba','Administração'),
(58,'RAQUEL DE MORAES GRAFFIN','Escola Técnica Estadual de Caraguatatuba','Engenharia Florestal, Biologia (LP)'),
(59,'REGINA FERRO DE SOUZA','Escola Técnica Estadual de Caraguatatuba','Psicologia (LP), Pedagogia (LP)'),
(60,'REGINA MAURA FERREIRA','Escola Técnica Estadual de Caraguatatuba','Letras com Habilitação em Português e Espanhol (LP)'),
(61,'RENATA VITORIA DUGAIN','Escola Técnica Estadual de Caraguatatuba','Direito, Pedagogia (LP), Geografia (LP)'),
(62,'RICIERI RAMOS DOS SANTOS','Escola Técnica Estadual de Caraguatatuba','Direito, Pedagogia (LP), Tecnologia em Processos Gerenciais'),
(63,'ROBERTA PEDROSO','Escola Técnica Estadual de Caraguatatuba','Turismo, Letras com Habilitação em Português e Espanhol (LP)'),
(64,'ROGERIO LUIS SANTANA BARROSO','Escola Técnica Estadual de Caraguatatuba','Turismo, Pedagogia (LP)'),
(65,'ROGERIO TADEU FRANCISCO GONCALVES','Escola Técnica Estadual de Caraguatatuba','Educação Física (LP)'),
(66,'ROSEMARA DOS SANTOS ALVES MARTINS','Escola Técnica Estadual de Caraguatatuba','Tecnologia em Gestão Empresarial'),
(67,'SIMONE LEITE AZEVEDO GURGEL GUIDA','Escola Técnica Estadual de Caraguatatuba','Enfermagem (LP), Pedagogia (LP)'),
(68,'TAMARA VON TEIN','Escola Técnica Estadual de Caraguatatuba','Tecnologia em Turismo e Hospitalidade'),
(69,'TATIANA VICENTINA BORGES MESQUITA','Escola Técnica Estadual de Caraguatatuba','Letras com Habilitação em Português e Inglês (LP)'),
(70,'TAWANA VITÓRIA SALLES DE AVIZ','Escola Técnica Estadual de Caraguatatuba','Administração'),
(71,'THAIS GIRAUD DE ALMEIDA REIS','Escola Técnica Estadual de Caraguatatuba','Educação Física (LP), Educação Artística com Habilitação em Desenho e Artes Plásticas'),
(72,'TIAGO PESCHKE DE AZEVEDO','Escola Técnica Estadual de Caraguatatuba','Arquitetura e Urbanismo'),
(73,'VALDECIO GONDIM DE OLIVEIRA','Escola Técnica Estadual de Caraguatatuba','Tecnologia em Segurança do Trabalho, Filosofia (LP), Pedagogia (LP)'),
(74,'VANDA CRISTINA DAS NEVES','Escola Técnica Estadual de Caraguatatuba','Pedagogia (LP), Ciências Contábeis, Administração de Empresas'),
(75,'VINICIUS CARDOSO MESSIAS','Escola Técnica Estadual de Caraguatatuba','Sistemas de Informação'),
(76,'WALDIR NATALINO MANZ JUNIOR','Escola Técnica Estadual de Caraguatatuba','Educação Física (LP)'),
(77,'YUMI ERICA RODRIGUES SAKASHITA','Escola Técnica Estadual de Caraguatatuba','Direito, Letras com Habilitação em Português e Inglês (LP), Pedagogia (LP)');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

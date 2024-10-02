-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sismusica
-- ------------------------------------------------------
-- Server version	5.5.5-10.10.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `compartilhamento`
--

DROP TABLE IF EXISTS `compartilhamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compartilhamento` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `conteudos` varchar(255) DEFAULT NULL,
  `tipos` varchar(255) DEFAULT NULL,
  `compartilhado_por_id` bigint(20) DEFAULT NULL,
  `para_um_usuario_id` bigint(20) DEFAULT NULL,
  `para_usuario_id` bigint(20) DEFAULT NULL,
  `recebido_por_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKr2jibg9u93mf6gpyrjoed9pqm` (`para_usuario_id`),
  KEY `FKekn3fpbyv50v4dc20q02t6irc` (`compartilhado_por_id`),
  KEY `FKgf7wb582jkuqdtmco3bdhk8ip` (`para_um_usuario_id`),
  KEY `FKhfgyi0d5npuifivitfxbqa8r1` (`recebido_por_id`),
  CONSTRAINT `FK2si5vtmhh5nicqnyidx9xe1kd` FOREIGN KEY (`para_usuario_id`) REFERENCES `musica` (`id`),
  CONSTRAINT `FKekn3fpbyv50v4dc20q02t6irc` FOREIGN KEY (`compartilhado_por_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKgf7wb582jkuqdtmco3bdhk8ip` FOREIGN KEY (`para_um_usuario_id`) REFERENCES `playlist` (`id`),
  CONSTRAINT `FKhfgyi0d5npuifivitfxbqa8r1` FOREIGN KEY (`recebido_por_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compartilhamento`
--

LOCK TABLES `compartilhamento` WRITE;
/*!40000 ALTER TABLE `compartilhamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `compartilhamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica`
--

DROP TABLE IF EXISTS `musica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musica` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `album` varchar(255) DEFAULT NULL,
  `artista` varchar(255) DEFAULT NULL,
  `tempo_duracao` float NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica`
--

LOCK TABLES `musica` WRITE;
/*!40000 ALTER TABLE `musica` DISABLE KEYS */;
/*!40000 ALTER TABLE `musica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `musica_paravariasplaylists`
--

DROP TABLE IF EXISTS `musica_paravariasplaylists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musica_paravariasplaylists` (
  `musica_id` bigint(20) NOT NULL,
  `paravariasplaylists_id` bigint(20) NOT NULL,
  UNIQUE KEY `UKc81c90le302u4vaiphpmrh7xq` (`paravariasplaylists_id`),
  KEY `FKahimiv4dvwwqfogvwb1rijlf7` (`musica_id`),
  CONSTRAINT `FKahimiv4dvwwqfogvwb1rijlf7` FOREIGN KEY (`musica_id`) REFERENCES `musica` (`id`),
  CONSTRAINT `FKbfaq7kgg9yfkk0yin0lh8oyyw` FOREIGN KEY (`paravariasplaylists_id`) REFERENCES `musica` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musica_paravariasplaylists`
--

LOCK TABLES `musica_paravariasplaylists` WRITE;
/*!40000 ALTER TABLE `musica_paravariasplaylists` DISABLE KEYS */;
/*!40000 ALTER TABLE `musica_paravariasplaylists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `foto_perfil` varchar(255) DEFAULT NULL,
  `nome_usuario` varchar(255) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKqimyhrxv3rmjmv7cs5fi1ek85` (`usuario_id`),
  CONSTRAINT `FKno01a8iut56nipcu6qdnxgeg5` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesquisa`
--

DROP TABLE IF EXISTS `pesquisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesquisa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `palavra_chave` varchar(255) DEFAULT NULL,
  `resultados` varchar(255) DEFAULT NULL,
  `exibe_uma_musica_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK3sysin6385hilef7w3hoe34pr` (`exibe_uma_musica_id`),
  CONSTRAINT `FK19xnyv55dso13xhmst5b3ag67` FOREIGN KEY (`exibe_uma_musica_id`) REFERENCES `pesquisa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesquisa`
--

LOCK TABLES `pesquisa` WRITE;
/*!40000 ALTER TABLE `pesquisa` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesquisa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesquisa_para_varias_pesquisas`
--

DROP TABLE IF EXISTS `pesquisa_para_varias_pesquisas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pesquisa_para_varias_pesquisas` (
  `pesquisa_id` bigint(20) NOT NULL,
  `para_varias_pesquisas_id` bigint(20) NOT NULL,
  UNIQUE KEY `UK9njyraor0fpdw8cyeiyhuxy0g` (`para_varias_pesquisas_id`),
  KEY `FKi0q9bwevm5nsc4u214pjkcxbr` (`pesquisa_id`),
  CONSTRAINT `FK9po180nargsmwx2fnqg26jrg7` FOREIGN KEY (`para_varias_pesquisas_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKi0q9bwevm5nsc4u214pjkcxbr` FOREIGN KEY (`pesquisa_id`) REFERENCES `pesquisa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesquisa_para_varias_pesquisas`
--

LOCK TABLES `pesquisa_para_varias_pesquisas` WRITE;
/*!40000 ALTER TABLE `pesquisa_para_varias_pesquisas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesquisa_para_varias_pesquisas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `capa_album` varchar(255) DEFAULT NULL,
  `musica` varchar(255) DEFAULT NULL,
  `nomes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist`
--

LOCK TABLES `playlist` WRITE;
/*!40000 ALTER TABLE `playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playlist_exibe_varias_playlist`
--

DROP TABLE IF EXISTS `playlist_exibe_varias_playlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playlist_exibe_varias_playlist` (
  `playlist_id` bigint(20) NOT NULL,
  `exibe_varias_playlist_id` bigint(20) NOT NULL,
  UNIQUE KEY `UKeg8g9h4nr3qay49g9lhk9obe6` (`exibe_varias_playlist_id`),
  KEY `FK7ifmm5r81djqa3g25knymh41j` (`playlist_id`),
  CONSTRAINT `FK2bhoxevqbha1kay93lu1s9cet` FOREIGN KEY (`exibe_varias_playlist_id`) REFERENCES `musica` (`id`),
  CONSTRAINT `FK7ifmm5r81djqa3g25knymh41j` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playlist_exibe_varias_playlist`
--

LOCK TABLES `playlist_exibe_varias_playlist` WRITE;
/*!40000 ALTER TABLE `playlist_exibe_varias_playlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `playlist_exibe_varias_playlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguir`
--

DROP TABLE IF EXISTS `seguir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguir` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `usuario_seguindo` varchar(255) DEFAULT NULL,
  `usuario_seguir` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguir`
--

LOCK TABLES `seguir` WRITE;
/*!40000 ALTER TABLE `seguir` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguir_realizado_por`
--

DROP TABLE IF EXISTS `seguir_realizado_por`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seguir_realizado_por` (
  `seguir_id` bigint(20) NOT NULL,
  `realizado_por_id` bigint(20) NOT NULL,
  KEY `FKst3100pm25kyb6wm68xwb47lt` (`realizado_por_id`),
  KEY `FK5uxifaw67nya8m5t6ctbyq9ts` (`seguir_id`),
  CONSTRAINT `FK5uxifaw67nya8m5t6ctbyq9ts` FOREIGN KEY (`seguir_id`) REFERENCES `seguir` (`id`),
  CONSTRAINT `FKst3100pm25kyb6wm68xwb47lt` FOREIGN KEY (`realizado_por_id`) REFERENCES `perfil` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguir_realizado_por`
--

LOCK TABLES `seguir_realizado_por` WRITE;
/*!40000 ALTER TABLE `seguir_realizado_por` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguir_realizado_por` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idioma` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `perfil_id` bigint(20) DEFAULT NULL,
  `pode_escutar_uma_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK3gsqha3puu1ccw81jefi4j71t` (`perfil_id`),
  UNIQUE KEY `UKppvykk48m4dfmaigty5lteov7` (`pode_escutar_uma_id`),
  CONSTRAINT `FK7j6ji0sdun9h8scvalwheq668` FOREIGN KEY (`pode_escutar_uma_id`) REFERENCES `musica` (`id`),
  CONSTRAINT `FK9po12ytp6krwvwht1kmd0qgxf` FOREIGN KEY (`perfil_id`) REFERENCES `perfil` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_playlists`
--

DROP TABLE IF EXISTS `usuario_playlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_playlists` (
  `usuario_id` bigint(20) NOT NULL,
  `playlists_id` bigint(20) NOT NULL,
  UNIQUE KEY `UKm5a9tx8sm488lbux22kfkwh8p` (`playlists_id`),
  KEY `FKsy07yhfjbwgnexxivnx3yimve` (`usuario_id`),
  CONSTRAINT `FKj746bmgq4lsund5mn61oi9ni5` FOREIGN KEY (`playlists_id`) REFERENCES `playlist` (`id`),
  CONSTRAINT `FKsy07yhfjbwgnexxivnx3yimve` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_playlists`
--

LOCK TABLES `usuario_playlists` WRITE;
/*!40000 ALTER TABLE `usuario_playlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_playlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-02 20:11:48

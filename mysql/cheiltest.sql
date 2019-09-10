-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cheilTest
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hotels` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (2,'Hotel Alameda Palace','https://www.hotelalamedapalace.com/wp-content/blogs.dir/1308/files/gallery-photo/photo-gallery-4.jpg','El Hotel Alameda Palace se caracteriza por su diseño moderno y lujosas instalaciones. El alojamiento se ubica a pocos metros del centro de Salamanca, ciudad nombrada como Patrimonio de la Humanidad por la UNESCO. El hotel ofrece siete categorías de lujosas habitaciones con una decoración clásica y suelos de parquet, las mismas albergan mobiliario con estilo antiguo y disponen de minibar, televisor, ventanas insonorizadas y baños privados decorados en mármol con bañera de hidromasaje. Las instalaciones están adaptadas para personas con movilidad reducida y cuentan con recepción las 24 horas. Igualmente,  el El Hotel Alameda Palace  ofrece piscina al aire libre, gimnasio, parking, wifi gratuito y tintorería. Asimismo, resaltan las cinco salas de reuniones que ofrece.','Paseo de la Estación, 1, 37004 Salamanca, España','+34 923 282 626',5,'2019-09-10 04:59:37','2019-09-10 07:51:57'),(3,'Hotel Siklen Indautxu','https://www.viajeselcorteingles.es/imagenes/hoteles/espana/bilbao/dmfvcfkr/1.jpg','En pleno corazón de Bilbao se encuentra el Hotel Siklen Indautxu. Un hotel de 4 estrellas con una fachada de estilo bilbaíno y decoración renovada y elegante. Su ubicación es ideal para turistas y cuenta con salones para conferencias perfecto para empresarios. Sus habitaciones amplias y confortables disponen de minibar, aire acondicionado, calefacciones, caja fuerte, TV de pantalla plana, baño de mármol, bidet, bañera y secador de cabello. El Hotel Siklen Indautxu tiene a disposición recepción las 24 horas, igualmente ofrece lavandería, servicio a la habitación, wifi gratuito, centro de negocios y periódico gratuito a los visitantes. Además de eso dispone de salas para todo tipo de celebraciones.','Plaza Bombero Etxaniz S/n, Bilbao, 48010','+34 944 21 11 98',4,'2019-09-10 05:01:01','2019-09-10 07:53:11'),(4,'Majestic Palace Hotel','https://res.cloudinary.com/lastminute/image/upload/c_scale,w_630/q_auto/v1564003742/rmd995ehnaro4aar94r3.jpg',':A pocos minutos de la costa de la isla de Santa Catarina se ubica el Majestic Palace Hotel, uno de los alojamientos más lujosos de Florianópolis, catalogado con 5 estrellas. Resaltan su imponente estructura con vista hacia la Bahía del Norte, y su céntrica ubicación a la zona comercial. Cuenta con 245 habitaciones, que disponen de vista hacia la costa. Además, están equipadas con TV LCD, baño, secador de cabello, teléfono, aire acondicionado, caja fuerte y minibar. El Majestic Palace Hotel dispone de recepción las 24 horas al igual que salones para eventos. A su vez cuenta con solárium, sauna, piscina al aire libre, sala de relajación, spa y parking. El restaurante ofrece vistas hermosas hacia la bahía del Norte mientras son servidos los especiales culinarios; así mismo, en la mezzanina hay un bar que ofrece variados tipos de bebidas.','Av. Jorn. Rubéns de Arruda Ramos, 2746 - Centro, Florianópolis - SC, 88015-702, Brasil','(48) 3231-8000',5,'2019-09-10 05:02:27','2019-09-10 07:53:46'),(5,'Merit San Telmo','https://www.buenosaires.travel/wp-content/buenosaires_uploads/merit-001-801x563.jpg','El Merit San Telmo es un elegante hotel de 3 estrellas construido en un edificio que data de 1940 que aún mantiene en su arquitectura elementos significativos de la época. El alojamiento se encuentra el corazón de Buenos Aires, el barrio de San Telmo, frente a la Iglesia San Juan Bautista. Se trata de un alojamiento de 141 habitaciones con decoración contemporáneo repartidas en ocho pisos, las cuales disponen de aire acondicionado, televisor vía satélite, baños privados con secador de cabello y amenidades, minibar y escritorio. El Merit San Telmo cuenta con recepción las 24 horas, igualmente ofrece servicio de traslado y las instalaciones están adaptadas para personas con movilidad reducida. Igualmente, el hotel posee gimnasio, wifi y sala de reuniones.','C1087AAM, Adolfo Alsina 801, C1087AAM Buenos Aires, Argentina','+54 11 5280-9108',3,'2019-09-10 05:03:43','2019-09-10 07:54:11'),(6,'Krystal Urban Guadalajara','https://media-cdn.tripadvisor.com/media/photo-s/0e/99/b4/5a/entrada-principal.jpg','El Krystal Urban Guadalajara se ubica en plena zona comercial y financiera de Guadalajara, es un alojamiento de cuatro estrellas con una arquitectura imponente y firme, ideal para todo tipo de organización de eventos y negocios, frente al Centro Magno. Dispone de 140 habitaciones que incluyen entre sus comodidades TV de pantalla plana, baño privado, artículos de tocador, secador de cabello, terraza, aire acondicionado, plancha y tabla de planchar. La recepción del Krystal Urban Guadalajara  opera las 24 horas y entre las comodidas que ofrece se incluyen wifi gratuito, servicio de lavandería y centro de negocios. Asimismo, cuenta con un sala fitness. El alojamiento ofrece desayuno buffet todas las mañanas con un menú variado, y también alberga un restaurante, cafetería y bar o salón lounge con platos y bebidas para todos los gustos','Calle Manuel López Cotilla 2077, Arcos Vallarta, 44130 Guadalajara, Jal., México','+52 33 3679 3780',4,'2019-09-10 05:06:27','2019-09-10 07:54:35'),(7,'Hilton Playa del Carmen','https://cdn.forbes.com.mx/2019/03/Hilton-Playa-del-Carmen-Pareja_Caminando_Alberca4-640x360.jpg','Hilton Playa del Carmen es un hotel con calificación de 5 estrellas ganador del galardón Four Diamonds, gracias a su calidad de servicios e instalaciones de primera clase. El alojamiento es solo para adultos y se ubica en la Riviera Maya, frente al mar. El hotel cuenta con 507 amplias suites de lujo con vista hacia el jardín o el mar, equipadas con televisor pantalla plana, minibar, sala de estar y baños con toques en mármol que vienen con bañera. Algunas de ellas cuentan con terraza privado con piscina y bar. Hilton Playa del Carmen tiene tres piscinas al aire libre, cancha de tenis, gimnasio y wifi. Igualmente, ofrece clases de buceo, animación diaria y cabañas de playa con personal de mayordomos. La recepción labora las 24 horas. El hotel ofrece desayunos buffet gratuitos y alberga siete restaurantes cuya especialidad es la comida mexicana e internacional.','Av Constituyentes 2, Gonzalo Guerrero, 77710 Playa del Carmen, Q.R., México','+52 984 877 2900',5,'2019-09-10 05:07:47','2019-09-10 07:55:00'),(8,'Iguazu Urban Hotel','https://media-cdn.tripadvisor.com/media/photo-s/0f/1f/c9/0a/iguazu-urban-hotel-express.jpg','En pleno corazón de Puerto Iguazú, localidad situada a 17 kilómetros de una de las Siete maravillas naturales del mundo, las Cataratas del Iguazú, se encuentra el Iguazú Urban Hotel, un alojamiento ideal para el turismo y el confort. El alojamiento posee 14 habitaciones, las cuales disponen de televisor LED, aire acondicionado, baños privados con ducha y artículos de aseo personal. Igualmente cuentan con balcón o patio. El  Iguazú Urban Hotel  ofrece recepción las 24 horas, información turística, asistencia para realizar excursiones, servicio de lavandería y conserjería. Igualmente, sus instalaciones disponen de wifi gratuito, piscina al aire libre y jardines. Todas las mañanas es preparado el desayuno y servido en las habitaciones que lo soliciten con anterioridad, su especialidad son los desayunos tradicionales. Igualmente, a su alrededor hay varios restaurantes, panaderías y supermercados.','Puerto Iguazú Misiones AR, Fray Luis Beltrán 290, N3370 DLF, Argentina','+54 3757 42-0523',4,'2019-09-10 05:09:20','2019-09-10 07:56:38'),(9,'El Rialta Aparthotel','http://www.rialta.net/aparthotel/wp-content/uploads/2012/08/galeria-1.jpg','En las afueras de la capital coruñesa se encuentra un apartahotel ideal para estudiantes y empresarios. El Rialta Aparthotel se ubica en la zona residencial de la Zapateira. Sus instalaciones poseen un complejo deportivo con piscina, gimnasio y pistas polideportivas. El alojamiento posee apartamento doble e individuales, equipados con calefacción, televisión, teléfono, baño, zona de dormitorio, baño, comedor, menaje, ducha, área de descanso, escritorio y televisión de pantalla plana. El Rialta Aparthotel tiene recepción las 24 horas y dispones de wifi gratuito, lavandería, servicio médico y parking. Asimismo, hay instalaciones de ocio como gimnasio, sauna, tenis y jardines. Todos los apartamentos tienen un área de cocina equipada con nevera/heladera, cocina eléctrica, microondas y utensilios de cocina. Del mismo, dentro del alojamiento hay restaurantes, cafetería y bar que ofrecen alimentos variados.','A Zapateira Rua de Laxe, 122-124, 15174 Culleredo, A Coruña, España','+34 981 17 95 00',4,'2019-09-10 05:10:23','2019-09-10 07:58:56'),(10,'Vallatarsol Hotel','https://imgcy.trivago.com/c_limit,d_dummy.jpeg,f_auto,h_1300,q_auto,w_2000/itemimages/43/05/43057_v2.jpeg','En la zona hotelera al norte del Puerto Vallarta se encuentra el Vallatarsol Hotel. Un alojamiento ubicado a tan solo cuatro minutos a pie de la costa, considerado como un hotel con tradición, confort y accesibilidad para la familia que desee vacacionar. Las ampliadas habitaciones se encuentran equipadas con TV por cable, aire acondicionado, escritorio, baño adaptado para personas con movilidad reducida y productos de higiene personal. Los servicios principales del Vallatarsol Hotel son wifi gratuito, parking, caja de seguridad y sala de reuniones. Igualmente dispone de piscina al aire libre rodeada de jardines, plantas y coloridas flores; asimismo de terraza y servicios de spa. El especial del restaurante son los platos internacionales. Del mismo modo, alrededor del alojamiento se encuentran cantidad de restaurantes, cafeterías y puestos de comida rápida.','Niza 139, Díaz Ordaz, 48310 Puerto Vallarta, Jal., México','+52 322 224 2377',3,'2019-09-10 05:11:26','2019-09-10 07:57:42'),(11,'Sercotel San Juan de Los Reyes Hotel','https://i.travelapi.com/hotels/1000000/970000/970000/969926/9d0a15b5_b.jpg','En pleno corazón histórico de la ciudad de Toledo se encuentra el Sercotel San Juan de Los Reyes Hotel. Un hotel de 4 estrellas cuyo edificio está catalogado como Bien de Interés Cultural al mantener algunas de sus estructuras neo-mudéjar del siglo XIX. El hotel dispone de 35 habitaciones decoradas con un estilo clásico, todas disponen de bañera con hidromasaje, secador de cabello, minibar, televisión por satélite, aire acondicionado, calentador y línea de teléfono. El alojamiento ofrece wifi en todo el establecimiento al igual que recepción las 24 horas. Asimismo, ofrece servicios de lavandería, parking, y traslado al aeropuerto. Todas las mañanas el elegante restaurante sirve un desayuno buffet, y para el almuerzo y cena sirven platos de cocina tradicional castellana. Asimismo, hay un bar en medio de la terraza.','Calle de los Reyes Católicos, 5, 45002 Toledo, España','+34 925 28 35 35',4,'2019-09-10 05:12:44','2019-09-10 07:58:10');
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_09_09_205333_create_table_hotels',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Heilner Garcia','neverhags@gmail.com',NULL,'$2y$10$eD311FZUlhXDRjXoJR0CZOaCRLrYYGybsmftUdWQQhlaoXwgTcS1i',NULL,'2019-09-10 04:36:55','2019-09-10 04:36:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-10  1:29:29

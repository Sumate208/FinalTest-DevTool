-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: finaltest-devtool
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `year` varchar(45) NOT NULL,
  `round` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `main` varchar(255) NOT NULL,
  `opendate` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'การจัดการความปลอดภัยอาหาร','แผน ก2 | ช่วงเวลาเรียน : ปกติ | เฉพาะ :','1/2565','รอบ 1 - รับสมัครประจำภาคการศึกษา','โครงการ รับเข้า 1/2565 คณะอุตสาหกรรมอาหาร (โครงการแววนวัตกร)','อุตสาหกรรมอาหาร','การจัดการความปลอดภัยอาหาร / Food Safety Management','22 กุมภาพันธ์ 2022 - 10 มิถุนายน 2022'),(2,'การจัดการความปลอดภัยอาหาร','แผน ก2 | ช่วงเวลาเรียน : ปกติ | เฉพาะ :','1/2565','รอบ 1 - รับสมัครประจำภาคการศึกษา','โครงการ รับเข้า 1/2565 คณะอุตสาหกรรมอาหาร','อุตสาหกรรมอาหาร','การจัดการความปลอดภัยอาหาร / Food Safety Management','23 กุมภาพันธ์ 2022 - 10 มิถุนายน 2022'),(3,'การบริหารการศึกษา','แผน ก2 | ช่วงเวลาเรียน : พิเศษ | เฉพาะ :','1/2565','รอบ 1 - รับสมัครแบบเลือกเข้าศึกษาในภาคการศึกษาที่ต้องการ','โครงการ รับเข้า 1/2565 คณะครุศาสตร์อุตสาหกรรมและเทคโนโลยี','ครุศาสตร์อุตสาหกรรมและเทคโนโลยี','การบริหารการศึกษา / Educational Administration','4 มีนาคม 2022 - 10 มิถุนายน 2022'),(4,'การวางแผนชุมชนเมืองและสภาพแวดล้อม','แผน ก1 | ช่วงเวลาเรียน : ปกติ | เฉพาะ :','1/2565','รอบ 1 - รับสมัครประจำภาคการศึกษา','โครงการ รับเข้า 1/2565 คณะสถาปัตยกรรมศาสตร์','สถาปัตยกรรม ศิลปะและการออกแบบ','การวางแผนชุมชนเมืองและสภาพแวดล้อม / Urban and Environmental Planning','24 กุมภาพันธ์ 2022 - 31 พฤษภาคม 2022'),(5,'การสื่อสารและวิทยาการสารสนเทศทางการเกษตร (พหุวิทยาการ)','แผน ข | ช่วงเวลาเรียน : ปกติ | เฉพาะ :','1/2565','รอบ 1 - รับสมัครแบบเลือกเข้าศึกษาในภาคการศึกษาที่ต้องการ','โครงการ รับเข้า 1/2565 คณะเทคโนโลยีการเกษตร','เทคโนโลยีการเกษตร','การสื่อสารและวิทยาการสารสนเทศทางการเกษตร (พหุวิทยาการ) / สาขาวิชาเทคโนโลยีการเพาะเลี้ยงสัตว์น้ำและการจัดการทรัพยากรทางน้ำ','31 มีนาคม 2022 - 8 มิถุนายน 2022'),(6,'เคมีประยุกต์','แผน ก2 | ช่วงเวลาเรียน : ปกติ | เฉพาะ :','1/2565','รอบ 1 - รับสมัครประจำภาคการศึกษา','โครงการ รับเข้าเทอม 1/2565 คณะวิทยาศาสตร์ โครงการแววนวัตกร','วิทยาศาสตร์','เคมีประยุกต์ / Applied Chemistry','23 กุมภาพันธ์ 2022 - 27 พฤษภาคม 2022'),(7,'เทคโนโลยีสารสนเทศ','แผน ก1 | ช่วงเวลาเรียน : ปกติ | เฉพาะ :','2/2565','รอบ 1 - รับสมัครประจำภาคการศึกษา','โครงการ รับเข้า 2/2565 (รอบที่ 1) คณะเทคโนโลยีสารสนเทศ','เทคโนโลยีสารสนเทศ','เทคโนโลยีสารสนเทศ / Information Technology','1 สิงหาคม 2022 - 9 กันยายน 2022');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-10 17:28:38

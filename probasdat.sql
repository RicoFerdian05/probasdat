-- MariaDB dump 10.17  Distrib 10.4.14-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: probasdat
-- ------------------------------------------------------
-- Server version	10.4.14-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `probasdat`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `probasdat` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `probasdat`;

--
-- Table structure for table `ekspedisi`
--

DROP TABLE IF EXISTS `ekspedisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ekspedisi` (
  `kdEkspedisi` varchar(255) NOT NULL,
  `namaEkspedisi` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kdEkspedisi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekspedisi`
--

LOCK TABLES `ekspedisi` WRITE;
/*!40000 ALTER TABLE `ekspedisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ekspedisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kategori`
--

DROP TABLE IF EXISTS `kategori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kategori` (
  `kdKategori` varchar(255) NOT NULL,
  `namaKategori` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kdKategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kategori`
--

LOCK TABLES `kategori` WRITE;
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pegawai`
--

DROP TABLE IF EXISTS `pegawai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pegawai` (
  `kdPegawai` varchar(255) NOT NULL,
  `namaPegawai` varchar(255) DEFAULT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `tglLahir` date DEFAULT NULL,
  `tglRekrut` date DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kodePos` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `atasan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kdPegawai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pegawai`
--

LOCK TABLES `pegawai` WRITE;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembayaran`
--

DROP TABLE IF EXISTS `pembayaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembayaran` (
  `kdBayar` varchar(255) NOT NULL,
  `tglBayar` date DEFAULT NULL,
  `caraBayar` varchar(255) DEFAULT NULL,
  `mediaBayar` varchar(255) DEFAULT NULL,
  `jumlahBayar` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`kdBayar`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembayaran`
--

LOCK TABLES `pembayaran` WRITE;
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pembeli`
--

DROP TABLE IF EXISTS `pembeli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pembeli` (
  `kdPembeli` varchar(255) NOT NULL,
  `namaPembeli` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kodePos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kdPembeli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pembeli`
--

LOCK TABLES `pembeli` WRITE;
/*!40000 ALTER TABLE `pembeli` DISABLE KEYS */;
/*!40000 ALTER TABLE `pembeli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produk`
--

DROP TABLE IF EXISTS `produk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produk` (
  `kdProduk` varchar(255) NOT NULL,
  `namaproduk` varchar(255) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `hargaPokok` decimal(10,2) DEFAULT NULL,
  `hargaJual` decimal(10,2) DEFAULT NULL,
  `diskon` decimal(10,2) DEFAULT NULL,
  `diskontinu` varchar(255) DEFAULT NULL,
  `kdProdukDeskripsi` varchar(255) NOT NULL,
  `kdSupplier` varchar(255) NOT NULL,
  `kdKategori` varchar(255) NOT NULL,
  PRIMARY KEY (`kdProduk`),
  KEY `kdProdukDeskripsi` (`kdProdukDeskripsi`),
  KEY `kdSupplier` (`kdSupplier`),
  KEY `kdKategori` (`kdKategori`),
  CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`kdProdukDeskripsi`) REFERENCES `produkdeskripsi` (`kdProdukDeskripsi`),
  CONSTRAINT `produk_ibfk_2` FOREIGN KEY (`kdProdukDeskripsi`) REFERENCES `produkdeskripsi` (`kdProdukDeskripsi`),
  CONSTRAINT `produk_ibfk_3` FOREIGN KEY (`kdSupplier`) REFERENCES `supplier` (`kdSupplier`),
  CONSTRAINT `produk_ibfk_4` FOREIGN KEY (`kdKategori`) REFERENCES `kategori` (`kdKategori`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produk`
--

LOCK TABLES `produk` WRITE;
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produkdeskripsi`
--

DROP TABLE IF EXISTS `produkdeskripsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produkdeskripsi` (
  `kdProdukDeskripsi` varchar(255) NOT NULL,
  `teksDeskripsi` varchar(255) DEFAULT NULL,
  `htmlDeskripsi` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kdProdukDeskripsi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produkdeskripsi`
--

LOCK TABLES `produkdeskripsi` WRITE;
/*!40000 ALTER TABLE `produkdeskripsi` DISABLE KEYS */;
/*!40000 ALTER TABLE `produkdeskripsi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supplier` (
  `kdSupplier` varchar(255) NOT NULL,
  `namaSupplier` varchar(255) DEFAULT NULL,
  `namaKontak` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `provinsi` varchar(255) DEFAULT NULL,
  `kodePos` varchar(255) DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kdSupplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksi`
--

DROP TABLE IF EXISTS `transaksi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksi` (
  `kdTransaksi` varchar(255) NOT NULL,
  `tglTransaksi` date DEFAULT NULL,
  `tglKirim` date DEFAULT NULL,
  `alamatKirim` varchar(255) DEFAULT NULL,
  `kotaKirim` varchar(255) DEFAULT NULL,
  `provinsiKirim` varchar(255) DEFAULT NULL,
  `kodePosKirim` varchar(255) DEFAULT NULL,
  `berat` varchar(255) DEFAULT NULL,
  `resi` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `kdPegawai` varchar(255) NOT NULL,
  `kdEkspedisi` varchar(255) NOT NULL,
  `kdBayar` varchar(255) NOT NULL,
  `kdPembeli` varchar(255) NOT NULL,
  PRIMARY KEY (`kdTransaksi`),
  KEY `kdPegawai` (`kdPegawai`),
  KEY `kdEkspedisi` (`kdEkspedisi`),
  KEY `kdBayar` (`kdBayar`),
  KEY `kdPembeli` (`kdPembeli`),
  CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kdPegawai`) REFERENCES `pegawai` (`kdPegawai`),
  CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`kdPegawai`) REFERENCES `pegawai` (`kdPegawai`),
  CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`kdEkspedisi`) REFERENCES `ekspedisi` (`kdEkspedisi`),
  CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`kdBayar`) REFERENCES `pembayaran` (`kdBayar`),
  CONSTRAINT `transaksi_ibfk_5` FOREIGN KEY (`kdPembeli`) REFERENCES `pembeli` (`kdPembeli`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksi`
--

LOCK TABLES `transaksi` WRITE;
/*!40000 ALTER TABLE `transaksi` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksidetail`
--

DROP TABLE IF EXISTS `transaksidetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksidetail` (
  `kdProduk` varchar(255) NOT NULL,
  `kdTransaksi` varchar(255) NOT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `hargaBeli` decimal(10,2) DEFAULT NULL,
  KEY `kdProduk` (`kdProduk`),
  KEY `kdTransaksi` (`kdTransaksi`),
  CONSTRAINT `transaksidetail_ibfk_1` FOREIGN KEY (`kdProduk`) REFERENCES `produk` (`kdProduk`),
  CONSTRAINT `transaksidetail_ibfk_2` FOREIGN KEY (`kdTransaksi`) REFERENCES `transaksi` (`kdTransaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksidetail`
--

LOCK TABLES `transaksidetail` WRITE;
/*!40000 ALTER TABLE `transaksidetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksidetail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-13  1:20:21

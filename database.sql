/*
SQLyog Ultimate v8.55 
MySQL - 5.5.5-10.4.17-MariaDB : Database - luxury_florist
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`luxury_florist` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `luxury_florist`;

/*Table structure for table `biodata` */

DROP TABLE IF EXISTS `biodata`;

CREATE TABLE `biodata` (
  `id_biodata` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `provinsi_id` int(11) DEFAULT NULL,
  `kota_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_biodata`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

/*Data for the table `biodata` */

insert  into `biodata`(`id_biodata`,`user_id`,`alamat`,`no_hp`,`provinsi_id`,`kota_id`) values (8,5,'cengkeh','79875687',13,1303),(9,11,'padang','968767',13,1371),(10,12,NULL,NULL,NULL,NULL),(11,13,'cengkeh','09876545',13,1371),(12,14,NULL,NULL,NULL,NULL),(13,15,NULL,NULL,NULL,NULL),(14,16,NULL,NULL,NULL,NULL),(15,17,'padang','078786756',13,1371),(16,18,'veteran 16  bc','123456789012',13,1371);

/*Table structure for table `foto_lain_produk` */

DROP TABLE IF EXISTS `foto_lain_produk`;

CREATE TABLE `foto_lain_produk` (
  `id_foto_lain` int(11) NOT NULL AUTO_INCREMENT,
  `foto_lain` text NOT NULL,
  `produk_id` int(11) NOT NULL,
  PRIMARY KEY (`id_foto_lain`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

/*Data for the table `foto_lain_produk` */

insert  into `foto_lain_produk`(`id_foto_lain`,`foto_lain`,`produk_id`) values (32,'lingkaran full.jpg',29),(33,'standing .jpg',29),(34,'standing flower.jpg',29),(35,'WhatsApp Image 2022-07-23 at 12.51.40 (1).jpeg',30),(36,'WhatsApp Image 2022-08-19 at 22.24.34.jpeg',30),(37,'WhatsApp Image 2022-08-19 at 22.24.35.jpeg',30),(38,'WhatsApp Image 2022-08-19 at 15.51.28.jpeg',31),(39,'WhatsApp Image 2022-08-19 at 15.51.45.jpeg',31),(40,'WhatsApp Image 2022-07-23 at 12.51.39.jpeg',32),(41,'WhatsApp Image 2022-08-19 at 15.52.10.jpeg',32),(42,'WhatsApp Image 2022-08-19 at 22.24.32.jpeg',32),(43,'krans.webp',33),(44,'WhatsApp Image 2022-07-23 at 18.21.25 (1).jpeg',33),(45,'WhatsApp Image 2022-07-23 at 18.21.25.jpeg',33),(46,'standing .jpg',34),(47,'standing flower.jpg',34),(48,'standing.jpeg',34);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`) values (13,'papan bunga lingkaran'),(14,'Papan Karangan Bunga Persegi/Full Bunga'),(15,'Papan Karangan Bunga Persegi'),(16,'papan bunga lingkaran/full bunga'),(17,'karangan bunga krans'),(18,'Karangan Bunga Standing Flower');

/*Table structure for table `keranjang` */

DROP TABLE IF EXISTS `keranjang`;

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `tanggal_pesan` varchar(30) DEFAULT NULL,
  `tanggal_pengiriman` varchar(30) DEFAULT NULL,
  `tanggal_pembayaran` varchar(30) DEFAULT NULL,
  `bukti_pembayaran` text DEFAULT NULL,
  `lama_penyewaan` int(11) DEFAULT NULL,
  `tanggal_penyewaan` varchar(30) DEFAULT NULL,
  `pengembalian` varchar(25) DEFAULT NULL,
  `kurir_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

/*Data for the table `keranjang` */

insert  into `keranjang`(`id_keranjang`,`user_id`,`status`,`tanggal_pesan`,`tanggal_pengiriman`,`tanggal_pembayaran`,`bukti_pembayaran`,`lama_penyewaan`,`tanggal_penyewaan`,`pengembalian`,`kurir_id`) values (37,17,'Dikembalikan','2022-08-24 04:23:17','2022-08-24 04:24:59','2022-08-24 04:24:42','1661333082WhatsApp Image 2022-07-23 at 18.39.55.jpeg',1,'2022-08-24','2022-08-24 04:25:43',1),(38,17,'Dikembalikan','2022-08-25 06:40:32','2022-08-25 06:41:22','2022-08-25 06:40:58','1661384458WhatsApp Image 2022-07-23 at 18.39.55.jpeg',2,'2022-08-25','2022-08-25 06:42:00',1),(39,17,'Pengiriman','2022-08-25 08:58:28','2022-08-25 08:59:07','2022-08-25 08:58:48','1661392728WhatsApp Image 2022-07-23 at 18.39.55.jpeg',1,'2022-08-26',NULL,1),(40,17,'Dikembalikan','2022-08-25 02:29:57','2022-08-25 02:32:23','2022-08-25 02:30:23','1661412623WhatsApp Image 2022-07-23 at 18.39.55.jpeg',1,'2022-08-25','2022-08-25 02:40:47',1),(41,17,'Lunas','2022-08-25 08:28:47',NULL,'2022-08-25 08:29:32','1661434172WhatsApp Image 2022-07-23 at 18.39.55.jpeg',3,'2022-08-25',NULL,1),(42,18,'Lunas','2022-08-25 09:08:50','2022-08-28 02:26:00','2022-08-25 09:09:04','16614365442fdeb4006aa9856a8157123227d1d6a2.jpg',2,'2022-08-25','2022-08-28 02:30:13',0);

/*Table structure for table `keranjang_produk` */

DROP TABLE IF EXISTS `keranjang_produk`;

CREATE TABLE `keranjang_produk` (
  `produk_keranjang_id` int(11) NOT NULL AUTO_INCREMENT,
  `keranjang_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_keranjang` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  PRIMARY KEY (`produk_keranjang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4;

/*Data for the table `keranjang_produk` */

insert  into `keranjang_produk`(`produk_keranjang_id`,`keranjang_id`,`produk_id`,`jumlah`,`harga_keranjang`,`keterangan`) values (51,37,30,2,200000,'happy semprotulation anita\r\nsoon to be S.Kom'),(52,38,30,1,200000,'happy semprotulation\r\nnana\r\nsoon to be S.Pd'),(53,39,30,1,200000,'okujhgfdsa'),(54,40,30,4,200000,'Happy Semprotulaiton\r\naan nabila\r\nsoon to be S.Kom'),(55,41,30,1,200000,''),(56,42,34,2,250000,'eee');

/*Table structure for table `kurir` */

DROP TABLE IF EXISTS `kurir`;

CREATE TABLE `kurir` (
  `id_kurir` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kurir` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_kurir`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kurir` */

insert  into `kurir`(`id_kurir`,`nama_kurir`) values (1,'Kurir 12');

/*Table structure for table `produk` */

DROP TABLE IF EXISTS `produk`;

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `kategori_id` int(11) NOT NULL,
  `harga` double NOT NULL,
  `foto_produk` text NOT NULL,
  `status_produk` varchar(20) NOT NULL,
  PRIMARY KEY (`id_produk`),
  KEY `FK_produk` (`kategori_id`),
  CONSTRAINT `FK_produk` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;

/*Data for the table `produk` */

insert  into `produk`(`id_produk`,`nama_produk`,`deskripsi`,`qty`,`kategori_id`,`harga`,`foto_produk`,`status_produk`) values (29,'papan karangan bunga','<p>RGDTJGYUKUI</p>',40,13,170000,'1661306368lingkaran full bunga.webp','Aktif'),(30,'karangan bunga lingkaran','<p>Happy Semprotulation&nbsp; Ani</p><p>Sonn to be S.Kom</p>',24,13,200000,'1661332814WhatsApp Image 2022-08-19 at 22.24.34 (1).jpeg','Aktif'),(31,'Papan karangan Bunga Persegi','<p>Happy Wedding</p><p>dio &amp; nana</p><p>from UKM Senja</p>',30,14,250000,'1661382373WhatsApp Image 2022-08-19 at 15.51.45.jpeg','Aktif'),(32,'Papan karangan Bunga Persegi','<p>Grand Opening</p><p>Risa Laundry</p>',40,15,170000,'1661382589WhatsApp Image 2022-07-23 at 18.21.26.jpeg','Aktif'),(33,'karangan bunga krans','<p>Turut Berduka Cita</p><p>atas meninggal Bapak M Yusuf&nbsp; S.Pd</p><p><br></p>',35,17,300000,'1661383415krans.jpg','Aktif'),(34,'karangan bunga standing flower','<p>Turut Berduka Cita&nbsp;</p><p>Atas Meninggalnya Ibu Fatma S.kom, M.Kom</p><p>from UKM Mapala</p>',43,18,250000,'1661383708standing flower.jpg','Aktif');

/*Table structure for table `tb_kota_kabupaten` */

DROP TABLE IF EXISTS `tb_kota_kabupaten`;

CREATE TABLE `tb_kota_kabupaten` (
  `id` int(4) NOT NULL,
  `id_provinsi` int(4) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `regencies_province_id_index` (`id_provinsi`),
  CONSTRAINT `tb_kota_kabupaten_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `tb_provinsi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tb_kota_kabupaten` */

insert  into `tb_kota_kabupaten`(`id`,`id_provinsi`,`nama`) values (1101,11,'KABUPATEN SIMEULUE'),(1102,11,'KABUPATEN ACEH SINGKIL'),(1103,11,'KABUPATEN ACEH SELATAN'),(1104,11,'KABUPATEN ACEH TENGGARA'),(1105,11,'KABUPATEN ACEH TIMUR'),(1106,11,'KABUPATEN ACEH TENGAH'),(1107,11,'KABUPATEN ACEH BARAT'),(1108,11,'KABUPATEN ACEH BESAR'),(1109,11,'KABUPATEN PIDIE'),(1110,11,'KABUPATEN BIREUEN'),(1111,11,'KABUPATEN ACEH UTARA'),(1112,11,'KABUPATEN ACEH BARAT DAYA'),(1113,11,'KABUPATEN GAYO LUES'),(1114,11,'KABUPATEN ACEH TAMIANG'),(1115,11,'KABUPATEN NAGAN RAYA'),(1116,11,'KABUPATEN ACEH JAYA'),(1117,11,'KABUPATEN BENER MERIAH'),(1118,11,'KABUPATEN PIDIE JAYA'),(1171,11,'KOTA BANDA ACEH'),(1172,11,'KOTA SABANG'),(1173,11,'KOTA LANGSA'),(1174,11,'KOTA LHOKSEUMAWE'),(1175,11,'KOTA SUBULUSSALAM'),(1201,12,'KABUPATEN NIAS'),(1202,12,'KABUPATEN MANDAILING NATAL'),(1203,12,'KABUPATEN TAPANULI SELATAN'),(1204,12,'KABUPATEN TAPANULI TENGAH'),(1205,12,'KABUPATEN TAPANULI UTARA'),(1206,12,'KABUPATEN TOBA SAMOSIR'),(1207,12,'KABUPATEN LABUHAN BATU'),(1208,12,'KABUPATEN ASAHAN'),(1209,12,'KABUPATEN SIMALUNGUN'),(1210,12,'KABUPATEN DAIRI'),(1211,12,'KABUPATEN KARO'),(1212,12,'KABUPATEN DELI SERDANG'),(1213,12,'KABUPATEN LANGKAT'),(1214,12,'KABUPATEN NIAS SELATAN'),(1215,12,'KABUPATEN HUMBANG HASUNDUTAN'),(1216,12,'KABUPATEN PAKPAK BHARAT'),(1217,12,'KABUPATEN SAMOSIR'),(1218,12,'KABUPATEN SERDANG BEDAGAI'),(1219,12,'KABUPATEN BATU BARA'),(1220,12,'KABUPATEN PADANG LAWAS UTARA'),(1221,12,'KABUPATEN PADANG LAWAS'),(1222,12,'KABUPATEN LABUHAN BATU SELATAN'),(1223,12,'KABUPATEN LABUHAN BATU UTARA'),(1224,12,'KABUPATEN NIAS UTARA'),(1225,12,'KABUPATEN NIAS BARAT'),(1271,12,'KOTA SIBOLGA'),(1272,12,'KOTA TANJUNG BALAI'),(1273,12,'KOTA PEMATANG SIANTAR'),(1274,12,'KOTA TEBING TINGGI'),(1275,12,'KOTA MEDAN'),(1276,12,'KOTA BINJAI'),(1277,12,'KOTA PADANGSIDIMPUAN'),(1278,12,'KOTA GUNUNGSITOLI'),(1301,13,'KABUPATEN KEPULAUAN MENTAWAI'),(1302,13,'KABUPATEN PESISIR SELATAN'),(1303,13,'KABUPATEN SOLOK'),(1304,13,'KABUPATEN SIJUNJUNG'),(1305,13,'KABUPATEN TANAH DATAR'),(1306,13,'KABUPATEN PADANG PARIAMAN'),(1307,13,'KABUPATEN AGAM'),(1308,13,'KABUPATEN LIMA PULUH KOTA'),(1309,13,'KABUPATEN PASAMAN'),(1310,13,'KABUPATEN SOLOK SELATAN'),(1311,13,'KABUPATEN DHARMASRAYA'),(1312,13,'KABUPATEN PASAMAN BARAT'),(1371,13,'KOTA PADANG'),(1372,13,'KOTA SOLOK'),(1373,13,'KOTA SAWAH LUNTO'),(1374,13,'KOTA PADANG PANJANG'),(1375,13,'KOTA BUKITTINGGI'),(1376,13,'KOTA PAYAKUMBUH'),(1377,13,'KOTA PARIAMAN'),(1401,14,'KABUPATEN KUANTAN SINGINGI'),(1402,14,'KABUPATEN INDRAGIRI HULU'),(1403,14,'KABUPATEN INDRAGIRI HILIR'),(1404,14,'KABUPATEN PELALAWAN'),(1405,14,'KABUPATEN S I A K'),(1406,14,'KABUPATEN KAMPAR'),(1407,14,'KABUPATEN ROKAN HULU'),(1408,14,'KABUPATEN BENGKALIS'),(1409,14,'KABUPATEN ROKAN HILIR'),(1410,14,'KABUPATEN KEPULAUAN MERANTI'),(1471,14,'KOTA PEKANBARU'),(1473,14,'KOTA D U M A I'),(1501,15,'KABUPATEN KERINCI'),(1502,15,'KABUPATEN MERANGIN'),(1503,15,'KABUPATEN SAROLANGUN'),(1504,15,'KABUPATEN BATANG HARI'),(1505,15,'KABUPATEN MUARO JAMBI'),(1506,15,'KABUPATEN TANJUNG JABUNG TIMUR'),(1507,15,'KABUPATEN TANJUNG JABUNG BARAT'),(1508,15,'KABUPATEN TEBO'),(1509,15,'KABUPATEN BUNGO'),(1571,15,'KOTA JAMBI'),(1572,15,'KOTA SUNGAI PENUH'),(1601,16,'KABUPATEN OGAN KOMERING ULU'),(1602,16,'KABUPATEN OGAN KOMERING ILIR'),(1603,16,'KABUPATEN MUARA ENIM'),(1604,16,'KABUPATEN LAHAT'),(1605,16,'KABUPATEN MUSI RAWAS'),(1606,16,'KABUPATEN MUSI BANYUASIN'),(1607,16,'KABUPATEN BANYU ASIN'),(1608,16,'KABUPATEN OGAN KOMERING ULU SELATAN'),(1609,16,'KABUPATEN OGAN KOMERING ULU TIMUR'),(1610,16,'KABUPATEN OGAN ILIR'),(1611,16,'KABUPATEN EMPAT LAWANG'),(1612,16,'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),(1613,16,'KABUPATEN MUSI RAWAS UTARA'),(1671,16,'KOTA PALEMBANG'),(1672,16,'KOTA PRABUMULIH'),(1673,16,'KOTA PAGAR ALAM'),(1674,16,'KOTA LUBUKLINGGAU'),(1701,17,'KABUPATEN BENGKULU SELATAN'),(1702,17,'KABUPATEN REJANG LEBONG'),(1703,17,'KABUPATEN BENGKULU UTARA'),(1704,17,'KABUPATEN KAUR'),(1705,17,'KABUPATEN SELUMA'),(1706,17,'KABUPATEN MUKOMUKO'),(1707,17,'KABUPATEN LEBONG'),(1708,17,'KABUPATEN KEPAHIANG'),(1709,17,'KABUPATEN BENGKULU TENGAH'),(1771,17,'KOTA BENGKULU'),(1801,18,'KABUPATEN LAMPUNG BARAT'),(1802,18,'KABUPATEN TANGGAMUS'),(1803,18,'KABUPATEN LAMPUNG SELATAN'),(1804,18,'KABUPATEN LAMPUNG TIMUR'),(1805,18,'KABUPATEN LAMPUNG TENGAH'),(1806,18,'KABUPATEN LAMPUNG UTARA'),(1807,18,'KABUPATEN WAY KANAN'),(1808,18,'KABUPATEN TULANGBAWANG'),(1809,18,'KABUPATEN PESAWARAN'),(1810,18,'KABUPATEN PRINGSEWU'),(1811,18,'KABUPATEN MESUJI'),(1812,18,'KABUPATEN TULANG BAWANG BARAT'),(1813,18,'KABUPATEN PESISIR BARAT'),(1871,18,'KOTA BANDAR LAMPUNG'),(1872,18,'KOTA METRO'),(1901,19,'KABUPATEN BANGKA'),(1902,19,'KABUPATEN BELITUNG'),(1903,19,'KABUPATEN BANGKA BARAT'),(1904,19,'KABUPATEN BANGKA TENGAH'),(1905,19,'KABUPATEN BANGKA SELATAN'),(1906,19,'KABUPATEN BELITUNG TIMUR'),(1971,19,'KOTA PANGKAL PINANG'),(2101,21,'KABUPATEN KARIMUN'),(2102,21,'KABUPATEN BINTAN'),(2103,21,'KABUPATEN NATUNA'),(2104,21,'KABUPATEN LINGGA'),(2105,21,'KABUPATEN KEPULAUAN ANAMBAS'),(2171,21,'KOTA B A T A M'),(2172,21,'KOTA TANJUNG PINANG'),(3101,31,'KABUPATEN KEPULAUAN SERIBU'),(3171,31,'KOTA JAKARTA SELATAN'),(3172,31,'KOTA JAKARTA TIMUR'),(3173,31,'KOTA JAKARTA PUSAT'),(3174,31,'KOTA JAKARTA BARAT'),(3175,31,'KOTA JAKARTA UTARA'),(3201,32,'KABUPATEN BOGOR'),(3202,32,'KABUPATEN SUKABUMI'),(3203,32,'KABUPATEN CIANJUR'),(3204,32,'KABUPATEN BANDUNG'),(3205,32,'KABUPATEN GARUT'),(3206,32,'KABUPATEN TASIKMALAYA'),(3207,32,'KABUPATEN CIAMIS'),(3208,32,'KABUPATEN KUNINGAN'),(3209,32,'KABUPATEN CIREBON'),(3210,32,'KABUPATEN MAJALENGKA'),(3211,32,'KABUPATEN SUMEDANG'),(3212,32,'KABUPATEN INDRAMAYU'),(3213,32,'KABUPATEN SUBANG'),(3214,32,'KABUPATEN PURWAKARTA'),(3215,32,'KABUPATEN KARAWANG'),(3216,32,'KABUPATEN BEKASI'),(3217,32,'KABUPATEN BANDUNG BARAT'),(3218,32,'KABUPATEN PANGANDARAN'),(3271,32,'KOTA BOGOR'),(3272,32,'KOTA SUKABUMI'),(3273,32,'KOTA BANDUNG'),(3274,32,'KOTA CIREBON'),(3275,32,'KOTA BEKASI'),(3276,32,'KOTA DEPOK'),(3277,32,'KOTA CIMAHI'),(3278,32,'KOTA TASIKMALAYA'),(3279,32,'KOTA BANJAR'),(3301,33,'KABUPATEN CILACAP'),(3302,33,'KABUPATEN BANYUMAS'),(3303,33,'KABUPATEN PURBALINGGA'),(3304,33,'KABUPATEN BANJARNEGARA'),(3305,33,'KABUPATEN KEBUMEN'),(3306,33,'KABUPATEN PURWOREJO'),(3307,33,'KABUPATEN WONOSOBO'),(3308,33,'KABUPATEN MAGELANG'),(3309,33,'KABUPATEN BOYOLALI'),(3310,33,'KABUPATEN KLATEN'),(3311,33,'KABUPATEN SUKOHARJO'),(3312,33,'KABUPATEN WONOGIRI'),(3313,33,'KABUPATEN KARANGANYAR'),(3314,33,'KABUPATEN SRAGEN'),(3315,33,'KABUPATEN GROBOGAN'),(3316,33,'KABUPATEN BLORA'),(3317,33,'KABUPATEN REMBANG'),(3318,33,'KABUPATEN PATI'),(3319,33,'KABUPATEN KUDUS'),(3320,33,'KABUPATEN JEPARA'),(3321,33,'KABUPATEN DEMAK'),(3322,33,'KABUPATEN SEMARANG'),(3323,33,'KABUPATEN TEMANGGUNG'),(3324,33,'KABUPATEN KENDAL'),(3325,33,'KABUPATEN BATANG'),(3326,33,'KABUPATEN PEKALONGAN'),(3327,33,'KABUPATEN PEMALANG'),(3328,33,'KABUPATEN TEGAL'),(3329,33,'KABUPATEN BREBES'),(3371,33,'KOTA MAGELANG'),(3372,33,'KOTA SURAKARTA'),(3373,33,'KOTA SALATIGA'),(3374,33,'KOTA SEMARANG'),(3375,33,'KOTA PEKALONGAN'),(3376,33,'KOTA TEGAL'),(3401,34,'KABUPATEN KULON PROGO'),(3402,34,'KABUPATEN BANTUL'),(3403,34,'KABUPATEN GUNUNG KIDUL'),(3404,34,'KABUPATEN SLEMAN'),(3471,34,'KOTA YOGYAKARTA'),(3501,35,'KABUPATEN PACITAN'),(3502,35,'KABUPATEN PONOROGO'),(3503,35,'KABUPATEN TRENGGALEK'),(3504,35,'KABUPATEN TULUNGAGUNG'),(3505,35,'KABUPATEN BLITAR'),(3506,35,'KABUPATEN KEDIRI'),(3507,35,'KABUPATEN MALANG'),(3508,35,'KABUPATEN LUMAJANG'),(3509,35,'KABUPATEN JEMBER'),(3510,35,'KABUPATEN BANYUWANGI'),(3511,35,'KABUPATEN BONDOWOSO'),(3512,35,'KABUPATEN SITUBONDO'),(3513,35,'KABUPATEN PROBOLINGGO'),(3514,35,'KABUPATEN PASURUAN'),(3515,35,'KABUPATEN SIDOARJO'),(3516,35,'KABUPATEN MOJOKERTO'),(3517,35,'KABUPATEN JOMBANG'),(3518,35,'KABUPATEN NGANJUK'),(3519,35,'KABUPATEN MADIUN'),(3520,35,'KABUPATEN MAGETAN'),(3521,35,'KABUPATEN NGAWI'),(3522,35,'KABUPATEN BOJONEGORO'),(3523,35,'KABUPATEN TUBAN'),(3524,35,'KABUPATEN LAMONGAN'),(3525,35,'KABUPATEN GRESIK'),(3526,35,'KABUPATEN BANGKALAN'),(3527,35,'KABUPATEN SAMPANG'),(3528,35,'KABUPATEN PAMEKASAN'),(3529,35,'KABUPATEN SUMENEP'),(3571,35,'KOTA KEDIRI'),(3572,35,'KOTA BLITAR'),(3573,35,'KOTA MALANG'),(3574,35,'KOTA PROBOLINGGO'),(3575,35,'KOTA PASURUAN'),(3576,35,'KOTA MOJOKERTO'),(3577,35,'KOTA MADIUN'),(3578,35,'KOTA SURABAYA'),(3579,35,'KOTA BATU'),(3601,36,'KABUPATEN PANDEGLANG'),(3602,36,'KABUPATEN LEBAK'),(3603,36,'KABUPATEN TANGERANG'),(3604,36,'KABUPATEN SERANG'),(3671,36,'KOTA TANGERANG'),(3672,36,'KOTA CILEGON'),(3673,36,'KOTA SERANG'),(3674,36,'KOTA TANGERANG SELATAN'),(5101,51,'KABUPATEN JEMBRANA'),(5102,51,'KABUPATEN TABANAN'),(5103,51,'KABUPATEN BADUNG'),(5104,51,'KABUPATEN GIANYAR'),(5105,51,'KABUPATEN KLUNGKUNG'),(5106,51,'KABUPATEN BANGLI'),(5107,51,'KABUPATEN KARANG ASEM'),(5108,51,'KABUPATEN BULELENG'),(5171,51,'KOTA DENPASAR'),(5201,52,'KABUPATEN LOMBOK BARAT'),(5202,52,'KABUPATEN LOMBOK TENGAH'),(5203,52,'KABUPATEN LOMBOK TIMUR'),(5204,52,'KABUPATEN SUMBAWA'),(5205,52,'KABUPATEN DOMPU'),(5206,52,'KABUPATEN BIMA'),(5207,52,'KABUPATEN SUMBAWA BARAT'),(5208,52,'KABUPATEN LOMBOK UTARA'),(5271,52,'KOTA MATARAM'),(5272,52,'KOTA BIMA'),(5301,53,'KABUPATEN SUMBA BARAT'),(5302,53,'KABUPATEN SUMBA TIMUR'),(5303,53,'KABUPATEN KUPANG'),(5304,53,'KABUPATEN TIMOR TENGAH SELATAN'),(5305,53,'KABUPATEN TIMOR TENGAH UTARA'),(5306,53,'KABUPATEN BELU'),(5307,53,'KABUPATEN ALOR'),(5308,53,'KABUPATEN LEMBATA'),(5309,53,'KABUPATEN FLORES TIMUR'),(5310,53,'KABUPATEN SIKKA'),(5311,53,'KABUPATEN ENDE'),(5312,53,'KABUPATEN NGADA'),(5313,53,'KABUPATEN MANGGARAI'),(5314,53,'KABUPATEN ROTE NDAO'),(5315,53,'KABUPATEN MANGGARAI BARAT'),(5316,53,'KABUPATEN SUMBA TENGAH'),(5317,53,'KABUPATEN SUMBA BARAT DAYA'),(5318,53,'KABUPATEN NAGEKEO'),(5319,53,'KABUPATEN MANGGARAI TIMUR'),(5320,53,'KABUPATEN SABU RAIJUA'),(5321,53,'KABUPATEN MALAKA'),(5371,53,'KOTA KUPANG'),(6101,61,'KABUPATEN SAMBAS'),(6102,61,'KABUPATEN BENGKAYANG'),(6103,61,'KABUPATEN LANDAK'),(6104,61,'KABUPATEN MEMPAWAH'),(6105,61,'KABUPATEN SANGGAU'),(6106,61,'KABUPATEN KETAPANG'),(6107,61,'KABUPATEN SINTANG'),(6108,61,'KABUPATEN KAPUAS HULU'),(6109,61,'KABUPATEN SEKADAU'),(6110,61,'KABUPATEN MELAWI'),(6111,61,'KABUPATEN KAYONG UTARA'),(6112,61,'KABUPATEN KUBU RAYA'),(6171,61,'KOTA PONTIANAK'),(6172,61,'KOTA SINGKAWANG'),(6201,62,'KABUPATEN KOTAWARINGIN BARAT'),(6202,62,'KABUPATEN KOTAWARINGIN TIMUR'),(6203,62,'KABUPATEN KAPUAS'),(6204,62,'KABUPATEN BARITO SELATAN'),(6205,62,'KABUPATEN BARITO UTARA'),(6206,62,'KABUPATEN SUKAMARA'),(6207,62,'KABUPATEN LAMANDAU'),(6208,62,'KABUPATEN SERUYAN'),(6209,62,'KABUPATEN KATINGAN'),(6210,62,'KABUPATEN PULANG PISAU'),(6211,62,'KABUPATEN GUNUNG MAS'),(6212,62,'KABUPATEN BARITO TIMUR'),(6213,62,'KABUPATEN MURUNG RAYA'),(6271,62,'KOTA PALANGKA RAYA'),(6301,63,'KABUPATEN TANAH LAUT'),(6302,63,'KABUPATEN KOTA BARU'),(6303,63,'KABUPATEN BANJAR'),(6304,63,'KABUPATEN BARITO KUALA'),(6305,63,'KABUPATEN TAPIN'),(6306,63,'KABUPATEN HULU SUNGAI SELATAN'),(6307,63,'KABUPATEN HULU SUNGAI TENGAH'),(6308,63,'KABUPATEN HULU SUNGAI UTARA'),(6309,63,'KABUPATEN TABALONG'),(6310,63,'KABUPATEN TANAH BUMBU'),(6311,63,'KABUPATEN BALANGAN'),(6371,63,'KOTA BANJARMASIN'),(6372,63,'KOTA BANJAR BARU'),(6401,64,'KABUPATEN PASER'),(6402,64,'KABUPATEN KUTAI BARAT'),(6403,64,'KABUPATEN KUTAI KARTANEGARA'),(6404,64,'KABUPATEN KUTAI TIMUR'),(6405,64,'KABUPATEN BERAU'),(6409,64,'KABUPATEN PENAJAM PASER UTARA'),(6411,64,'KABUPATEN MAHAKAM HULU'),(6471,64,'KOTA BALIKPAPAN'),(6472,64,'KOTA SAMARINDA'),(6474,64,'KOTA BONTANG'),(6501,65,'KABUPATEN MALINAU'),(6502,65,'KABUPATEN BULUNGAN'),(6503,65,'KABUPATEN TANA TIDUNG'),(6504,65,'KABUPATEN NUNUKAN'),(6571,65,'KOTA TARAKAN'),(7101,71,'KABUPATEN BOLAANG MONGONDOW'),(7102,71,'KABUPATEN MINAHASA'),(7103,71,'KABUPATEN KEPULAUAN SANGIHE'),(7104,71,'KABUPATEN KEPULAUAN TALAUD'),(7105,71,'KABUPATEN MINAHASA SELATAN'),(7106,71,'KABUPATEN MINAHASA UTARA'),(7107,71,'KABUPATEN BOLAANG MONGONDOW UTARA'),(7108,71,'KABUPATEN SIAU TAGULANDANG BIARO'),(7109,71,'KABUPATEN MINAHASA TENGGARA'),(7110,71,'KABUPATEN BOLAANG MONGONDOW SELATAN'),(7111,71,'KABUPATEN BOLAANG MONGONDOW TIMUR'),(7171,71,'KOTA MANADO'),(7172,71,'KOTA BITUNG'),(7173,71,'KOTA TOMOHON'),(7174,71,'KOTA KOTAMOBAGU'),(7201,72,'KABUPATEN BANGGAI KEPULAUAN'),(7202,72,'KABUPATEN BANGGAI'),(7203,72,'KABUPATEN MOROWALI'),(7204,72,'KABUPATEN POSO'),(7205,72,'KABUPATEN DONGGALA'),(7206,72,'KABUPATEN TOLI-TOLI'),(7207,72,'KABUPATEN BUOL'),(7208,72,'KABUPATEN PARIGI MOUTONG'),(7209,72,'KABUPATEN TOJO UNA-UNA'),(7210,72,'KABUPATEN SIGI'),(7211,72,'KABUPATEN BANGGAI LAUT'),(7212,72,'KABUPATEN MOROWALI UTARA'),(7271,72,'KOTA PALU'),(7301,73,'KABUPATEN KEPULAUAN SELAYAR'),(7302,73,'KABUPATEN BULUKUMBA'),(7303,73,'KABUPATEN BANTAENG'),(7304,73,'KABUPATEN JENEPONTO'),(7305,73,'KABUPATEN TAKALAR'),(7306,73,'KABUPATEN GOWA'),(7307,73,'KABUPATEN SINJAI'),(7308,73,'KABUPATEN MAROS'),(7309,73,'KABUPATEN PANGKAJENE DAN KEPULAUAN'),(7310,73,'KABUPATEN BARRU'),(7311,73,'KABUPATEN BONE'),(7312,73,'KABUPATEN SOPPENG'),(7313,73,'KABUPATEN WAJO'),(7314,73,'KABUPATEN SIDENRENG RAPPANG'),(7315,73,'KABUPATEN PINRANG'),(7316,73,'KABUPATEN ENREKANG'),(7317,73,'KABUPATEN LUWU'),(7318,73,'KABUPATEN TANA TORAJA'),(7322,73,'KABUPATEN LUWU UTARA'),(7325,73,'KABUPATEN LUWU TIMUR'),(7326,73,'KABUPATEN TORAJA UTARA'),(7371,73,'KOTA MAKASSAR'),(7372,73,'KOTA PAREPARE'),(7373,73,'KOTA PALOPO'),(7401,74,'KABUPATEN BUTON'),(7402,74,'KABUPATEN MUNA'),(7403,74,'KABUPATEN KONAWE'),(7404,74,'KABUPATEN KOLAKA'),(7405,74,'KABUPATEN KONAWE SELATAN'),(7406,74,'KABUPATEN BOMBANA'),(7407,74,'KABUPATEN WAKATOBI'),(7408,74,'KABUPATEN KOLAKA UTARA'),(7409,74,'KABUPATEN BUTON UTARA'),(7410,74,'KABUPATEN KONAWE UTARA'),(7411,74,'KABUPATEN KOLAKA TIMUR'),(7412,74,'KABUPATEN KONAWE KEPULAUAN'),(7413,74,'KABUPATEN MUNA BARAT'),(7414,74,'KABUPATEN BUTON TENGAH'),(7415,74,'KABUPATEN BUTON SELATAN'),(7471,74,'KOTA KENDARI'),(7472,74,'KOTA BAUBAU'),(7501,75,'KABUPATEN BOALEMO'),(7502,75,'KABUPATEN GORONTALO'),(7503,75,'KABUPATEN POHUWATO'),(7504,75,'KABUPATEN BONE BOLANGO'),(7505,75,'KABUPATEN GORONTALO UTARA'),(7571,75,'KOTA GORONTALO'),(7601,76,'KABUPATEN MAJENE'),(7602,76,'KABUPATEN POLEWALI MANDAR'),(7603,76,'KABUPATEN MAMASA'),(7604,76,'KABUPATEN MAMUJU'),(7605,76,'KABUPATEN MAMUJU UTARA'),(7606,76,'KABUPATEN MAMUJU TENGAH'),(8101,81,'KABUPATEN MALUKU TENGGARA BARAT'),(8102,81,'KABUPATEN MALUKU TENGGARA'),(8103,81,'KABUPATEN MALUKU TENGAH'),(8104,81,'KABUPATEN BURU'),(8105,81,'KABUPATEN KEPULAUAN ARU'),(8106,81,'KABUPATEN SERAM BAGIAN BARAT'),(8107,81,'KABUPATEN SERAM BAGIAN TIMUR'),(8108,81,'KABUPATEN MALUKU BARAT DAYA'),(8109,81,'KABUPATEN BURU SELATAN'),(8171,81,'KOTA AMBON'),(8172,81,'KOTA TUAL'),(8201,82,'KABUPATEN HALMAHERA BARAT'),(8202,82,'KABUPATEN HALMAHERA TENGAH'),(8203,82,'KABUPATEN KEPULAUAN SULA'),(8204,82,'KABUPATEN HALMAHERA SELATAN'),(8205,82,'KABUPATEN HALMAHERA UTARA'),(8206,82,'KABUPATEN HALMAHERA TIMUR'),(8207,82,'KABUPATEN PULAU MOROTAI'),(8208,82,'KABUPATEN PULAU TALIABU'),(8271,82,'KOTA TERNATE'),(8272,82,'KOTA TIDORE KEPULAUAN'),(9101,91,'KABUPATEN FAKFAK'),(9102,91,'KABUPATEN KAIMANA'),(9103,91,'KABUPATEN TELUK WONDAMA'),(9104,91,'KABUPATEN TELUK BINTUNI'),(9105,91,'KABUPATEN MANOKWARI'),(9106,91,'KABUPATEN SORONG SELATAN'),(9107,91,'KABUPATEN SORONG'),(9108,91,'KABUPATEN RAJA AMPAT'),(9109,91,'KABUPATEN TAMBRAUW'),(9110,91,'KABUPATEN MAYBRAT'),(9111,91,'KABUPATEN MANOKWARI SELATAN'),(9112,91,'KABUPATEN PEGUNUNGAN ARFAK'),(9171,91,'KOTA SORONG'),(9401,94,'KABUPATEN MERAUKE'),(9402,94,'KABUPATEN JAYAWIJAYA'),(9403,94,'KABUPATEN JAYAPURA'),(9404,94,'KABUPATEN NABIRE'),(9408,94,'KABUPATEN KEPULAUAN YAPEN'),(9409,94,'KABUPATEN BIAK NUMFOR'),(9410,94,'KABUPATEN PANIAI'),(9411,94,'KABUPATEN PUNCAK JAYA'),(9412,94,'KABUPATEN MIMIKA'),(9413,94,'KABUPATEN BOVEN DIGOEL'),(9414,94,'KABUPATEN MAPPI'),(9415,94,'KABUPATEN ASMAT'),(9416,94,'KABUPATEN YAHUKIMO'),(9417,94,'KABUPATEN PEGUNUNGAN BINTANG'),(9418,94,'KABUPATEN TOLIKARA'),(9419,94,'KABUPATEN SARMI'),(9420,94,'KABUPATEN KEEROM'),(9426,94,'KABUPATEN WAROPEN'),(9427,94,'KABUPATEN SUPIORI'),(9428,94,'KABUPATEN MAMBERAMO RAYA'),(9429,94,'KABUPATEN NDUGA'),(9430,94,'KABUPATEN LANNY JAYA'),(9431,94,'KABUPATEN MAMBERAMO TENGAH'),(9432,94,'KABUPATEN YALIMO'),(9433,94,'KABUPATEN PUNCAK'),(9434,94,'KABUPATEN DOGIYAI'),(9435,94,'KABUPATEN INTAN JAYA'),(9436,94,'KABUPATEN DEIYAI'),(9471,94,'KOTA JAYAPURA');

/*Table structure for table `tb_provinsi` */

DROP TABLE IF EXISTS `tb_provinsi`;

CREATE TABLE `tb_provinsi` (
  `id` int(4) NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `tb_provinsi` */

insert  into `tb_provinsi`(`id`,`nama`) values (11,'ACEH'),(12,'SUMATERA UTARA'),(13,'SUMATERA BARAT'),(14,'RIAU'),(15,'JAMBI'),(16,'SUMATERA SELATAN'),(17,'BENGKULU'),(18,'LAMPUNG'),(19,'KEPULAUAN BANGKA BELITUNG'),(21,'KEPULAUAN RIAU'),(31,'DKI JAKARTA'),(32,'JAWA BARAT'),(33,'JAWA TENGAH'),(34,'DI YOGYAKARTA'),(35,'JAWA TIMUR'),(36,'BANTEN'),(51,'BALI'),(52,'NUSA TENGGARA BARAT'),(53,'NUSA TENGGARA TIMUR'),(61,'KALIMANTAN BARAT'),(62,'KALIMANTAN TENGAH'),(63,'KALIMANTAN SELATAN'),(64,'KALIMANTAN TIMUR'),(65,'KALIMANTAN UTARA'),(71,'SULAWESI UTARA'),(72,'SULAWESI TENGAH'),(73,'SULAWESI SELATAN'),(74,'SULAWESI TENGGARA'),(75,'GORONTALO'),(76,'SULAWESI BARAT'),(81,'MALUKU'),(82,'MALUKU UTARA'),(91,'PAPUA BARAT'),(94,'PAPUA');

/*Table structure for table `uang_keluar` */

DROP TABLE IF EXISTS `uang_keluar`;

CREATE TABLE `uang_keluar` (
  `id_uangkeluar` int(11) NOT NULL AUTO_INCREMENT,
  `jumlah` double DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal_keluar` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_uangkeluar`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `uang_keluar` */

insert  into `uang_keluar`(`id_uangkeluar`,`jumlah`,`keterangan`,`tanggal_keluar`) values (1,1000000,'uang keluar beli bahan 2','2022-08-28'),(2,1000000,'bahan 2','2022-08-28');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `role` varchar(25) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id_user`,`username`,`nama`,`password`,`email`,`role`) values (1,'admin','Admin','$2y$10$gummw8UZ0MNQ6E9nTmCSve3nB42w7Ds5LB2x39EupK6Xs768pQCEO','rohim98@gmail.com','admin'),(2,'rohim@gmail.com','arohim furqan','$2y$10$tJEBb6BNmj1fG6mNquWHie8VhoAIVjjBNr6ent3nLxejwoaP9EoUG','rohim@gmail.com','Customer'),(3,'lovela97famazera@gmail.com','lovela','$2y$10$tJEBb6BNmj1fG6mNquWHie8VhoAIVjjBNr6ent3nLxejwoaP9EoUG','lovela97famazera@gmail.com','Customer'),(5,'anita@gmail.com','anita','$2y$10$CEIpAZKtDcZD4wvkyLAj../Uuu.hxBFDNcO0EkuBNZEU619DC6EY.','anita@gmail.com','Customer'),(7,'pimpinan','Pimpinan','$2y$10$gummw8UZ0MNQ6E9nTmCSve3nB42w7Ds5LB2x39EupK6Xs768pQCEO','pimpinan@gmail.com','pimpinan'),(11,'him1@gmail.com','him','$2y$10$Cw.JWKxqivNL75zX.hLnjOPPkdwg/jdMsQdiRQ51FonojN0Z6gA9i','him1@gmail.com','Customer'),(12,'aoim@gmail.com','aoim','$2y$10$I5rTnXr.zMUK1WgC0ey8GO2I9/aAOSW0qhQfAHLrSHZPFNZrQ7hG.','aoim@gmail.com','Customer'),(13,'aca@gmail.com','aca','$2y$10$SydNTMB2OQB4g0t4izzXgO/ck85uVoWnxiSaOjx5P3R1EzCozG4p.','aca@gmail.com','Customer'),(14,'dona@gmail.com','dona','$2y$10$a1XJDjca/rdzahCex8spQ.UDYfuR5nwaHsgwepmJ14FzpE36oREaS','dona@gmail.com','Customer'),(15,'fit@gmail.com','fit','$2y$10$vXBaszwyYkDh5Dba1ZnYNOzhLkTDf0WtXpY0ME3lLsUI/pXvIzEBS','fit@gmail.com','Customer'),(16,'via@gmail.com','via','$2y$10$XqjVocUWz1WcuKaBdgLp2Ofjn7ZVk766R5iXthGkufzsaLsx7IjIS','via@gmail.com','Customer'),(17,'nanda@gmail.com','nanda','$2y$10$UsX5usuiKVlPoQLg5InRMuAlzNqXdvdsHGtN0KlN6rSy67B.j0eMK','nanda@gmail.com','Customer'),(18,'lovela@gmail.com','lovela famazera','$2y$10$uMzFV6pWgC1kjcaQYnUjWeMYurJaP9TnFbWFz3A.QtH1X1wfCKUb.','lovela@gmail.com','Customer');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

CREATE DATABASE probasdat;

CREATE TABLE Produk (
	kdProduk INT NOT NULL AUTO_INCREMENT,
	namaproduk VARCHAR(255),
	stok VARCHAR(255),
	hargaPokok DECIMAL(10,2),
	hargaJual DECIMAL(10,2),
	diskon DECIMAL(10,2),
	diskontinu VARCHAR (255),
	PRIMARY KEY(kdProduk)
);

CREATE TABLE Kategori (
	kdKategori INT NOT NULL AUTO_INCREMENT,
	namaKategori VARCHAR(255),
	keterangan VARCHAR(255),
	PRIMARY KEY(kdKategori)
);
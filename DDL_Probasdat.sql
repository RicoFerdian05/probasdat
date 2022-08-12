-- MEMBUAT DATABASE BERJUDUL probasdat
CREATE DATABASE probasdat;

-- MEMBUAT TABLE BARU
CREATE TABLE Produk (
	kdProduk VARCHAR(255) NOT NULL,
	namaproduk VARCHAR(255),
	stok INT,
	hargaPokok DECIMAL(10,2),
	hargaJual DECIMAL(10,2),
	diskon DECIMAL(10,2),
	diskontinu VARCHAR (255),
	kdProdukDeskripsi VARCHAR(255) NOT NULL,
	kdSupplier VARCHAR(255) NOT NULL,
	kdKategori VARCHAR(255) NOT NULL,
	PRIMARY KEY(kdProduk)
);

CREATE TABLE Kategori (
	kdKategori VARCHAR(255) NOT NULL,
	namaKategori VARCHAR(255),
	keterangan VARCHAR(255),
	PRIMARY KEY(kdKategori)
);

CREATE TABLE ProdukDeskripsi (
	kdProdukDeskripsi VARCHAR(255) NOT NULL,
	teksDeskripsi VARCHAR(255),
	htmlDeskripsi VARCHAR(255),
	gambar VARCHAR(255),
	PRIMARY KEY(kdProdukDeskripsi)
);

CREATE TABLE Supplier (
	kdSupplier VARCHAR(255) NOT NULL,
	namaSupplier VARCHAR(255),
	namaKontak VARCHAR(255),
	alamat VARCHAR(255),
	kota VARCHAR(255),
	provinsi VARCHAR(255),
	kodePos VARCHAR(255),
	telepon VARCHAR(255),
	PRIMARY KEY(kdSupplier)
);

CREATE TABLE TransaksiDetail (
	kdProduk VARCHAR(255) NOT NULL,
	kdTransaksi VARCHAR(255) NOT NULL,
	jumlah INT,
	hargaBeli DECIMAL(10,2)
);

CREATE TABLE Pegawai (
	kdPegawai VARCHAR(255) NOT NULL,
	namaPegawai VARCHAR(255),
	jabatan VARCHAR(255),
	tglLahir DATE,
	tglRekrut DATE,
	alamat VARCHAR(255),
	kota VARCHAR(255),
	provinsi VARCHAR(255),
	kodePos VARCHAR(255),
	telepon VARCHAR(255),
	atasan VARCHAR(255),
	PRIMARY KEY(kdPegawai)
);

CREATE TABLE Transaksi (
	kdTransaksi VARCHAR(255) NOT NULL,
	tglTransaksi DATE,
	tglKirim DATE,
	alamatKirim VARCHAR(255),
	kotaKirim VARCHAR(255),
	provinsiKirim VARCHAR(255),
	kodePosKirim VARCHAR(255),
	berat DECIMAL(10,2),
	resi VARCHAR(255),
	status VARCHAR(255),
	kdPegawai VARCHAR(255) NOT NULL,
	kdEkspedisi VARCHAR(255) NOT NULL,
	kdBayar VARCHAR(255) NOT NULL,
	kdPembeli VARCHAR(255) NOT NULL,
	PRIMARY KEY(kdTransaksi)
);

CREATE TABLE Ekspedisi (
	kdEkspedisi VARCHAR(255) NOT NULL,
	namaEkspedisi VARCHAR(255),
	telepon VARCHAR(255),
	PRIMARY KEY(kdEkspedisi)
);

CREATE TABLE Pembayaran (
	kdBayar VARCHAR(255) NOT NULL,
	tglBayar DATE,
	caraBayar VARCHAR(255),
	mediaBayar VARCHAR(255),
	jumlahBayar DECIMAL(10,2),
	PRIMARY KEY(kdBayar)
);

CREATE TABLE Pembeli (
	kdPembeli VARCHAR(255) NOT NULL,
	namaPembeli VARCHAR(255),
	telepon VARCHAR(255),
	alamat VARCHAR(255),
	kota VARCHAR(255),
	provinsi VARCHAR(255),
	kodePos VARCHAR(255),
	PRIMARY KEY(kdPembeli)
);

-- MENAMBAHKAN FOREIGN KEY
ALTER TABLE Produk
ADD FOREIGN KEY (kdProdukDeskripsi) REFERENCES ProdukDeskripsi(kdProdukDeskripsi),
ADD FOREIGN KEY (kdSupplier) REFERENCES Supplier(kdSupplier),
ADD FOREIGN KEY (kdKategori) REFERENCES Kategori(kdKategori);

ALTER TABLE TransaksiDetail
ADD FOREIGN KEY (kdProduk) REFERENCES Produk(kdProduk),
ADD FOREIGN KEY (kdTransaksi) REFERENCES Transaksi(kdTransaksi);

ALTER TABLE Transaksi
ADD FOREIGN KEY (kdPegawai) REFERENCES Pegawai(kdPegawai),
ADD FOREIGN KEY (kdEkspedisi) REFERENCES Ekspedisi(kdEkspedisi),
ADD FOREIGN KEY (kdBayar) REFERENCES Pembayaran(kdBayar),
ADD FOREIGN KEY (kdPembeli) REFERENCES Pembeli(kdPembeli);
class BookModel {
  bool? success;
  String? message;
  List<Data>? data;

  BookModel({required this.success, required this.message, required this.data});

  BookModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? kodeBuku;
  String? judul;
  int? namaKategori;
  int? namaPengarang;
  int? namaPenerbit;
  String? deskripsi;
  int? stok;
  int? harga;
  String? cover;

  Data(
      {this.kodeBuku,
      this.judul,
      this.namaKategori,
      this.namaPengarang,
      this.namaPenerbit,
      this.deskripsi,
      this.stok,
      this.harga,
      this.cover});

  Data.fromJson(Map<String, dynamic> json) {
    kodeBuku = json['kode_buku'];
    judul = json['judul'];
    namaKategori = json['nama_kategori'];
    namaPengarang = json['nama_pengarang'];
    namaPenerbit = json['nama_penerbit'];
    deskripsi = json['deskripsi'];
    stok = json['stok'];
    harga = json['harga'];
    cover = json['cover'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_buku'] = this.kodeBuku;
    data['judul'] = this.judul;
    data['nama_kategori'] = this.namaKategori;
    data['nama_pengarang'] = this.namaPengarang;
    data['nama_penerbit'] = this.namaPenerbit;
    data['deskripsi'] = this.deskripsi;
    data['stok'] = this.stok;
    data['harga'] = this.harga;
    data['cover'] = this.cover;
    return data;
  }
}

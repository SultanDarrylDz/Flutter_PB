class TransaksiModel {
  bool? success;
  String? message;
  List<Data>? data;

  TransaksiModel({required this.success, required this.message, required this.data});

  TransaksiModel.fromJson(Map<String, dynamic> json) {
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
  int? bukuId;
  int? pembeliId;
  String? tglBeli;
  int? jumlahBuku;
  int? harga;
  int? total;
  int? uang;
  int? kembalian;

  Data(
      {this.bukuId,
      this.pembeliId,
      this.tglBeli,
      this.jumlahBuku,
      this.harga,
      this.total,
      this.uang,
      this.kembalian});

  Data.fromJson(Map<String, dynamic> json) {
    bukuId = json['buku_id'];
    pembeliId = json['pembeli_id'];
    tglBeli = json['tgl_beli'];
    jumlahBuku = json['jumlah_buku'];
    harga = json['harga'];
    total = json['total'];
    uang = json['uang'];
    kembalian = json['kembalian'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['buku_id'] = this.bukuId;
    data['pembeli_id'] = this.pembeliId;
    data['tgl_beli'] = this.tglBeli;
    data['jumlah_buku'] = this.jumlahBuku;
    data['harga'] = this.harga;
    data['total'] = this.total;
    data['uang'] = this.uang;
    data['kembalian'] = this.kembalian;
    return data;
  }
}
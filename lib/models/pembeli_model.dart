class PembeliModel {
  bool? success;
  String? message;
  List<Data>? data;

  PembeliModel(
      {required this.success, required this.message, required this.data});

  PembeliModel.fromJson(Map<String, dynamic> json) {
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
  String? kodePembeli;
  String? namaPembeli;
  String? alamat;
  String? noHp;

  Data({this.kodePembeli, this.namaPembeli, this.alamat, this.noHp});

  Data.fromJson(Map<String, dynamic> json) {
    kodePembeli = json['kode_pembeli'];
    namaPembeli = json['nama_pembeli'];
    alamat = json['alamat'];
    noHp = json['no_hp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kode_pembeli'] = this.kodePembeli;
    data['nama_pembeli'] = this.namaPembeli;
    data['alamat'] = this.alamat;
    data['no_hp'] = this.noHp;
    return data;
  }
}

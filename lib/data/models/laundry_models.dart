class UserModel {
  final int id;
  final String nama;
  final String noTelp;
  final String email;
  final String alamat;

  UserModel({
    required this.id,
    required this.nama,
    required this.noTelp,
    required this.email,
    required this.alamat,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      nama: json['nama'],
      noTelp: json['no_telp'],
      email: json['email'],
      alamat: json['alamat'],
    );
  }
}

class AdminModel {
  final int id;
  final String nama;
  final String noTelp;
  final String email;

  AdminModel({
    required this.id,
    required this.nama,
    required this.noTelp,
    required this.email,
  });

  factory AdminModel.fromJson(Map<String, dynamic> json) {
    return AdminModel(
      id: json['id'],
      nama: json['nama'],
      noTelp: json['no_telp'],
      email: json['email'],
    );
  }
}

class PesananModel {
  final int id;
  final String paket;
  final double berat;
  final String statusPesanan;
  final String createdOn;
  final int idPelanggan;
  final int idAdmin;

  PesananModel({
    required this.id,
    required this.paket,
    required this.berat,
    required this.statusPesanan,
    required this.createdOn,
    required this.idPelanggan,
    required this.idAdmin,
  });

  factory PesananModel.fromJson(Map<String, dynamic> json) {
    return PesananModel(
      id: json['id'],
      paket: json['paket'],
      berat: json['berat'],
      statusPesanan: json['status_pesanan'],
      createdOn: json['created_on'],
      idPelanggan: json['id_pelanggan'],
      idAdmin: json['id_admin'],
    );
  }
}
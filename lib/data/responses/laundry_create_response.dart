class LaundryCreateResponse {
  final int id;
  final String paket;
  final double berat;
  final String statusPesanan;
  final String createdOn;
  final int idPelanggan;
  final int idAdmin;

  LaundryCreateResponse({
    required this.id,
    required this.paket,
    required this.berat,
    required this.statusPesanan,
    required this.createdOn,
    required this.idPelanggan,
    required this.idAdmin,
  });

  factory LaundryCreateResponse.fromJson(Map<String, dynamic> json) {
    return LaundryCreateResponse(
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

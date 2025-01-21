class LaundryParam {
  final String paket;
  final double berat;
  final String statusPesanan;
  final String createdOn;
  final int idPelanggan;
  final int idAdmin;

  LaundryParam({
    required this.paket,
    required this.berat,
    required this.statusPesanan,
    required this.createdOn,
    required this.idPelanggan,
    required this.idAdmin,
  });

  Map<String, dynamic> toJson() {
    return {
      'paket': paket,
      'berat': berat,
      'status_pesanan': statusPesanan,
      'created_on': createdOn,
      'id_pelanggan': idPelanggan,
      'id_admin': idAdmin,
    };
  }
}

import 'package:dio/dio.dart';
import '../../core/api_client.dart';
import '../models/laundry_models.dart';
import '../params/laundry_param.dart';
import '../responses/laundry_create_response.dart';

class LaundryRepository extends ApiClient {
  // Fetch All Pesanan
  Future<List<PesananModel>> fetchPesanan() async {
    try {
      final response = await dio.get('pesanan');
      List data = response.data;
      return data.map((item) => PesananModel.fromJson(item)).toList();
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }

  // Create Pesanan
  Future<LaundryCreateResponse> createPesanan(LaundryParam param) async {
    try {
      final response = await dio.post('pesanan', data: param.toJson());
      return LaundryCreateResponse.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }

  // Update Pesanan
  Future<void> updatePesanan(int id, LaundryParam param) async {
    try {
      await dio.put('pesanan/$id', data: param.toJson());
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }

  // Delete Pesanan
  Future<void> deletePesanan(int id) async {
    try {
      await dio.delete('pesanan/$id');
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }
}

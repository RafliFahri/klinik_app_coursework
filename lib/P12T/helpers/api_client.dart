import 'package:dio/dio.dart';

final Dio dio = Dio(BaseOptions(
    //poli dan pegawai
    baseUrl: 'https://6572cc92192318b7db4106a9.mockapi.io/',
    receiveTimeout: 3000));

final Dio dio2 = Dio(BaseOptions(
    //pasien
    baseUrl: 'https://657aab681acd268f9afb81c3.mockapi.io/',
    receiveTimeout: 3000));

class ApiClient {
  Future<Response> get(String path) async {
    if (!path.contains('pasien')) {
      try {
        final response = await dio.get(Uri.encodeFull(path));
        return response;
      } on DioError catch (e) {
        throw Exception(e.message);
      }
    } else {
      try {
        final response = await dio2.get(Uri.encodeFull(path));
        return response;
      } on DioError catch (e) {
        throw Exception(e.message);
      }
    }
  }

  Future<Response> post(String path, dynamic data) async {
    if (!path.contains('pasien')) {
      try {
        final response = await dio.post(Uri.encodeFull(path), data: data);
        return response;
      } on DioError catch (e) {
        throw Exception(e.message);
      }
    } else {
      try {
        final response = await dio2.post(Uri.encodeFull(path), data: data);
        return response;
      } on DioError catch (e) {
        throw Exception(e.message);
      }
    }
  }

  Future<Response> put(String path, dynamic data) async {
    if (!path.contains('pasien')) {
      try {
        final response = await dio.put(Uri.encodeFull(path), data: data);
        return response;
      } on DioError catch (e) {
        throw Exception(e.message);
      }
    } else {
      try {
        final response = await dio2.put(Uri.encodeFull(path), data: data);
        return response;
      } on DioError catch (e) {
        throw Exception(e.message);
      }
    }
  }

  Future<Response> delete(String path) async {
    if (!path.contains('pasien')) {
      try {
        final response = await dio.delete(Uri.encodeFull(path));
        return response;
      } on DioError catch (e) {
        throw Exception(e.message);
      }
    } else {
      try {
        final response = await dio2.delete(Uri.encodeFull(path));
        return response;
      } on DioError catch (e) {
        throw Exception(e.message);
      }
    }
  }
}

import 'dart:developer';

import 'package:dio/dio.dart';

import '../entities/user.dart';

class UserRepository {
  final Dio? _dio;

  UserRepository({Dio? dio}) : _dio = dio;

  Future<User?> getUser(int id) async {
    log('Ambil data user');

    await Future.delayed(const Duration(seconds: 2));

    try {
      var response =
          await (_dio ?? Dio()).get('https://reqres.in/api/users/$id');

      log('Kembalikan data user');
      return User.fromJson(response.data['data']);
    } catch (e) {
      return null;
    }
  }
}

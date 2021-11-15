import 'package:contador/models/User.dart';
import 'package:dio/dio.dart';

class UserService {
  UserService._internal();

  static UserService _instance = UserService._internal();
  static UserService get instance => _instance;

  final dio = Dio();

  Future<List<User>?> getUsers(int page) async {
    try {
      print('entre');
      final Response response = await this.dio.get(
          'https://reqres.in/api/users',
          queryParameters: {"page": page, "delay": 3});
      return (response.data['data'] as List)
          .map((e) => User.fromJson(e))
          .toList();
    } catch (_) {
      print('paso un error');
    }
  }
}

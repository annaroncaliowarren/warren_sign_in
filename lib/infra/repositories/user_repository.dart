import 'package:dio/dio.dart';

import '../models/user_model.dart';

class UserRepository {
  
  static Future post(UserModel model) async {
    Dio dio = Dio();
    
    await dio.post(
      'http://192.168.0.43/api/Usuario',
      data: model.toMap(),
    );
  }
}

// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:socialapp/services/auth_service.dart';
import 'package:socialapp/utils/exception.dart';

class Authtentication {
  Future<void> register(
      {required String username,
      required String email,
      required String password,
      required String confirmpassword}) async {
    final AuthService _authService = AuthService();

    try {
      if (email.isNotEmpty &&
          password.isNotEmpty &&
          confirmpassword.isNotEmpty &&
          username.isNotEmpty) {
        if (password == confirmpassword) {
          await _authService.register(
              username, email.trim(), password.trim(), confirmpassword.trim());
        } else {
          throw exceptions('Password not match');
        }
      }else{
        throw exceptions('Please fill all fields');
      }
    } catch (e) {
      throw exceptions(e.toString());
    }
  }
}

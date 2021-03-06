import 'package:calculator/apis/http.dart';

class AuthApi {
  static login(String email, String password) async {
    var res = await post('/login', {'Email': email, 'Password': password});
    return res;
  }

  static sendResetInstruction(String email) async {
    var res = await post('/rPass', {'Email': email});
    return res;
  }

  static logout(String email, String token) async {
    // SharedPreferences sp = await SharedPreferences.getInstance();
    // var token = sp.getString('token');
    // if (token == null) token = '';
    var res = await post('/logOut', {'Token': token, 'Email': email});
    return res;
  }
}

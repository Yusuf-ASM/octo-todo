import 'package:hive/hive.dart';

bool loginButtonLogic(String username, String password) {
  final hive = Hive.box("Users");
  final userPassword = hive.get(username);
  if (userPassword != null && userPassword == password) {
    hive.put("loginState", true);
    return true;
  }
  return false;
}

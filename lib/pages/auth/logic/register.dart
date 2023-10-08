import 'package:hive/hive.dart';

bool registerButtonLogic(String username, String password) {
  final hive = Hive.box("Users");
  hive.put(username, password);
  return true;
}

import 'package:flutter/foundation.dart';
import 'usermodel.dart';

class UserProvider with ChangeNotifier {
  User? _user;

  User? get user => _user;

  bool get isLoggedIn => _user != null;

  void login(User user) {
    _user = user;
    notifyListeners();
  }

  // void logout() {
  //   _user = null;
  //   notifyListeners();
  // }
}

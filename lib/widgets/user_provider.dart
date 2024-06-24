import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:ngcom/widgets/usermodel.dart';

class UserProvider with ChangeNotifier {
  final _storage = FlutterSecureStorage();
  User? _user;

  User? get user => _user;

  bool get isLoggedIn => _user != null;

  void login(User user) async {
    _user = user;
    await _storage.write(key: 'fulname', value: user.fulname);
    await _storage.write(key: 'email', value: user.email);
    await _storage.write(key: 'companyid', value: user.companyid);
    await _storage.write(key: 'password', value: user.password);
    notifyListeners();
  }

  void logout() async {
    _user = null;
    await _storage.delete(key: 'fulname');
    await _storage.delete(key: 'email');
    await _storage.delete(key: 'companyid');
    await _storage.delete(key: 'password');
    notifyListeners();
  }

  Future<void> loadUser() async {
    String? fulname = await _storage.read(key: 'fulname');
    String? email = await _storage.read(key: 'email');
    String? companyid = await _storage.read(key: 'companyid');
    String? password = await _storage.read(key: 'password');

    if (fulname != null &&
        email != null &&
        companyid != null &&
        password != null) {
      _user = User(
        fulname: fulname,
        email: email,
        companyid: companyid,
        password: password, 
      );
      notifyListeners();
    }
  }
}

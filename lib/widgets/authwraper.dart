
import 'package:flutter/material.dart';
import 'package:ngcom/widgets/user_provider.dart';
import 'package:provider/provider.dart';

import '../presentation/home/home.dart';
import '../presentation/login/login.dart';

class AuthWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<UserProvider>(
      builder: (context, userProvider, child) {
        if (userProvider.isLoggedIn) {
          return HomePage();
        } else {
          return LoginForm();
        }
      },
    );
  }
}

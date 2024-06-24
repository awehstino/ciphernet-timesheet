import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../widgets/user_provider.dart';
import '../home/home.dart';
import '../login/login.dart';

class Luancher1 extends StatefulWidget {
  const Luancher1({super.key});

  @override
  State<Luancher1> createState() => _Luancher1State();
}

class _Luancher1State extends State<Luancher1> {
  @override
  void initState() {
    super.initState();
    _checkLoginState();
  }

  Future<void> _checkLoginState() async {
    await Future.delayed(const Duration(seconds: 10));
    final userProvider = Provider.of<UserProvider>(context, listen: false);
    await userProvider.loadUser();
    if (userProvider.isLoggedIn) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginForm()),
      );
    }
  }
  

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(74, 214, 232, 247),
      ),
      child: Center(
        child: AnimatedTextKit(animatedTexts: [
          FadeAnimatedText(
            "ciphernet",
            textStyle: GoogleFonts.alata(
              decoration: TextDecoration.none,
              fontSize: 70,
              color: const Color.fromARGB(255, 1, 41, 75),
              letterSpacing: 7
            ),
            duration: const Duration(milliseconds: 5000),
          ),
        ]),
      ),
    );
  }
}

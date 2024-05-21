// ignore_for_file: use_build_context_synchronously, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:ngcom/presentation/signup/signup.dart';

class Luancher1  extends StatefulWidget {
  const Luancher1({super.key});

  @override
  State<Luancher1> createState() => _Luancher1State();
}

class _Luancher1State extends State<Luancher1> {
 
  @override
  void initState() {
    super.initState();
    _NavigateToMainScreen();
  }

  _NavigateToMainScreen()async{
    await Future.delayed(const Duration(milliseconds: 9000),() {},);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignupForm()));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
        color: Colors.white,
       ),
       child: Center(
        child:AnimatedTextKit(
          
          animatedTexts: [

            FadeAnimatedText(
              "Ng-Com",
              textStyle: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 70,
                fontWeight: FontWeight.w800,
                color: Colors.deepOrange
              ),
              duration: const Duration(milliseconds: 5000),
            ),
            
          ]) ,
       ),

    );
  }
}
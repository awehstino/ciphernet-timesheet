import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Luancher2 extends  StatelessWidget {
  const Luancher2({super.key});

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
              "Ng-Communication",
              textStyle: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 40,
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
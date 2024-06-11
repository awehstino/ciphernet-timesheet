import "package:flutter/material.dart";
import "package:ngcom/responsive/desktopLayout/signup.dart";

class DesktopLayout extends StatelessWidget{
  const DesktopLayout({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      // backgroundColor: Colors.orange[300],
      body: const SignupForm(),
    );
  }
}
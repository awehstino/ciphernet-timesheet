import "package:flutter/material.dart";

import "../presentation/screenlauncher/screenluancher.dart";

class MobileLayout extends StatelessWidget{
  const MobileLayout({Key? key}): super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Luancher1(),
    );
  }
}
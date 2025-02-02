import "package:flutter/material.dart";

import "dimension.dart";


class ResponsiveLayout extends StatelessWidget{
  final   Widget mobileBody;
 
  final   Widget desktopBody;
 ResponsiveLayout({required this.mobileBody, required this.desktopBody});

 @override
 Widget build(BuildContext context){
  return LayoutBuilder(
    builder: (context, constraints){
      if(constraints.maxWidth < mobileWidth){
        //return layout
         return mobileBody;
      }else{
        //return desktop layout widget
        return desktopBody;
      }
    },
  );
 }
}
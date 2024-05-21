import 'package:flutter/material.dart';
import 'package:ngcom/widgets/installation_card.dart';


class UserInstallation  extends StatelessWidget {
  const UserInstallation({super.key});

  @override
  Widget build(BuildContext context) {
    return    const Column(
      children: [
        SizedBox(height: 20,),
        InstallationCard(
                  transfarclient: "Transfer Of Client To New Radio" ,
                  place: "United Estate Lekki Ajah Axis",
                  title: "in progress",
                  date: "11th April,2024-10:45am" ,
                  progessbackgroundcolor: Color.fromARGB(112, 9, 209, 116),
                  progesscolor: Color.fromARGB(255, 4, 170, 120),
                  progesspercent: 0.6,
                  workprogress: "60%",
        ),
         SizedBox(height: 20,),

         InstallationCard(
                  transfarclient: "Transfer Of Client To New Radio" ,
                  place: "United Estate Lekki Ajah Axis",
                  title: "in progress",
                  date: "11th April,2024-10:45am" ,
                  progessbackgroundcolor: Color.fromARGB(112, 9, 209, 116),
                  progesscolor: Color.fromARGB(255, 4, 170, 120),
                  progesspercent: 0.8,
                  workprogress: "81%",
        ),
         SizedBox(height: 20,),


       

         InstallationCard(
                  transfarclient: "Transfer Of Client To New Radio" ,
                  place: "United Estate Lekki Ajah Axis",
                  title: "in progress",
                  date: "11th April,2024-10:45am" ,
                  progessbackgroundcolor: Color.fromARGB(112, 9, 209, 116),
                  progesscolor: Color.fromARGB(255, 4, 170, 120),
                  progesspercent: 0.4,
                  workprogress: "40%",
        ),
      ],
    );
  }
}
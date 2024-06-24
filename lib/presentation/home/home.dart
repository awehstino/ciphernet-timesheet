import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ngcom/presentation/installation/installations.dart';
import 'package:ngcom/presentation/profile.dart/profile.dart';
import 'package:ngcom/presentation/survey/survey.dart';
import 'package:ngcom/presentation/tickets/tickets.dart';

import '../../widgets/user_main_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        
        backgroundColor: Color.fromARGB(251, 234, 238, 255),
        buttonBackgroundColor: const Color.fromARGB(255, 0, 65, 117),
        color: Color.fromARGB(255, 0, 65, 117),
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(
            Icons.home_work_outlined,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            Icons.electric_scooter_sharp,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            Icons.install_desktop_rounded,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            Icons.payment,
            size: 27,
            color: Colors.white,
          ),
          Icon(
            Icons.manage_accounts_outlined,
            size: 27,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectindex = index;
          });
        },
      ),
      body: _pages[_selectindex],
    );
  }
  

  final List<Widget> _pages =[
    const UserMainScreen(),
    const Survey(),
    const Installation(),
    const Tickets(),
    const Profile(),
  ];
}

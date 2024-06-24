// ignore_for_file: sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../../widgets/editprofile.dart';
import 'package:provider/provider.dart';
import 'package:ngcom/widgets/usermodel.dart';
import 'package:ngcom/widgets/user_provider.dart';

import '../login/login.dart';

class Profile  extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitched = false;  
  
void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        // textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }  
    

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);

    

 final bool toggle;

    void _logout() {
      userProvider.logout();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginForm()),
      );
    }
    // final userProvider = Provider.of<UserProvider>(context);

    return Scaffold(
      
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: double.maxFinite,
            height: 50,
            child: const Text(
              "Account",
              style: TextStyle(
                fontSize: 37,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            height: 1.2,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, right: 15),
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    color: Colors.deepOrange),
                child: const Icon(
                  Icons.person,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Container(
                height: 80,
                width: 300,
                child: Column(
                  children: [
                    Container(
                      height: 25,
                      width: double.maxFinite,
                      child: Text(
                        '${userProvider.user?.fulname}',
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Container(
                      height: 30,
                      width: double.maxFinite,
                      child: Text(
                        '${userProvider.user?.email}',
                        style: const TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: double.maxFinite,
                      child: const Text(
                        "+234 9045844860",
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Divider(
            height: 1.2,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const EditProfile()));
            },
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20, right: 10),
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Color.fromARGB(255, 0, 66, 121),
                      ),
                      vertical: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Color.fromARGB(255, 0, 66, 121),
                      ),
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(
                    Icons.person_4_outlined,
                    color: Color.fromARGB(255, 0, 66, 121),
                    size: 30,
                  ),
                ),
                Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Account Profile",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.centerRight,
                  child: const Icon(
                    Icons.chevron_right_sharp,
                    color: Colors.grey,
                    size: 35,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(left: 20, right: 10),
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                    vertical: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: const Icon(
                  Icons.security,
                  color: Color.fromARGB(255,0,66,121),
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 200,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Security",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: 50,
                width: 120,
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.chevron_right_sharp,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(left: 20, right: 10),
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                    vertical: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: const Icon(
                  Icons.add_alert_outlined,
                  color: Color.fromARGB(255, 0, 66, 121),
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 200,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Nortifications",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: 50,
                width: 120,
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.chevron_right_sharp,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(left: 20, right: 10),
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                    vertical: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: const Icon(
                  Icons.wb_sunny_outlined,
                  color: Color.fromARGB(255, 0, 66, 121),
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 200,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Dark Mode",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Container(
                width: 130,
                height: 10,
                child: Transform.scale(
                    scale: 1,
                    child: Switch(
                      onChanged: toggleSwitch,
                      value: isSwitched,
                      activeColor: const Color.fromARGB(255, 0, 66, 121),
                      activeTrackColor: const Color.fromARGB(192, 223, 222, 222),
                      inactiveThumbColor:  Colors.white,
                      inactiveTrackColor: const Color.fromARGB(192, 192, 191, 191),
                    )),  
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(left: 20, right: 10),
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                    vertical: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: const Icon(
                  Icons.chat_rounded,
                  color: Color.fromARGB(255, 0, 66, 121),
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 200,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Help Center",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: 50,
                width: 120,
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.chevron_right_sharp,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                margin: const EdgeInsets.only(left: 20, right: 10),
                decoration: const BoxDecoration(
                  border: Border.symmetric(
                    horizontal: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                    vertical: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 0, 66, 121),
                    ),
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: const Icon(
                  Icons.announcement_outlined,
                  color: Color.fromARGB(255, 0, 66, 121),
                  size: 30,
                ),
              ),
              Container(
                height: 50,
                width: 200,
                alignment: Alignment.centerLeft,
                child: const Text(
                  "About",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                height: 50,
                width: 120,
                alignment: Alignment.centerRight,
                child: const Icon(
                  Icons.chevron_right_sharp,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {
              _logout();
            },
            child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20, right: 10),
                  decoration: const BoxDecoration(
                    border: Border.symmetric(
                      horizontal: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Color.fromARGB(255, 0, 66, 121),
                      ),
                      vertical: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Color.fromARGB(255, 0, 66, 121),
                      ),
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(
                    Icons.sensor_door_outlined,
                    color: Color.fromARGB(255, 0, 66, 121),
                    size: 30,
                  ),
                ),
                Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 0, 66, 121)),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

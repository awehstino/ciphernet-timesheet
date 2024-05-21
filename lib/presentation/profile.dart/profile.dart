// ignore_for_file: sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../widgets/editprofile.dart';

class Profile   extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           const SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.only(left: 20),
            width: double.maxFinite,
            height: 50,
            child: const Text("Account",style: TextStyle(
              fontSize: 37,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),),
          ),
          const SizedBox(height: 30,),
       const Divider(
              height: 1.2,
              color: Colors.grey,

            ),
            const SizedBox(height: 30,),
           Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15,right: 15),
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Colors.deepOrange
                 ),
                 child: const Icon(Icons.person,size: 30,color: Colors.white,),
              ),
              Container(
                height: 80,
                width: 300,
                child: Column(
                  children: [
                    Container(
                      height: 25,
                      width: double.maxFinite,
                      child: const Text("Adebayo David",style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),),
                    ),
                    Container(
                      height: 30,
                      width: double.maxFinite,
                      child: const Text("Field Engineer",style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey,
                      ),),
                    ),

                    Container(
                      height: 25,
                      width: double.maxFinite,
                      child: const Text("+234 9045844860",style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),),
                    )
                  ],
                ),
              )
            ],
           ),
           const SizedBox(height: 30,),

           const Divider(
              height: 1.2,
              color: Colors.grey,

            ),

            const SizedBox(height: 30,),

            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditProfile()) );
              },
              child: Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20,right: 10),
                  decoration: const BoxDecoration( 
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(Icons.person_4_outlined,color: Colors.white,  size: 30,),
                ),
                Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: const Text("Account Profile",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                ),

                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.chevron_right_sharp,color: Colors.grey,size: 35,),
                ),
              ],
            ),
            ),
         const SizedBox(height: 20,),
         Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20,right: 10),
                  decoration: const BoxDecoration( 
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(Icons.security,color: Colors.white,  size: 30,),
                ),
                Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: const Text("Security",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                ),

                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.chevron_right_sharp,color: Colors.grey,size: 35,),
                ),
              ],
            ),

        const SizedBox(height: 20,),
        Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20,right: 10),
                  decoration: const BoxDecoration( 
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(Icons.add_alert_outlined,color: Colors.white,  size: 30,),
                ),
                Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: const Text("Nortifications",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                ),

                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.chevron_right_sharp,color: Colors.grey,size: 35,),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20,right: 10),
                  decoration: const BoxDecoration( 
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(Icons.wb_sunny_outlined,color: Colors.white,  size: 30,),
                ),
                Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: const Text("Dark Mode",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                ),

                Container(
                 
                  width: 90,
                  height: 30,
                  child: ToggleSwitch(
                  minHeight: 30,
                  minWidth: 80.0,
                  cornerRadius: 20.0,
                  activeBgColors: const [[Colors.white], [Color.fromARGB(214, 0, 0, 0)]],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  initialLabelIndex: 1,
                  totalSwitches: 2,
                  labels: const ["", ''],
                  radiusStyle: true,
                  onToggle: (index) {
                       print('switched to: $index');
  },
),
                )
              ],
            ),
            const SizedBox(height:20,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20,right: 10),
                  decoration: const BoxDecoration( 
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(Icons.chat_rounded,color: Colors.white,  size: 30,),
                ),
                Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: const Text("Help Center",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                ),

                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.chevron_right_sharp,color: Colors.grey,size: 35,),
                ),
              ],
            ),

            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20,right: 10),
                  decoration: const BoxDecoration( 
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(Icons.announcement_outlined,color: Colors.white,  size: 30,),
                ),
                Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: const Text("About",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  ),),
                ),

                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 50,
                  width: 120,
                  alignment: Alignment.centerRight,
                  child: const Icon(Icons.chevron_right_sharp,color: Colors.grey,size: 35,),
                ),
              ],
            ),
            const SizedBox(height: 40,),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.only(left: 20,right: 10),
                  decoration: const BoxDecoration( 
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: const Icon(Icons.sensor_door_outlined,color: Colors.white,  size: 30,),
                ),
                Container(
                  height: 50,
                  width: 200,
                  alignment: Alignment.centerLeft,
                  child: const Text("Logout",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Colors.deepOrange
                  ),),
                ),

                
              ],
            ),







        ],
      ),
    );
  }
}
// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../../widgets/user_tickets.dart';

class Tickets extends StatelessWidget {
  const Tickets({super.key,
  
  });

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
            child: const Text("Tickets",style: TextStyle(
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
           Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            height:55 ,
            width: double.maxFinite,
            decoration: const BoxDecoration(
              color: Color.fromARGB(110, 158, 158, 158),
              borderRadius: BorderRadius.all(Radius.circular(30)),
            ),
            child: Row(children: [
                 Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: 180,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 248, 62, 5),
                    borderRadius: BorderRadius.all(Radius.circular(30))
                    ),
                  child: const Text("Pending",style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),),
                 ),

                

                 Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: 180,
                  child: const Text("Resolved",style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                  ),),
                 ),
            ]),
           ),
            Container(
              width: 400,
              height: 600,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: const [
                  UserTickets()
                ],
              ),
            ),
        ],
      ), 
    );
  }
}
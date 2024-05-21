// ignore_for_file: non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class UserCard extends  StatelessWidget {
  const UserCard({super.key,
      
      required this.title,
      required this.transfar_client,
      required this.place,
      required this.date,
      required this.progesscolor,
      required this.progessbackgroundcolor,
      required this.progesspercent,
      required this.workprogress,
    

      
  });
  final String title;
  final String transfar_client;
  final String place;
  final String date;
  final Color progesscolor;
  final Color progessbackgroundcolor;
  final double progesspercent;
  final String workprogress;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container(
          margin: const EdgeInsets.only(left: 20,right: 20),
          width: 400,
          height: 180,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(3, 3),
                ) ,
            ]
          ),
          child: Column(
           
            children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Container(
                  alignment: Alignment.center,
                  height: 57,
                  width: 140,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 4, 43, 150),
                    borderRadius: BorderRadius.only(topLeft: 
                    Radius.circular(25), bottomRight: Radius.circular(50))
                  ),
                  child:  Text(title, style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                  ),),
                ),
                Container(
                  height: 45,
                  margin: const EdgeInsets.only(right: 10,top: 15),
                  child:  Text(date,style: const TextStyle(
                    color: Color.fromARGB(255, 116, 115, 115),
                    fontSize: 15,
                    fontWeight: FontWeight.w700
                  ),),
                ),
               ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 15,top: 30),
                    height: 80,
                    width: 250,
                    child: Column(children: [
                            Container(
                              height: 30,
                              width: double.maxFinite,
                              child:  Text(transfar_client,style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),),
                            ),

                           Container(
                            height: 35,
                            width: double.maxFinite,
                            child:   Text(place,style: const TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                            ),),
                           ),

                    ]),
                  ),

                  Container(
                    width: 60,
                    height: 60,
                    padding: const EdgeInsets.all(4),
                   alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 10),
                    decoration: const BoxDecoration( 
                      borderRadius: BorderRadius.all(Radius.circular(60)),   
                      ),
                      child:  CircularPercentIndicator(
                          radius: 50,
                          progressColor:progesscolor ,
                          backgroundColor: progessbackgroundcolor,
                          percent: progesspercent,
                          lineWidth:6.5 ,
                          circularStrokeCap: CircularStrokeCap.round,
                          center: Text(workprogress,style: const TextStyle(fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w800),),
                      )
                  ),
              
                ],
              ),
            ],
          ),
         )
      ],
    ) ;
  }
}
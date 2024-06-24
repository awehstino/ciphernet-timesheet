// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class UserTicketCard extends  StatelessWidget {
  const UserTicketCard({super.key,
      
      required this.title,
      required this.sitesurvey,
      required this.place,
      required this.date,
      required this.backgroundcolor,
      required this.ticketType,
    

      
  });
  final String title;
  final String sitesurvey;
  final String place;
  final String date; 
  final Color backgroundcolor;
  final String ticketType;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Container(
          
          width: double.infinity,
          height: 180,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(1, 1),
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
                  decoration:  BoxDecoration(
                    color: backgroundcolor,
                    borderRadius: const BorderRadius.only(topLeft: 
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
                              child:  Text(sitesurvey,style: const TextStyle(
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
                    width: 80,
                    height: 30,
                   alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 10,),
                    decoration:  BoxDecoration( 
                      color: backgroundcolor,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),   
                      ),
                      child:  Text(ticketType,style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.black
                      ),)
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
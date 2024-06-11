// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ngcom/widgets/user_survey.dart';
import 'package:ngcom/widgets/user_tickets.dart';
import 'package:weather/weather.dart';
import 'package:provider/provider.dart';
import 'package:ngcom/widgets/usermodel.dart';
import 'package:ngcom/widgets/user_provider.dart';

// WeatherFactory wf = WeatherFactory("698f9404da815fe071e2614f7c22474a");

class UserMainScreen extends StatelessWidget {
  
  const UserMainScreen({super.key,});

  @override
  Widget build(BuildContext context) {

    final userProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      body: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.only(top:20 ),
        maintainBottomViewPadding: false,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 15, right: 15),
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                          width: 70,
                          height: 70,
                          margin: const EdgeInsets.only(right: 5),
                          child: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://picsum.photos/seed/picsum/200/300'),
                          )),
                      Column(
                        children: [
                          Container(
                            height: 30,
                            width: 200,
                            child:  Text(
                              '${userProvider.user?.fulname}',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  ),
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 200,
                            child:  Text(
                              '${userProvider.user?.email}',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                      // Container(
                      //   height: 60,
                      //   width: 100,
                      //   child: const Row(
                      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //     children: [
                      //       Icon(Icons.alarm,
                      //           color: Colors.deepOrange, size: 35),
                      //       Icon(Icons.alarm_add_sharp,
                      //           color: Colors.deepOrange, size: 35)
                      //     ],
                      //   ),
                      // )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Divider(
              height: 0.2,
              color: Colors.grey[500],
            ),
            SafeArea(
              left: true,
              right: true,
              minimum: const EdgeInsets.only(left: 18, right: 18),
              child: Container(
                width: double.infinity,
                height: 716,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: double.infinity,
                      height: 180,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              colors: [
                                Color.fromARGB(164, 240, 59, 5),
                                Color.fromARGB(164, 255, 153, 0)
                              ]),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                spreadRadius: 3,
                                offset: Offset(1, 4),
                                blurRadius: 5)
                          ]),
                      child: Column(children: [
                        Container(
                          height: 70,
                          width: double.infinity,
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 40,
                                width: 200,
                                child: const Text(
                                  "Total Job Orders",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                              ),
                              Container(
                                height: 60,
                                width: 60,
                                margin: const EdgeInsets.only(top:15),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1.5,
                                        color: Colors.deepOrange,
                                        style: BorderStyle.solid),
                                    borderRadius:
                                        const BorderRadius.all(Radius.circular(10))),
                                child: const Icon(
                                  Icons.format_list_bulleted_add,size: 30,
                                  color: Colors.deepOrange,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 70,
                          margin: const EdgeInsets.only(top: 20),
                          alignment: Alignment.center,
                          width: double.infinity,
                          child: const Text(
                            "150",
                            style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.w600,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ]),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 180,
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 3,
                                    offset: Offset(1, 4),
                                    blurRadius: 6)
                              ]),
                          child: const Column(
                            children: [],
                          ),
                        ),
                        Container(
                          width: 180,
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 3,
                                    offset: Offset(1, 4),
                                    blurRadius: 6)
                              ]),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 180,
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 3,
                                    offset: Offset(1, 4),
                                    blurRadius: 6)
                              ]),
                        ),
                        Container(
                          width: 180,
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 3,
                                    offset: Offset(1, 4),
                                    blurRadius: 6)
                              ]),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "In Progress",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            Text(
                              "View More",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.deepOrange),
                            ),
                          ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const UserSurvey(),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 40,
                      width: double.infinity,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Tickets",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                          Text(
                            "View All",
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                                color: Colors.deepOrange),
                          ),
                        ],
                      ),
                    ),
                    const UserTickets()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

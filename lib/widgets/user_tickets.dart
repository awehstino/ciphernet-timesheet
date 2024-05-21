import 'package:flutter/material.dart';
import 'package:ngcom/widgets/user_ticket_card.dart';

class UserTickets  extends StatelessWidget {
  const UserTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return    const Column(
      children: [
        SizedBox(height: 20,),
        UserTicketCard(
                  sitesurvey: "Transfer Of Client To New Radio" ,
                  place: "United Estate Lekki Ajah Axis",
                  title: "in progress",
                  date: "11th April,2024-10:45am" ,
                  backgroundcolor: Color.fromARGB(146, 9, 209, 36),
                  ticketType: "easy",
        ),
         SizedBox(height: 20,),
 
         UserTicketCard(
                  sitesurvey: "Transfer Of Client To New Radio" ,
                  place: "United Estate Lekki Ajah Axis",
                  title: "in progress",
                  date: "11th April,2024-10:45am" ,
                  backgroundcolor: Color.fromARGB(172, 209, 129, 9),
                  ticketType: "medium",
        ),
         SizedBox(height: 20,),

         UserTicketCard(
                  sitesurvey: "Transfer Of Client To New Radio" ,
                  place: "United Estate Lekki Ajah Axis",
                  title: "in progress",
                  date: "11th April,2024-10:45am" ,
                  backgroundcolor: Color.fromARGB(185, 209, 32, 9),
                  ticketType: "hard",
        ),
      ],
    );
  }
}
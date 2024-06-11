import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../presentation/signup/signup.dart';

class UserNotFound extends StatefulWidget {
  final String message;
  final String title;
  const UserNotFound({Key? key, required this.message, required this.title}) : super(key: key);

  @override
  State<UserNotFound> createState() => _UserNotFoundState();
}

class _UserNotFoundState extends State<UserNotFound> {
  @override
  void initState() {
    super.initState();
     Future.delayed(
      const Duration(milliseconds: 4000),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => SignupForm()), // Removed 'const' here
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Dialog(
       shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Stack(
      children: <Widget>[
        Container(
          padding:
              const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 16),
          margin: const EdgeInsets.only(top: 66),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 20),
               Text(
                widget.title,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(height: 16),
              Text(
                widget.message,
                style: const TextStyle(fontSize: 13, color: Colors.black),
                textAlign: TextAlign.center,
              ),
              
            ],
          ),
        ),
         
      ],
    );
  }
}
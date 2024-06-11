import 'package:flutter/material.dart';
import 'package:ngcom/presentation/login/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../responsive/dimension.dart';
import '../../widgets/fetchdata.dart';
import '../../widgets/popup.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _idNoController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isChecked = false;
  bool _obscureText = true;
  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

// Future _registered() async {
//     // const api = 'http://localhost/api/public/sign';
//     final  mydata = {
//       "name": _fullNameController.text,
//       "email": _emailController.text,
//       "companyid": _idNoController.text,
//       "password": _passwordController.text,
//     };
//     final response = await http.post(
//     Uri.parse('http://localhost/api/public/sign'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//     },
//     body: jsonEncode(<String, String>{
//       "name": _fullNameController.text,
//       "email": _emailController.text,
//       "companyid": _idNoController.text,
//       "password": _passwordController.text,
//     }),
//   );
//     if (response.statusCode == 201){
//       print('Response status: ${response.statusCode}');
//       print('Response body: ${response.body}');
//     } else {
//       // If the server did not return a 201 CREATED response,
//       // then throw an exception.
//       throw Exception('Failed to create album.');
//     }

//   }

  void _registered() async {
    var data = {
      "fulname": _fullNameController.text,
      "email": _emailController.text,
      "companyid": _idNoController.text,
      "password": _passwordController.text,
    };

    var url = Uri.parse('http://localhost/apiS/public/sign');
    // Convert data to JSON format
    var jsondata = json.encode(data);

    // Make the POST request
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          //'Authorization': 'Authorized',
        },
        body: jsondata,
      );
      // Check the status code for the result
      if (response.statusCode == 200) {
        print('Response status: ${response.statusCode}');
        print('Response body: ${response.body}');
      } else {
        throw Exception('Failed to load album');
      }
    } catch (e) {
      print('Request error: $e');
    }
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: Container(
                      //margin: const EdgeInsets.only(left: 20, right: 20),
                      height: 180,

                      decoration: const BoxDecoration(
                        color: Color.fromARGB(80, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(bottom: 5, top: 6),
                            alignment: Alignment.center,
                            child: const Text(
                              "Hello, There",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(
                              bottom: 5,
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              "Get Started",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            child: Container(
                              height: 50,
                              decoration: const BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(50))),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 160,
                                      height: 40,
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const LoginForm()));
                                        },
                                        child: const Text(
                                          "Login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width <=
                                                  390
                                              ? 160
                                              : 170,
                                      height: 40,
                                      margin: EdgeInsets.all(6),
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(50))),
                                      child: const Text(
                                        "Register",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 500,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25),)),
                    child: Column(children: [
                      const SizedBox(
                        height: 14,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 6),
                        height: 30,
                        width: double.infinity,
                        child: const Text(
                          "Create Your Account",
                          style: TextStyle(
                              fontSize: 23,
                              fontWeight: FontWeight.w900,
                              color: Colors.black),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 6),
                        height: 30,
                        width: double.infinity,
                        child: const Text(
                          "Make sure your account is keep secure",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey),
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                      Row(
                        children: [
                          
                        ],
                      ),
                      Row(
                        children: [],
                      ),

                    ]),
                  )
                ]),
          ),
      )
    );
  }
}

// ignore_for_file: non_constant_identifier_names, duplicate_ignore, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ngcom/presentation/login/login.dart';
import 'package:http/http.dart' as http;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
        const SizedBox(
          height: 40,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          height: 180,
          width: 350,
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
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                width: double.infinity,
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 173,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginForm()));
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
                        width: 173,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
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
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(children: [
            const SizedBox(
              height: 14,
            ),
            Container(
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 6),
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
              margin: const EdgeInsets.only(left: 10, right: 10, bottom: 6),
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
            Form(
                key: _formkey,
                child: Column(
                  children: [
                    Container(
                      height: 30,
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                      child: const Text(
                        "Full Name",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        controller: _fullNameController,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.deepOrange,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          enabled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.grey,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          hintText: "Enter your Name",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your name";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                      child: const Text(
                        "Email Address",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.deepOrange,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          enabled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: Colors.grey,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          hintText: "Enter your Email",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter an email address';
                          } else if (!RegExp(
                                  r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                              .hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                          // Return null if the input is valid
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                      child: const Text(
                        "Company id No",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        controller: _idNoController,
                        decoration: const InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 3,
                              color: Colors.deepOrange,
                              style: BorderStyle.solid,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(30),
                            ),
                          ),
                          enabled: true,
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: Colors.grey,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          hintText: "Id No",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please input your id";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 30,
                      width: double.infinity,
                      margin:
                          const EdgeInsets.only(bottom: 5, left: 10, right: 10),
                      child: const Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: TextFormField(
                        obscureText: _obscureText,
                        controller: _passwordController,
                        decoration: InputDecoration(
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 3,
                                color: Colors.deepOrange,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(30),
                              ),
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  width: 3,
                                  color: Colors.grey,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                            filled: true,
                            fillColor: const Color.fromARGB(31, 158, 158, 158),
                            hintText: "Enter your password ",
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                            ),
                            suffixIcon: IconButton(
                              icon: Icon(
                                size: 30,
                                _obscureText
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: _toggleObscureText,
                              tooltip: _obscureText
                                  ? "Show password"
                                  : "Hide passwod",
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please input your password";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(children: [
                        Transform.scale(
                          scale: 1.4,
                          child: Checkbox(
                              activeColor: Colors.deepOrange,
                              side: const BorderSide(
                                  width: 1.7,
                                  color: Colors.deepOrange,
                                  style: BorderStyle.solid),
                              value: _isChecked,
                              onChanged: (newValue) {
                                setState(() {
                                  _isChecked = newValue!;
                                });
                              }),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          height: 45,
                          width: 350,
                          child: const Text(
                            "I agree with the terms and conditions by creating an account.",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: double.infinity,
                      height: 70,
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.deepOrange)),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            _Registered();
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const CoolPopUp(
                                  message: 'You have successfully signuped!',
                                );
                              },
                            );
                          } else {
                            return;
                          }
                        },
                        child: const Text(
                          "Create Account",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    )
                  ],
                )),
          ]),
        )
      ]),
    );
  }

  Future _Registered() async {
    // ignore: non_constant_identifier_names
    var APIURL = "http://localhost/8000/phpfolder/signup.php";

    Map mydata = {
      "name": _fullNameController.text,
      "email": _emailController.text,
      "id": _idNoController.text,
      "password": _passwordController.text,
    };
    print(mydata);
    http.Response response = await http.post(Uri.https(APIURL), body: mydata);
    var data = jsonDecode(response.body);
    print(data);
  }
}

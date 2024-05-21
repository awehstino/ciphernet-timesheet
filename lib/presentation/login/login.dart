import 'package:flutter/material.dart';
import 'package:ngcom/presentation/signup/signup.dart';
import 'package:ngcom/widgets/successfullogin.dart';


class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
 }

class _LoginFormState extends State<LoginForm> {
   
    final _formkey = GlobalKey<FormState>();
    final TextEditingController _usernameController = TextEditingController();
    
    final TextEditingController _passwordController = TextEditingController();
    bool _isChecked = false;
    bool  _obscureText = true;
    void _toggleObscureText(){
      setState(() {
        _obscureText = !_obscureText;
        
      });
    }



    @override
    Widget build(BuildContext context){
      return Scaffold(
      backgroundColor: Colors.deepOrange,
          body: ListView(
            scrollDirection: Axis.vertical,

            children: < Widget> [
              const SizedBox(height: 40,),
              Container(
                margin: const EdgeInsets.only(left: 20,right: 20),
                height: 180,
                width: 350,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(80, 255, 255, 255),
                   borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 5,top: 6),
                      alignment: Alignment.center,
                      child: const Text("Hello, There", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 5,),
                      alignment: Alignment.center,
                      child: const Text("Welcome Back.", style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),),
                    ),
                    Container(margin: const EdgeInsets.only(left: 5,right: 5),
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      
                      Container(
                        width: 173,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                           color: Colors.white,
                          borderRadius:BorderRadius.all(Radius.circular(50)) ),
                          child: const Text("Login",style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                          ),),

                      ),
                      Container(
                        width: 173,
                        height: 40,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          
                          borderRadius:BorderRadius.all(Radius.circular(50)) ),
                          child: GestureDetector(
                             onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupForm()) );
                                  },
                            child: const Text("Register",style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                          ),),
                          )

                      )
                    ]),
                    ),
                   
                  ],
                ),
              ),

              const SizedBox(height: 40,),
                    Container(
                      
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft:
                         Radius.circular(25),topRight: 
                         Radius.circular(25))
                        ),
                        child: Column(
                          children: [
                            const SizedBox(height: 14,),
                            Container(
                               margin: const EdgeInsets.only(left: 20, right: 20, bottom: 6),
                               height: 30,
                               width: double.infinity,
                               child: const Text("Login to your Account", style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w900,
                                color: Colors.black
                               ),),
                            ),
                            Container(
                               margin: const EdgeInsets.only(left: 20, right: 20, bottom: 6),
                               height: 30,
                               width: double.infinity,
                               child: const Text("Make sure your account is keep secure", style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey
                               ),),
                            ),
                           const SizedBox(height: 60,),
                           Form(
                            key: _formkey,
                            child: Column(
                                children: [
                                  Container(
                                    height: 30,
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(bottom: 5,left: 20,right: 20),
                                    child: const Text("User Name", style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400, 
                                    color: Colors.black),),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 10,right: 10),
                                    child: TextFormField(
                                      controller: _usernameController,
                                      decoration: const InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                           borderSide: BorderSide(
                                            width: 3,
                                            color: Colors.deepOrange,
                                            style: BorderStyle.solid,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(30),
                                        ) ,
                                        ),
                                        enabled: true,
                                      border:OutlineInputBorder(
                                        
                                           borderSide: BorderSide(
                                            width: 3,
                                            color: Colors.grey,
                                            style: BorderStyle.solid,
                                          
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(30),
                                        ) ,
                                         
                                        ),
                                        hintText: "Enter your username",
                                        hintStyle: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                     validator: (value){
                                      
                                       if(value!.isEmpty){
                                        return "please input your username";
                                      }
                                      return null;
                                     },
                                      ),
                                  ),
                                  
                                  const SizedBox(height: 10.0,),
                                   Container(
                                    height: 30,
                                    width: double.infinity,
                                    margin: const EdgeInsets.only(bottom: 5,left: 10,right: 10),
                                    child: const Text("Password", style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400, 
                                    color: Colors.black),),
                                  ),

                                  Container(
                                    margin: const EdgeInsets.only(left: 10,right: 10),
                                    child: TextFormField(
                                      
                                      controller: _passwordController,
                                      obscureText: _obscureText,
                                      decoration: InputDecoration(
                                         focusedBorder: const OutlineInputBorder(
                                           borderSide: BorderSide(
                                            width: 3,
                                            color: Colors.deepOrange,
                                            style: BorderStyle.solid,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(30),
                                        ) ,
                                        ),
                                        border: const OutlineInputBorder(
                                          
                                          borderSide: BorderSide(
                                            width: 3,
                                            color: Colors.grey,
                                          ),
                                         borderRadius: BorderRadius.all(Radius.circular(30)) 
                                        ),
                                        filled: true,
                                        fillColor: const Color.fromARGB(31, 158, 158, 158),
                                        hintText: "Enter your password ",
                                        hintStyle: const TextStyle(
                                          color: Colors.grey,
                                          fontSize: 19,
                                          fontWeight: FontWeight.w400,
                                        ),
                                        suffixIcon: IconButton(
                                          
                                           focusColor: Colors.deepOrange,
                                         icon: Icon(
                                          size: 30,
                                           _obscureText ? Icons.visibility_off :
                                          Icons.visibility,
                                          
                                          
                                         ),
                                          onPressed: _toggleObscureText,
                                          tooltip: _obscureText 
                                          ? "Show password"
                                          : 
                                          "Hide passwod",
                                          )
                                      ),
                                      validator: (value){
                                        if (value!.length <= 7) {
                                          return "please your password most not be less than seven ";
                                        }
                                      
                                      return null;
                                     },
                                    ),
                                  ),
                                  Container(
                                    width: double.maxFinite,
                                    margin: const EdgeInsets.only(left: 10,right: 10),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      const SizedBox(height: 40,),
                                  Container(
                                    width: 220,
                                    margin: const EdgeInsets.only(left: 10,right: 10),
                                    child: Row(
                                      children: [  
                                      Transform.scale(
                                        scale: 1.4,
                                        child: Checkbox(
                                        
                                        activeColor: Colors.deepOrange,
                                        side: const BorderSide(width: 1.7,
                                        color: Colors.deepOrange,
                                        style: BorderStyle.solid),
                                        value: _isChecked, onChanged: (newValue){
                                        setState(() {
                                          _isChecked = newValue!;
                                        });
                                      }),
                                      ),
                                      
                                      Container(
                                        margin: const EdgeInsets.only(left:8 ),
                                        child: const Text("Stay Logged.",style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color:Colors.black,
                                      ),),
                                      ),
                                    ]),
                                  ),
                                    
                                  const Text("forgot  Password?", style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.deepOrange,
                                  ),),
                                    ]),
                                  ),
                              const SizedBox(height: 97,),
                              Container(
                                width: double.infinity,
                                height: 70,
                                margin: const EdgeInsets.only(left: 10,right: 10,),
                                child: ElevatedButton(
                                  style: const ButtonStyle(

                                    backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)
                                  ),
                                  onPressed: (){
                                    if (_formkey.currentState!.validate()) {
                                       showDialog(
                                  context: context,
                                       builder: (BuildContext context) {
                               return const successfully(
                                message: 'You have successfully Logged in!',
                    );
                  },
                );
                                    }
                                  }, child:
                                const Text("Login", style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),) ,),
                              ),
                              const SizedBox(height: 100,),
                                ],
                           )),
                        ]),
                    )
          ]),
      );
    }
  }
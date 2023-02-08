import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isConfirmed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 189, 234),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Stack(
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                  width: MediaQuery.of(context).size.width*0.8,
                  height: MediaQuery.of(context).size.height*0.8,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 73, 171, 252),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 205,top: 20),
                        child : Text("Sign Up",
                        style : TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          
                        ))
                        ),
                       SizedBox(
                        height: 20,
                       ),
                       Container(
                        margin: EdgeInsets.only(left: 15,right: 15,top : 10),
                        padding: EdgeInsets.only(left: 20,right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200]
                        ),
                        alignment: Alignment.center,
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.cyan,
                            ),
                            hintText: "Enter Username",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          )
                          ),
                        ),
                       Container(
                        margin: EdgeInsets.only(left: 15,right: 15,top : 20),
                        padding: EdgeInsets.only(left: 20,right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200]
                        ),
                        alignment: Alignment.center,
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.mail,
                              color: Colors.cyan,
                            ),
                            hintText: "Enter Email",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          )
                          ),
                        ),      
                       Container(
                        margin: EdgeInsets.only(left: 15,right: 15,top : 20),
                        padding: EdgeInsets.only(left: 20,right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200]
                        ),
                        alignment: Alignment.center,
                        child: TextField(
                          obscureText: true,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.password,
                              color: Colors.cyan,
                            ),
                            hintText: "Enter Password",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          )
                          ),
                        ),
                       Container(
                        margin: EdgeInsets.only(left: 15,right: 15,top : 20),
                        padding: EdgeInsets.only(left: 20,right: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey[200]
                        ),
                        alignment: Alignment.center,
                        child: TextField(
                          obscureText: true,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.password,
                              color: Colors.cyan,
                            ),
                            hintText: "Confirm Password",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          )
                          ),
                        ),
                       GestureDetector(
                         onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Kayıt Olundu!")));

                         },
                         child: Container(
                          margin: EdgeInsets.only(left: 15,right: 15,top : 20),
                          padding: EdgeInsets.only(left: 20,right: 20),
                          alignment: Alignment.center,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[200]
                          ),
                          child: Text(
                            "Kayıt Ol",
                            style: TextStyle(
                              color: Colors.grey[0],
                              fontSize: 20,
                            ),
                          ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                            width: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(value: isConfirmed, 
                              onChanged: (value) {
                                if(value != null){
                                  setState(() {
                                    isConfirmed = value;
                                  });
                                }
                              },
                              fillColor: MaterialStateProperty.resolveWith((states) => Colors.black),
                              activeColor: Colors.black,
                              checkColor: Colors.white,),
                              RichText(
                                  text: TextSpan(
                                    text: "Terms of Use",
                                    style: TextStyle(fontSize: 18,color: Colors.black,decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()..onTap =() {
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Terms of use")));

                                    },
                                    ),
                              ),
                              RichText(
                                  text: TextSpan(
                                    text: " and ",
                                    style: TextStyle(fontSize: 18,color: Colors.black),
                                    ),
                              ),

                              RichText(
                                  text: TextSpan(
                                    text: "Privacy Policy",
                                    style: TextStyle(fontSize: 18,color: Colors.black,decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()..onTap =() {
                                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Privacy Policy")));

                                    },
                                    ),
                              ),                              
                            ],
                          ),
                        ]
                        ),  
                        ),
                    ],
                  ),
                ),
                
                ],
              ),
      ),
          );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

import 'package:loginform/signin.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [





                    Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(0, 25, 0, 0)),
                        Container(

                          alignment: Alignment.center,
                          child:Text('Sign In',style: TextStyle(
                              fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue
                          ),),

                        )

                      ],
                    ) ,
              SizedBox(
                height: 2,
              ),
              Column(
                children: [
                  
                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: Text('Email') ,
                  )

                ],
              ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                        Container(
                          height: 80,
                          padding: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: TextField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'email',
                            ),
                          ),



                        )

                      ],
                    ) ,

              SizedBox(
                height: 2,
              ),
              Column(
                children: [

                  Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    alignment: Alignment.centerLeft,
                    child: Text('Passwoed') ,
                  )

                ],
              ),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                        Container(
                          height: 80,
                          padding: EdgeInsets.all(20),
                          alignment: Alignment.center,
                          child: TextField(
                            obscureText: true,
                            controller: passwordController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'password',
                            ),
                          ),



                        )

                      ],
                    ) ,

                    Column(
                      children: [
                        TextButton(onPressed: (){},
                          child: Text('Forget Possword?',style: TextStyle(
                              fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 15
                          ),),
                        ),

                      ],
                    ) ,
                    Column(
                      children: [
                        Container(
                            height: 50,
                            width:double.infinity,
                            padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                            child: ElevatedButton(
                              child: const Text('✔ Login',style: TextStyle(
                                fontSize: 15,
                              ),),
                              onPressed: () {
                                print(nameController.text);
                                print(passwordController.text);
                              },
                            )
                        ),

                      ],
                    ) ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(30)),
                        Text('Does not have account?'),
                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SecondRoute()),
                          );
                        },
                          child: Text('Sign in',style: TextStyle(
                              fontWeight: FontWeight.bold,color: Colors.blueAccent,fontSize: 15
                          ),),
                        ),

                      ],

                ),


            ],
          ),
        ),
      ),
    );
  }
}

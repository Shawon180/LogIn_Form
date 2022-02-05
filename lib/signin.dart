import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  _SecondRouteState createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  TextEditingController firstnameController=TextEditingController();
  TextEditingController lastnameController=TextEditingController();
  TextEditingController nameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(

            child: Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:Container(
                         color: Colors.white,
                    child: Column(

                      children: [


                        SizedBox(
                          height: 7,
                        ),
Column(
  mainAxisAlignment: MainAxisAlignment.start,
  children: [
    Container(
      alignment: Alignment.centerLeft,
      child: Text('First Name',style: TextStyle(color: Colors.black),) ,
    )

  ],
),
                        Column(
                          children: [
                            Container(
                              height: 50,
                              padding: EdgeInsets.all(7),

                              child: TextField(
                                controller: firstnameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'First Name',
                                  hoverColor: Colors.white
                                ),
                              ),
                            )
                          ]
                        ) ,

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('Last Name',style: TextStyle(color: Colors.black),) ,
                            )

                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                            Container(
                              height: 50,
                              padding: EdgeInsets.all(7),
                              alignment: Alignment.center,
                              child: TextField(
                                controller: lastnameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Last Name',

                                ),
                              ),
                            )
                          ],
                        ) ,

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('Email Name',style: TextStyle(color: Colors.black),) ,
                            )

                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                            Container(
                              height: 50,
                              padding: EdgeInsets.all(7),
                              alignment: Alignment.center,
                              child: TextField(
                                controller: nameController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Email Name',
                                ),
                              ),
                            )
                          ],
                        ) ,

                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text('Possword',style: TextStyle(color: Colors.black),) ,
                            )

                          ],
                        ),
                        Column(
                          children: [
                            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                            Container(
                              height: 50,
                              padding: EdgeInsets.all(7),
                              alignment: Alignment.center,
                              child: TextField(
                                obscureText: true,
                                controller: passwordController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                ),
                              ),

                            )

                          ],
                        ) ,

                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(7)),
                            Container(
                                height: 40,
                                color: const Color(0xff4267B2),
                                width:250,
                                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),

                                child: TextButton(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.facebook,size: 20,color: Colors.white,),
                                      SizedBox(
                                        width: 1,
                                      ),
                                      Text('Facebook',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ],
                                  ),
                                  onPressed: () {
                                    print(nameController.text);
                                    print(passwordController.text);
                                  },
                                )
                            ),

                          ],
                        ) ,
   SizedBox(
  height: 1,
  ),
                        Column(
                          children: [
                            Text('Or',style: TextStyle(
                              color: Colors.black54,fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),




                        Column(
                          children: [
                            Padding(padding: EdgeInsets.all(7)),
                            Container(
                                height: 40,
                                color: Color(0xffDB4437),
                                width:250,
                                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                                child: TextButton(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.g_mobiledata_rounded,size: 30,color: Colors.white,),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Google',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                    ],
                                  ),
                                  onPressed: () {
                                    print(nameController.text);
                                    print(passwordController.text);
                                  },
                                )
                            ),

                          ],
                        ) ,
SizedBox(
  height: 20,
),
                        Column(
                          children: [
                            Container(
                                height: 40,
                                width:double.infinity,
                                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                                child: ElevatedButton(

                                  child: const Text('✔️  Sign Up',style: TextStyle(
                                    fontSize: 20,
                                  ),),
                                  onPressed: () {
                                    print(nameController.text);
                                    print(passwordController.text);
                                  },
                                )
                            ),

                          ],
                        ) ,




                      ],
                    ),
                  )
              ),

          ),
        ),
      ),
    );
  }
}

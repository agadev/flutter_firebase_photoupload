import 'dart:async';
import 'dart:io';


import 'package:flutter/material.dart';
import 'package:imageupload/home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new DemoApp(),
      routes: <String, WidgetBuilder> { //5
        '/demo': (BuildContext context) => new DemoApp(), //6
        '/home' : (BuildContext context) => new MyHomePage() //7
      },
    );
  }
}



class InputBox extends StatelessWidget {
  final String hint;

  InputBox({this.hint});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50.0,
      width: 300.0,
      margin:  EdgeInsets.all(5.0),
      padding:  EdgeInsets.only(left: 10.0),
      alignment: Alignment.center,
      color: Colors.white,
      child:  TextFormField(
        decoration:  InputDecoration(
          hintText: hint,
          hintStyle:  TextStyle(
              fontSize: 18.0,
              color:  Color.fromRGBO(0, 153, 145, 1.0),
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w100),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  DemoAppState createState() =>  DemoAppState();
}

class DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:  Scaffold(
        //drawer:  Drawer(),
          backgroundColor:  Color.fromRGBO(242, 242, 242, 1.0),
          appBar:  AppBar(
            centerTitle: true,
            title:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  '+Add',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w300),
                ),
                const Text('Just',
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                    )),
              ],
            ),
            backgroundColor: const Color.fromRGBO(217, 217, 217, 1.0),
            elevation: 0.0,
          ),
          body: Center(
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin:  EdgeInsets.only(top: 35.0, bottom: 12.0),
                  child: const Text(
                    'Welcome',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        letterSpacing: 0.2,
                        fontWeight: FontWeight.w100),
                  ),
                ),
                Container(
                  margin:  EdgeInsets.only(bottom: 35.0),
                  child: const Text(
                    'Please fill few details to get started.',
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 11.0,
                        //letterSpacing: 0.8,
                        fontWeight: FontWeight.w200),
                  ),
                ),
                InputBox(
                  hint: "Company Name",
                ), //Company
                InputBox(
                  hint: "Your Name",
                ), //Name
                InputBox(
                  hint: "Email",
                ), //Email
                InputBox(hint: "Choose Password"), //Password

                new GestureDetector(
                  
                  onTap: (){


                    Navigator.of(context).pushNamed('/home'); //2
                  },
                  child: Container(
                      height: 50.0,
                      width: 300.0,
                      margin:  EdgeInsets.only(top: 20.0, bottom: 30.0),
                      padding:  EdgeInsets.only(left: 10.0),
                      alignment: Alignment.center,
                      color:  Color.fromRGBO(0, 153, 145, 1.0),
                      child:  Text(
                        "Let's get started",
                        style:  TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            letterSpacing: -0.9),
                      )),
                ),
                const Text(
                  'Already have an account?',
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      letterSpacing: -0.5,
                      fontWeight: FontWeight.w100),
                ),
                const Text(
                  'Log In here.',
                  style: const TextStyle(
                      color: const Color.fromRGBO(0, 153, 145, 1.0),
                      fontSize: 18.0,
                      letterSpacing: -0.9,
                      fontWeight: FontWeight.w200),
                ),
              ],
            ),
          )),
    );
  }
}

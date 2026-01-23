import 'package:flutter/material.dart';
import 'routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
        body: Center(
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container( // TEXT HEY THERE!-------------------------------------------------------------------------------------------
                margin: const EdgeInsets.only(top: 150.0),
                child: const Text(
                  'Hey there!',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Container( // TEXT WELCOME BACK-------------------------------------------------------------------------------------------
                margin: const EdgeInsets.only(bottom:50.0),
                child: const Text(
                  'Create an Account',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container( // USERNAME INPUT-------------------------------------------------------------------------------------------
                width: 350,
                child: TextFormField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey, width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.blue, width: 3)
                    ),
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Container( //PASSWORD INPUT-------------------------------------------------------------------------------------------
                width: 350,
                margin: EdgeInsets.only(top: 30),
                  child: TextFormField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey, width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.blue, width: 3)
                    ),
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
               ),
               Container( //PASSWORD INPUT-------------------------------------------------------------------------------------------
                width: 350,
                margin: EdgeInsets.only(top: 30),
                  child: TextFormField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey, width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.blue, width: 3)
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
               ),
               Container( //PASSWORD INPUT-------------------------------------------------------------------------------------------
                width: 350,
                margin: EdgeInsets.only(top: 30),
                  child: TextFormField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.grey, width: 2)
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.blue, width: 3)
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
               ),
              Container( //BUTTON LOGIN-------------------------------------------------------------------------------------------
                margin: const EdgeInsets.only(top:70),

                width: 350,
                child: ElevatedButton(
                  child: const Text("Sign Up"),
                  onPressed: (){
                    Navigator.pushNamed(context, Routes.LoginPage);
                  },
                  style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 13),
                  textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(7),
                  ),
                  elevation: 5,
                  shadowColor: Colors.black.withOpacity(0.5)
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}
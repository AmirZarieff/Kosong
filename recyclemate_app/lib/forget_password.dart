import 'package:flutter/material.dart';
import 'routes.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
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
                margin: const EdgeInsets.only(bottom:70.0),
                child: const Text(
                  'I Forgor!',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container( //BUTTON LOGIN-------------------------------------------------------------------------------------------
                margin: const EdgeInsets.only(top:70),

                width: 350,
                child: ElevatedButton(
                  child: const Text("GO BACK"),
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
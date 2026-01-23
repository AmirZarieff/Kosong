
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'routes.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var rememberMe= true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
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
                  'Welcome Back',
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
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
               ),
               SizedBox(height: 12),
               Row(// REMEMBER ME CHECKBOX AND FORGOT PASSWORD---------------------------------------------------------------------
                children: [
                  SizedBox(width: 30),
                  Checkbox(
                    value: rememberMe,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    },
                    checkColor: Colors.white, // Color of the check icon
                    fillColor: MaterialStateProperty.resolveWith((states) {
                      if (states.contains(MaterialState.selected)) {
                        return Colors.black; // Background when checked
                      }
                      return Colors.white; // Background when unchecked
                    }),
                  ),
                  Text(
                    "Remember me",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                  Spacer(),
                TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.ForgetPassword);
                },
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(width: 30)
                ],
               ),

              Container( //BUTTON LOGIN-------------------------------------------------------------------------------------------
                margin: const EdgeInsets.only(top:70),

                width: 350,
                child: ElevatedButton(
                  child: const Text("Login"),
                  onPressed: (){
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
              Container(
                margin: EdgeInsets.only(top: 15),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Do not have an account yet? ',
                        style: TextStyle (
                          color: Colors.black
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Colors.blueAccent,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                        ),
                        recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, Routes.RegisterPage);
                          print('Sign Up Tapped');
                        }
                      )
                    ]
                  )
                )
              ),
            ],
          ),
        ),
    );
  }
}

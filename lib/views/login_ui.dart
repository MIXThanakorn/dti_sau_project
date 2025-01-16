// ignore_for_file: sort_child_properties_last

import 'package:dti_sau_project/views/signup_ui.dart';
import 'package:flutter/material.dart';

class LoginUi extends StatefulWidget {
  const LoginUi({super.key});

  @override
  State<LoginUi> createState() => _LoginUiState();
}

class _LoginUiState extends State<LoginUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: MediaQuery.of(context).size.width * 0.09,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/images/logo.png',
                    height: MediaQuery.of(context).size.height * 0.27),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome Back,',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.035,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Make it work,make it right,make it fast.',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height * 0.019,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person_2_outlined),
                  hintText: 'E-mail',
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.fingerprint_outlined),
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'SIGNUP',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
                      MediaQuery.of(context).size.height * 0.05),
                  backgroundColor: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text('OR'),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/googlelogo.png',
                        height: MediaQuery.of(context).size.height * 0.025),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    Text(
                      'Sign in with Google',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  fixedSize: Size(MediaQuery.of(context).size.width * 0.9,
                      MediaQuery.of(context).size.height * 0.05),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an Account? ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    child: Text(
                      'Signup',
                      style: TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupUi(),
                        ),
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

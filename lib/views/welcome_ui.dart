// ignore_for_file: sort_child_properties_last

import 'package:dti_sau_project/views/login_ui.dart';
import 'package:dti_sau_project/views/signup_ui.dart';
import 'package:flutter/material.dart';

class WelcomeUi extends StatefulWidget {
  const WelcomeUi({super.key});

  @override
  State<WelcomeUi> createState() => _WelcomeUiState();
}

class _WelcomeUiState extends State<WelcomeUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.8,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Text(
              'DTI SAU APP 2025',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.03,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Southeast Asia University',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Created by MIXThanakorn DTI SAU',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.025,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginUi(),
                      ),
                    );
                  },
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.36,
                        MediaQuery.of(context).size.height * 0.05),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.height * 0.015,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignupUi(),
                      ),
                    );
                  },
                  child: Text(
                    'SIGNUP',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    fixedSize: Size(MediaQuery.of(context).size.width * 0.36,
                        MediaQuery.of(context).size.height * 0.05),
                    backgroundColor: Colors.black,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

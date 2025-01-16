import 'package:dti_sau_project/views/welcome_ui.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    Dti_Sau()
  );
}

class Dti_Sau extends StatefulWidget {
  const Dti_Sau({super.key});

  @override
  State<Dti_Sau> createState() => _Dti_SauState();
}

class _Dti_SauState extends State<Dti_Sau> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeUi(),
    );
  }
}
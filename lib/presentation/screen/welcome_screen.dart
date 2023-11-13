import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade50
      ,
      body: Container(
        
        child: Center(child: Text("Welcome page")),
      ),//color: Colors.yellow.shade50,
      
      
    );
  }
}
import 'package:clinic/screens/appointment_screen.dart';
import 'package:clinic/screens/home_screen.dart';
import 'package:clinic/screens/on_boarding.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'appoint' : (context)=>AppointmentScreen(),
        'home' : (context)=>HomeScreen(),
      },
      home:  OnboardingScreen(),
    );
  }
}



import 'package:flutter/material.dart';
import 'arthmetic_screen.dart';
import 'simpleinterest_screen2.dart';
import 'dashboard.dart';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/add': (context) => SimpleCalculator(),
        '/simple': (context) => SimpleInterest2(),
      },
      
    ),
  );
}

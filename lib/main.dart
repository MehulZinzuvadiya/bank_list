import 'package:bank_list/bankDetails.dart';
import 'package:bank_list/splashScreen.dart';
import 'package:flutter/material.dart';

import 'homeScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) =>SplashScreen(),
      'home':(context) => HomeScreen(),
      'details':(context) => BankDetails(),
    },

  ));
}
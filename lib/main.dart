import 'package:flutter/material.dart';

import 'screens/WelcomeScreen.dart';
import 'screens/HomePageScreen.dart';


void main() => runApp(MaterialApp(
  //home: WelcomeScreen(),
  initialRoute: WelcomeScreen.id,
  routes:{
    WelcomeScreen.id: (context) => WelcomeScreen(),
    HomePage.id: (context) => HomePage(),
  },
  debugShowCheckedModeBanner: false,
));

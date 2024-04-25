//main.dart
import 'package:flutter/material.dart';
import 'package:test1/screens/account_screen.dart';
import 'package:test1/screens/activity_screen.dart';
import 'package:test1/screens/adress_screen.dart';
import 'package:test1/screens/help_screen.dart';
import 'package:test1/screens/home_screen.dart';

void main(){
   GozemCloneApp app = GozemCloneApp();
  runApp(app);
  
}

class GozemCloneApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "GozemCloneApp",
      home: HomeScreen(),
      routes: {
        '/page_acceuil': (context) => HomeScreen(),
        '/page_aide': (context) => HelpScreen(),
        '/page_adresse': (context) => AdresseScreen(),
        '/page_activite': (context) => ActivityScreen(),
        '/page_compte': (context) => AccountScreen(),

      },

    );
  }
}
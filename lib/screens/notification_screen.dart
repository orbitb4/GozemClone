import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import du package carousel_slider

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              // leading: Image.asset(
              //   "assets/images/shop.png",
              //   width: 30,
              //   height: 30,
              // ),
              title: Text("Mes commandes"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Food, shopping, etc."),
                  Text("Food, shopping, etc."),
                ],
              ),
              dense: true,
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Divider(
              height: 4,
              thickness: 1,
              color: Colors.grey,
              indent: 20,
            ),
            ListTile(
              // leading: Image.asset(
              //   "assets/images/road3.png",
              //   width: 30,
              //   height: 30,
              // ),
              title: Text("Mes courses"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Food, shopping, etc."),
                  Text("Food, shopping, etc."),
                ],
              ),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            Divider(
              height: 4,
              thickness: 1,
              color: Colors.grey,
              indent: 20,
            ),


          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Image.asset("assets/images/home.png"),
      //       label: "Acceuil",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.support_agent_outlined),
      //       label: "Aide",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.location_on_outlined),
      //       label: "Adresses",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.access_time_outlined),
      //       label: "Activités",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_outlined),
      //       label: "Compte",
      //     ),
      //   ],
      //   backgroundColor: Colors.white,
      //   elevation: 10.5,
      //   selectedItemColor: Colors.green,
      //   unselectedItemColor: Colors.black,
      //   selectedIconTheme: IconThemeData(color: Colors.green),
      //   unselectedIconTheme: IconThemeData(color: Colors.red),
      //   selectedLabelStyle: TextStyle(color: Colors.green),
      //   // Set label color when selected
      //   unselectedLabelStyle: TextStyle(color: Colors.black),
      //   // Set label color when unselected
      //   showSelectedLabels: true,
      //   showUnselectedLabels: true,
      //   onTap: (int i){
      //     switch (i) {
      //       case 0:
      //         Navigator.pushNamed(context, '/page_acceuil');
      //         break;
      //       case 1:
      //         Navigator.pushNamed(context, '/page_aide');
      //         break;
      //       case 2:
      //         Navigator.pushNamed(context, '/page_adresse');
      //         break;
      //       case 3:
      //         Navigator.pushNamed(context, '/page_activite');
      //         break;
      //       case 4:
      //         Navigator.pushNamed(context, '/page_compte');
      //         break;
      //     }
      //   },
      // ),
    );
  }
}

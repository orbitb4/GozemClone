import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import du package carousel_slider

class AccountScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compte'),
      ),
      body: Column(
        children: [
          Container(
            width: 350,
            height: 80,
            margin: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.lightBlueAccent,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 20,
                  // Position verticale du bouton à partir du haut du Container
                  right: 10,
                  // Position horizontale du bouton à partir de la droite du Container
                  child: ElevatedButton(
                    onPressed: () {
                      // Action à effectuer lors du clic sur le bouton
                    },
                    child: Text('+  Recharger'), // Texte du bouton
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25,
                          vertical: 8), // Ajustez la taille du bouton
                    ),
                  ),
                ),

              ],
            ),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/shop.png",
              width: 30,
              height: 30,
            ),
            title: Text("Mes commandes"),
            subtitle: Text("Food, shopping, etc."),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/road3.png",
              width: 30,
              height: 30,
            ),
            title: Text("Mes courses"),
            subtitle: Text("Transport"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/a.png",
              width: 30,
              height: 30,
            ),
            title: Text("Mes commandes de coursier"),
            subtitle: Text("Envoie et reception de colis"),
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
          ListTile(
            leading: Image.asset(
              "assets/images/a.png",
              width: 30,
              height: 30,
            ),
            title: Text("Mes commandes dispatcher"),
            subtitle: Text("Envoie et reception de colis"),
            isThreeLine: true,
            trailing: Icon(Icons.arrow_forward_ios_outlined),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/home.png"),
            label: "Acceuil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.support_agent_outlined),
            label: "Aide",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: "Adresses",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time_outlined),
            label: "Activités",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Compte",
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 10.5,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.green),
        unselectedIconTheme: IconThemeData(color: Colors.red),
        currentIndex: 4,
        selectedLabelStyle: TextStyle(color: Colors.green),
        // Set label color when selected
        unselectedLabelStyle: TextStyle(color: Colors.black),
        // Set label color when unselected
        showSelectedLabels: true,
        showUnselectedLabels: true,
        onTap: (int i){
          switch (i) {
            case 0:
              Navigator.pushNamed(context, '/page_acceuil');
              break;
            case 1:
              Navigator.pushNamed(context, '/page_aide');
              break;
            case 2:
              Navigator.pushNamed(context, '/page_adresse');
              break;
            case 3:
              Navigator.pushNamed(context, '/page_activite');
              break;
            case 4:
              Navigator.pushNamed(context, '/page_compte');
              break;
          }
        },
      ),
    );
  }
}

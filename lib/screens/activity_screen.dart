import 'package:flutter/material.dart';


class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Activités"),
            bottom: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.green,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(
                  text: "En cours",
                ),
                Tab(
                  text: "Historique",
                )
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Column(
                children: [
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
            selectedIconTheme: IconThemeData(color: Colors.green),
            unselectedIconTheme: IconThemeData(color: Colors.red),
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.black,
            currentIndex: 3,
            selectedLabelStyle: TextStyle(color: Colors.green),
            // Set label color when selected
            unselectedLabelStyle: TextStyle(color: Colors.black),
            // Set label color when unselected
            showSelectedLabels: true,
            showUnselectedLabels: true,
            onTap: (int i) {
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
        ));
  }
}

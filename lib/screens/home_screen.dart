import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:carousel_slider/carousel_slider.dart'; // Import du package carousel_slider

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Image.asset(
            "assets/images/R.png",
            width: 160,
            height: 160,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                width: 60,
                height: 45,
                child: Stack(
                  children: [
                    Positioned.fill(child: Icon(Icons.notifications)),
                    Positioned(
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.red),
                        child: Center(
                            child: Text(
                          "8",
                          style: TextStyle(color: Colors.white),
                        )),
                      ),
                      right: 15,
                      top: 5,
                    )
                  ],
                ),
              ),
            )
          ],
          leading: CircleAvatar(
            backgroundImage: AssetImage("assets/images/account1.png"),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 350,
              height: 180,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: ImageSlideshow(
                  /// Width of the [ImageSlideshow].
                  width: double.infinity,

                  /// Height of the [ImageSlideshow].
                  height: 200,

                  /// The page to show when first creating the [ImageSlideshow].
                  initialPage: 0,

                  /// The color to paint the indicator.
                  indicatorColor: Colors.blue,

                  /// The color to paint behind th indicator.
                  indicatorBackgroundColor: Colors.grey,

                  /// The widgets to display in the [ImageSlideshow].
                  /// Add the sample image file into the images folder
                  children: [
                    Image.asset(
                      "assets/images/image1.jpg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/1.jpeg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/2.jpeg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/3.jpeg",
                      fit: BoxFit.cover,
                    ),
                    Image.asset(
                      "assets/images/4.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ],

                  /// Called whenever the page in the center of the viewport changes.
                  onPageChanged: (value) {
                    print('Page changed: $value');
                  },

                  /// Auto scroll interval.
                  /// Do not auto scroll with null or 0.
                  autoPlayInterval: 3000,

                  /// Loops back to first slide.
                  isLoop: true,
                ),
              ),
            ),
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

            Container(
              margin: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/moto.png",
                        width: 60,
                        height: 60,
                      ),
                      'Moto',
                      ''),
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/Car.png",
                        width: 45,
                        height: 45,
                      ),
                      'Voiture',
                      ''),
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/tricycle.png",
                        width: 50,
                        height: 50,
                      ),
                      'Tricycle',
                      ''),
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/Car.png",
                        width: 45,
                        height: 45,
                      ),
                      "Course ",
                      "à l'heure"),
                ],
              ),
            ),
            // SizedBox(height: 20), // Espacement entre les lignes

            Container(
              margin: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/phone.png",
                        width: 45,
                        height: 45,
                      ),
                      'Recharger',
                      ''),
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/Coursier.png",
                        width: 45,
                        height: 45,
                      ),
                      'Coursier',
                      ''),
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/ticket.png",
                        width: 45,
                        height: 45,
                      ),
                      'Billeterie',
                      ''),
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/burger.png",
                        width: 45,
                        height: 45,
                      ),
                      'Food',
                      ''),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/home.png",
                        width: 45,
                        height: 45,
                      ),
                      'Recherche',
                      ''),
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/Coursier.png",
                        width: 45,
                        height: 45,
                      ),
                      'Recherche',
                      ''),
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/ticket.png",
                        width: 45,
                        height: 45,
                      ),
                      'Recherche',
                      ''),
                  _buildIconWithCircle(
                      Image.asset(
                        "assets/images/burger.png",
                        width: 45,
                        height: 45,
                      ),
                      'Recherche',
                      ''),
                ],
              ),
            ),
          ],
        ),
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
        currentIndex: 0,
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
    );
  }

  // Fonction pour créer un widget avec un cercle gris derrière l'icône
  Widget _buildIconWithCircle(Widget icon, String label, String label2) {
    return Column(
      children: [
        Container(
          width: 80, // Largeur du cercle
          height: 80, // Hauteur du cercle
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[300], // Couleur du cercle gris
          ),
          child:
              Center(child: icon), // Affichage de l'icône au centre du cercle
        ),
        SizedBox(height: 4), // Espacement entre le cercle et le libellé
        Text(label),
        Text(label2),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child:  Center(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              const Text('ACCUEIL', 
              style: TextStyle(color: Color(0xFFFBBC05), fontSize: 20)),
              const SizedBox(height: 40,),              
              Image.asset('assets/illustration_menu.png', fit: BoxFit.cover,),
              const SizedBox(height: 40,),
              const Text('EVENEMENT DU MOIS', 
              style: TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(height: 40,),
              Container(
                child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200, // Hauteur du carrousel
                      enlargeCenterPage: true, // Agrandir la page centrale
                      autoPlay: false, // Lecture automatique du carrousel
                      aspectRatio: 16 / 9, // Ratio d'aspect des éléments
                      autoPlayCurve: Curves.fastOutSlowIn, // Courbe d'animation
                      enableInfiniteScroll: true, // Défilement infini
                      autoPlayAnimationDuration: const Duration(milliseconds: 800), // Durée de l'animation
                      viewportFraction: 0.8, // Fraction de l'écran visible
                    ),
                    items: [
                      // Liste des éléments du carrousel
                      Image.asset('assets/forum_metier.png', fit: BoxFit.cover,),
                      Image.asset('assets/parcoursup.png', fit: BoxFit.cover,),
                      Image.asset('assets/salon_metier.png', fit: BoxFit.cover,),
                    ],
                  ),
              ),
              const SizedBox(height: 50,),
              const Text('MÉTIER DE LA SEMAINE', style: TextStyle(color: Colors.white, fontSize: 20),),
              const SizedBox(height: 40,),
              Container(
                child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200, // Hauteur du carrousel
                      enlargeCenterPage: true, // Agrandir la page centrale
                      autoPlay: false, // Lecture automatique du carrousel
                      aspectRatio: 16 / 9, // Ratio d'aspect des éléments
                      autoPlayCurve: Curves.fastOutSlowIn, // Courbe d'animation
                      enableInfiniteScroll: true, // Défilement infini
                      autoPlayAnimationDuration: const Duration(milliseconds: 800), // Durée de l'animation
                      viewportFraction: 0.8, // Fraction de l'écran visible
                    ),
                    items: [
                      // Liste des éléments du carrousel
                      Image.asset('assets/dev_back.png', fit: BoxFit.cover,),
                      Image.asset('assets/data_analyst.png', fit: BoxFit.cover,),
                      Image.asset('assets/cuisiner.png', fit: BoxFit.cover,),
                    ],
                  ),
              ),
              const SizedBox(height: 50,),
              const Text('MÉTIER DE LA SEMAINE', style: TextStyle(color: Colors.white, fontSize: 20),),
              const SizedBox(height: 40,),
              Container(
                child: CarouselSlider(
                    options: CarouselOptions(
                      height: 200, // Hauteur du carrousel
                      enlargeCenterPage: true, // Agrandir la page centrale
                      autoPlay: false, // Lecture automatique du carrousel
                      aspectRatio: 16 / 9, // Ratio d'aspect des éléments
                      autoPlayCurve: Curves.fastOutSlowIn, // Courbe d'animation
                      enableInfiniteScroll: true, // Défilement infini
                      autoPlayAnimationDuration: const Duration(milliseconds: 800), // Durée de l'animation
                      viewportFraction: 0.8, // Fraction de l'écran visible
                    ),
                    items: [
                      // Liste des éléments du carrousel
                      Image.asset('assets/Tekeria.png', fit: BoxFit.cover,),
                      Image.asset('assets/Entreprise_1.png', fit: BoxFit.cover,),
                      Image.asset('assets/Entreprise_2.png', fit: BoxFit.cover,),
                    ],
                  ),
              ),
              const SizedBox(height: 50,),
              const Text('PARTENAIRES', style: TextStyle(color: Colors.white, fontSize: 20),),
              const SizedBox(height: 40,),
              Image.asset('assets/logo_partenaires.png', fit: BoxFit.cover,),
              const SizedBox(height: 50,),
              const Text('PAS ENCORE D\'IDÉE ?', style: TextStyle(color: Colors.white, fontSize: 20),),
              const SizedBox(height: 40,),
              Container(
                child: Row(
                  children: [
                    Image.asset('assets/illustration_menu2.png', fit: BoxFit.cover,),
                    const SizedBox(width: 10,),
                    ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFFBBC05),
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/Auth');
                          },
                          child: Text(
                            'Passez un bilan'.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                  ],
                ),
              )
            ],
          )
        ),
      ),
    ));
  }
}

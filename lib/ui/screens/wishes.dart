import 'package:flutter/material.dart';

class Wishes extends StatefulWidget {
  const Wishes({ super.key });

  @override
  State<Wishes> createState() => _WishesState();
}

class _WishesState extends State<Wishes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                const Text('MES FAVORIS', 
                style: TextStyle(color: Color(0xFFFBBC05), fontSize: 20)),
                const  SizedBox(height: 80,),

                Row(
                  children: [
                    Container( 
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: const Text(
                        'Mes Métiers', style: TextStyle(color: Color(0xFFFBBC05), fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text(
                        'Mes écoles / formations', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),

                  ]
                )
                
              ],
            )
          ),
        ),
      ),
    );
  }
}
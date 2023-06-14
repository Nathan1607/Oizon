import 'package:flutter/material.dart';
import 'dart:convert';


class Formations extends StatefulWidget {
  const Formations({Key? key}) : super(key: key);

  @override
  State<Formations> createState() => _FormationsState();
}

class _FormationsState extends State<Formations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                const Text('FORMATIONS', 
                style: TextStyle(color: Color(0xFFFBBC05), fontSize: 20)),
                const  SizedBox(height: 20,),
                const Text('Vous n\'avez pas d\'idée sur ce que vous voulez faire ?', 
                style: TextStyle(color: Colors.white, fontSize: 13)),
                const  SizedBox(height: 25,),
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
                  onPressed: () {},
                  child: Text(
                    'Passez un bilan'.toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text('Recherches domaines de formations', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                    )
                  ]
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [                    
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border:
                            Border.all(color: const Color(0xFFFBBC05)),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Cybersécurité', style: TextStyle(color: Color(0xFFFBBC05)),),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border:
                            Border.all(color: const Color(0xFFFBBC05)),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: FilledButton.tonal(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/SearchFormations');
                        },
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFFFBBC05),
                        ),
                        child: const Text('Développement', style: TextStyle(color: Color(0xFF000117)),),
                      ),
                    )
                  ]
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [                    
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 125,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border:
                            Border.all(color: const Color(0xFFFBBC05)),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Marketing', style: TextStyle(color: Color(0xFFFBBC05)),),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 125,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border:
                            Border.all(color: const Color(0xFFFBBC05)),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Commerce', style: TextStyle(color: Color(0xFFFBBC05)),),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border:
                            Border.all(color: const Color(0xFFFBBC05)),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('RH', style: TextStyle(color: Color(0xFFFBBC05)),),
                      ),
                    )
                  ]
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [                    
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      width: 125,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border:
                            Border.all(color: const Color(0xFFFBBC05)),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('SEO', style: TextStyle(color: Color(0xFFFBBC05)),),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 125,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border:
                            Border.all(color: const Color(0xFFFBBC05)),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Banque', style: TextStyle(color: Color(0xFFFBBC05)),),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: 100,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        border:
                            Border.all(color: const Color(0xFFFBBC05)),
                        borderRadius: BorderRadius.circular(90),
                      ),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: const Text('Education', style: TextStyle(color: Color(0xFFFBBC05)),),
                      ),
                    )
                  ]
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text('Parcourir les catégories', style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                    )
                  ]
                ),
                const SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text('Développement', style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    const  SizedBox(width: 180,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white,)
                  ]
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text('Business', style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    const  SizedBox(width: 219,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white,)
                  ]
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text('Finance et comptabilité', style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    const  SizedBox(width: 135,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white,)
                  ]
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text('Informatique et logiciels', style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    const  SizedBox(width: 131,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white,)
                  ]
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text('Bureautique', style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    const  SizedBox(width: 200,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white,)
                  ]
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text('Marketing', style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    const  SizedBox(width: 210,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white,)
                  ]
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: const Text('Médical', style: TextStyle(color: Colors.white, fontSize: 13)),
                    ),
                    const  SizedBox(width: 225,),
                    const Icon(Icons.arrow_forward_ios, color: Colors.white,)
                  ]
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}

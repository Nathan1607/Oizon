import 'package:flutter/material.dart';

class SearchFormations extends StatefulWidget {
  const SearchFormations({Key? key}) : super(key: key);

  @override
  State<SearchFormations> createState() => _SearchFormationsState();
}

class _SearchFormationsState extends State<SearchFormations> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Center(
                  child: Column(children: [
                    AppBar(
                      leading: IconButton(
                        icon: const Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        color: const Color(0xFFFBBC05),
                      ),
                      actions: [
                        IconButton(
                          icon: const Icon(Icons.chat),
                          onPressed: () {},
                          color: const Color(0xFFFBBC05),
                        ),
                        IconButton(
                          icon: const Icon(Icons.notification_add),
                          onPressed: () {},
                          color: const Color(0xFFFBBC05),
                        )
                      ],
                      centerTitle: true,
                      automaticallyImplyLeading: false,
                      backgroundColor: const Color(0xFF000117),
                    ),
                    const SizedBox(height: 20,),
                    const Text('FORMATIONS', 
                      style: TextStyle(color: Color(0xFFFBBC05), fontSize: 20)),
                    const  SizedBox(height: 40,),
                    const Text('Développement', 
                      style: TextStyle(color: Color(0xFFFBBC05), fontSize: 15)),
                    const  SizedBox(height: 20,),
                    Image.asset('assets/logo_formations.png', fit: BoxFit.cover,),
                    const SizedBox(height: 60,),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text('La base de données sera mises à jour'.toUpperCase(),
                            style: const TextStyle(color: Colors.white, fontSize: 15),),
                        )
                      ]
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text('Le 30.06.2023'.toUpperCase(),
                            style: const TextStyle(color: Colors.white, fontSize: 15),),
                        )
                      ]
                    ),
                    const SizedBox(height: 40,),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Text('523 nouvelles formations seront disponibles'.toUpperCase(),
                            style: const TextStyle(color: Colors.white, fontSize: 13 ),),
                        )
                      ]
                    ),
                    const SizedBox(height: 80,),
                    Image.asset('assets/illustration_formations.png', fit: BoxFit.cover,)

                    
              ])),
    )));
  }
}

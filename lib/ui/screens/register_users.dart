import 'package:flutter/material.dart';

class RegisterUsers extends StatefulWidget {
  const RegisterUsers({Key? key}) : super(key: key);

  @override
  State<RegisterUsers> createState() => _RegisterUsersScreenState();
}

class _RegisterUsersScreenState extends State<RegisterUsers> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                  child: RichText(
                  text: const TextSpan(
                      text: 'Inscription',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      )),
                ),
                ),
                // SizedBox(height: 15.0),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                            SizedBox(
                              width: 130,
                              height: 50,
                              child: FilledButton.tonal(
                              onPressed: () {},
                            child: const Text('Candidat'),
                          ),
                            ),
                          const Padding(padding: EdgeInsets.symmetric(horizontal: 15.0)),
                          Container(
                            width: 130,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(color: const Color(0xFFFBBC05)),
                              borderRadius: BorderRadius.circular(90), 
                            ),
                            child: OutlinedButton(
                              onPressed: () {},
                              child: const Text('Centre / Ecole'),
                              
                          ),
                          )
                        ],
                      ),
                      const SizedBox( height: 10,),
                      Container(
                        width: 125,
                        height: 50,
                        decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              border: Border.all(color: const Color(0xFFFBBC05)),
                              borderRadius: BorderRadius.circular(90),
                            ),
                        child: OutlinedButton(
                            onPressed: () {},
                            child: const Text('Professionnel'),
                          ),
                      ),
                      const SizedBox(height: 50,),
                      Form(
                        child: Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Votre Nom',
                                  hintStyle: TextStyle(color: Colors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                  )
                                ),
                              ),
                            ),
                            const SizedBox(width: 50.0),
                            Expanded(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: 'Votre Prénom',
                                  hintStyle: TextStyle(color: Colors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                  )
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 25,),
                      TextFormField(
                        decoration: const InputDecoration(
                          hintText: 'Votre Mail',
                          hintStyle: TextStyle(color: Colors.white),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white)
                                  )
                        ),
                      )
                    ],
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

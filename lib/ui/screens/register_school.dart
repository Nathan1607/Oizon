import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class RegisterSchool extends StatefulWidget {
  const RegisterSchool({Key? key}) : super(key: key);

  @override
  State<RegisterSchool> createState() => _RegisterSchoolScreenState();
}

class _RegisterSchoolScreenState extends State<RegisterSchool> {
  final TextEditingController nomController = TextEditingController();
  final TextEditingController prenomController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameschoolController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController postcodeController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void registerSchool() async {
    final url =
        Uri.parse('https://e52d-90-58-167-129.ngrok-free.app/registerSchool');

    final body = jsonEncode({
      'name': nomController.text,
      'first_name': prenomController.text,
      'mail': emailController.text,
      'school_name': nameschoolController.text,
      'address': addressController.text,
      'postcode': postcodeController.text,
      'city': cityController.text,
      'password': passwordController.text,
    });

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: body,
    );

    if (response.statusCode == 200) {
      print('Inscription réussie');
    } else {
      final responseBody = utf8.decode(response.bodyBytes);
      final responseJson = jsonDecode(responseBody);
      print('Erreur lors de l\'inscription: ${responseJson['error']}');
    }
  }

  @override
  void dispose() {
    nomController.dispose();
    prenomController.dispose();
    emailController.dispose();
    nameschoolController.dispose();
    addressController.dispose();
    postcodeController.dispose();
    cityController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: RichText(
                    text: const TextSpan(
                        text: 'Inscription',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        )),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 30.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 130,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border:
                                    Border.all(color: const Color(0xFFFBBC05)),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              child: OutlinedButton(
                                onPressed: () {
                                  Navigator.of(context)
                                      .pushNamed('/RegisterUsers');
                                },
                                child: const Text('Candidat'),
                              ),
                            ),
                            const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 15.0)),
                            Container(
                              width: 130,
                              height: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                border:
                                    Border.all(color: const Color(0xFFFBBC05)),
                                borderRadius: BorderRadius.circular(90),
                              ),
                              child: FilledButton.tonal(
                                onPressed: () {},
                                child: const Text('Centre / Ecole'),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 125,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            border: Border.all(color: const Color(0xFFFBBC05)),
                            borderRadius: BorderRadius.circular(90),
                          ),
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed('/RegisterProfessional');
                            },
                            child: const Text('Professionnel'),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Form(
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: nomController,
                                  decoration: const InputDecoration(
                                      hintText: 'Votre Nom',
                                      hintStyle: TextStyle(color: Colors.white),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 50.0),
                              Expanded(
                                child: TextFormField(
                                  controller: prenomController,
                                  decoration: const InputDecoration(
                                      hintText: 'Votre Prénom',
                                      hintStyle: TextStyle(color: Colors.white),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                              hintText: 'Votre Mail',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          controller: nameschoolController,
                          decoration: const InputDecoration(
                              hintText: 'Le nom de l\'école / centre',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          controller: addressController,
                          decoration: const InputDecoration(
                              hintText: 'L\'adresse',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Form(
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: postcodeController,
                                  decoration: const InputDecoration(
                                      hintText: 'Code Postal',
                                      hintStyle: TextStyle(color: Colors.white),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              const SizedBox(width: 50.0),
                              Expanded(
                                child: TextFormField(
                                  controller: cityController,
                                  decoration: const InputDecoration(
                                      hintText: 'Ville',
                                      hintStyle: TextStyle(color: Colors.white),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.white))),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                              hintText: 'Mot de passe',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                              hintText: 'Confirmer le mot de passe',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white))),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(
                                vertical: 15.0, horizontal: 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20), // Arrondir les coins
                            ),
                          ),
                          onPressed: () =>
                              registerSchool(),
                          child: Text(
                            'Incristpion'.toUpperCase(),
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/Auth');
                          },
                          child: const Text(
                            'Avez-vous un compte ? Se connecter',
                            style: TextStyle(
                                color: Colors.white,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

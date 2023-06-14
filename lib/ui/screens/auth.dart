import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:jwt_decode/jwt_decode.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    bool validateFields() {
      if (mailController.text.isEmpty || passwordController.text.isEmpty) {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(
              content: Text('Veuillez remplir tous les champs.'),
            ))
            .closed
            .then((SnackBarClosedReason reason) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AuthScreen()),
          );
        });
        return false;
      }
      return true;
    }

    if (!validateFields()) {
      return;
    }

    final url = Uri.parse('https://3448-90-58-167-129.ngrok-free.app/login');

    final body = jsonEncode(
        {'mail': mailController.text, 'password': passwordController.text});

    final response = await http.post(url,
        headers: {'Content-Type': 'application/json'}, body: body);

      if (response.statusCode == 200) {
        print('Connexion réussie');
        Navigator.of(context).pushNamed('/Home');
        final jsonResponse = json.decode(response.body);
        final token = jsonResponse['token'];

        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', token);

        // Décoder le jeton
        Map<String, dynamic> decodedToken = Jwt.parseJwt(token);

        // Accéder aux données du jeton décodé
        String userId = decodedToken['userId'].toString();

        // Utiliser les données du jeton comme vous le souhaitez
        print('User ID: $userId');

      }else {
        print('Erreur lors de la connexion');
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Mail ou Mot de passe incorrect.'),
        ));
      } 
  } 

  @override
  void dispose() {
    mailController.dispose();
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
                        text: 'Se Connecter',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                        )),
                  ),
                ),
                // SizedBox(height: 15.0),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 30.0),
                  child: RichText(
                    text: const TextSpan(
                        text:
                            'En utilisant nos services, vous acceptez \n nos Conditions et Déclarations de \n confidentialité',
                        style: TextStyle(
                          color: Colors.white,
                          // fontSize: 30.0,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: mailController,
                        decoration: const InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.white,
                            ),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      TextFormField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: 'Mot de passe',
                            hintStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                        style: const TextStyle(color: Colors.white),
                      ),
                      const SizedBox(
                        height: 50.0,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {
                          login();
                        },
                        child: Text(
                          'Se connecter'.toUpperCase(),
                          style: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 35.0, vertical: 30.0),
                      child: const Text('Mot de passe oublié ? Cliquez',
                          style: TextStyle(color: Colors.white)),
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                            padding:
                                const EdgeInsets.symmetric(horizontal: -10)),
                        onPressed: () =>
                            {Navigator.of(context).pushNamed('/Home')},
                        child: const Text('ici')),
                  ],
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            padding: const EdgeInsets.symmetric(vertical: 15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  20), // Arrondir les coins
                            ),
                          ),
                          onPressed: () => {},
                          child: const Text('Se connecter via Google')),
                      TextButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/RegisterUsers'),
                        child: const Text('Créer un compte'),
                      ),
                      const Text('')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

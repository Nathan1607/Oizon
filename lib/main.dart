import 'package:flutter/material.dart';
import 'package:Orizon/ui/screens/auth.dart';
import 'package:Orizon/ui/screens/home.dart';
import 'package:Orizon/ui/screens/register_users.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF000117),
        primarySwatch: const MaterialColor(0xFFFBBC05, {
      50: Color(0xFFFFF6E0),
      100: Color(0xFFFFEAB3),
      200: Color(0xFFFFDF80),
      300: Color(0xFFFFD44D),
      400: Color(0xFFFFCA1A),
      500: Color(0xFFFBBC05),
      600: Color(0xFFD18C04),
      700: Color(0xFFA75B03),
      800: Color(0xFF7D2B02),
      900: Color(0xFF530A01),
    }),
      ),
      routes: {
        '/Auth': (context) => AuthScreen(),
        '/Home': (context) => Home(),
        '/RegisterUsers': (context) => RegisterUsers()
      },
      initialRoute: '/Auth',
      // home: AuthScreen(),
    );
  }
}

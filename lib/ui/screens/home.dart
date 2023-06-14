import 'package:flutter/material.dart';
import 'package:orizon/ui/screens/account.dart';
import 'package:orizon/ui/screens/wishes.dart';
import 'formations.dart';
import 'menu.dart';
import 'immersions.dart';

import 'auth.dart';
import 'search_formations.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _widgetOptions = [];
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _widgetOptions.addAll([
      const Menu(),
      const Formations(),
      const Immersions(),
      const Wishes(),
      const Account(),
    ]);
  }

  _onItemTapped(int index) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          '/SearchFormations': (context) => const SearchFormations()
        },
        theme: ThemeData(
          canvasColor: const Color(
              0xFF000117), // Couleur de fond de la BottomNavigationBar
        ),
        home: Scaffold(
          appBar: AppBar(
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
          body: _widgetOptions.elementAt(_selectedIndex),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school_outlined),
                label: 'Formations',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home_work_outlined),
                label: 'Immersions',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken_outlined),
                label: 'Souhaits',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                label: 'Compte',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: const Color(0xFFFBBC05),
            onTap: _onItemTapped,
          ),
        ));
  }
}

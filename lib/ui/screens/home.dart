import 'package:flutter/material.dart';
import 'package:orizon/ui/screens/account.dart';
import 'package:orizon/ui/screens/wishes.dart';
import 'formations.dart';
import 'chat.dart';
import 'immersions.dart';

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
      const Chat(),
      const Formations(),
      const Immersions(),
      const Wishes(),
      const Account()
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
      theme: ThemeData(
        canvasColor: const Color(0xFF000117), // Couleur de fond de la BottomNavigationBar
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Orizon'),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xFFFBBC05),
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_sharp),
              label: 'Chat',
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
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

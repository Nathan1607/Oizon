import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 20,),
                const Text('MON COMPTE', 
                style: TextStyle(color: Color(0xFFFBBC05), fontSize: 20)),
                const  SizedBox(height: 80,),
              ],
            )
          ),
        ),
      ),
    );
  }    
}

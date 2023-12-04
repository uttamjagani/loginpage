// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class home3 extends StatefulWidget {
  const home3({super.key});

  @override
  State<home3> createState() => _home3State();
}

class _home3State extends State<home3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.logout)),
        ],
        title: Text('Home'),
      ),
      body: Center(
        child: Image(
          image: AssetImage("assets/image-1.jpg"),
        ),
      ),
    );
  }
}

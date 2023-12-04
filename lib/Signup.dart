import 'package:flutter/material.dart';
import 'package:loginpage/Login.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _home2State();
}

class _home2State extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 18, 179, 141),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(90),
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Enter Your Name',
                    prefixIcon: Icon(Icons.person, color: Colors.black),
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Email',
                    prefixIcon: Icon(Icons.mail, color: Colors.black),
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
                SizedBox(height: 10.0),
                TextFormField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Password',
                    prefixIcon: Icon(Icons.remove_red_eye, color: Colors.black),
                    fillColor: Colors.grey[200],
                    filled: true,
                  ),
                ),
                SizedBox(height: 10.0),
                SizedBox(height: 20.0),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Text('Login Page')),
              ],
              crossAxisAlignment: CrossAxisAlignment.center,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:loginpage/Home_s.dart';
import 'package:loginpage/Signup.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _home1State();
}

class _home1State extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 20, 171, 164),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Form(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 90.0),
                  Icon(
                    Icons.android,
                    size: 100.0,
                  ),
                  SizedBox(height: 30.0),
                  Text(
                    "WELCOME",
                    style: TextStyle(
                        fontSize: 50, fontFamily: AutofillHints.addressCity),
                  ),
                  SizedBox(height: 30.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.5),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: "Email",
                        prefixIcon: Icon(Icons.mail, color: Colors.black),
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.5),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.deepPurple),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.remove_red_eye_sharp,
                            color: Colors.black),
                        fillColor: Colors.grey[200],
                        filled: true,
                      ),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => home3(),
                            ));
                      },
                      child: Text('Login')),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Signup(),
                              ));
                        },
                        child: Text(
                          "  SignUp",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

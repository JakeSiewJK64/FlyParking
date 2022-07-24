import 'package:flutter/material.dart';
import 'package:flyparking/pages/login.dart';
import 'package:flyparking/pages/signup.dart';

class Authentication extends StatefulWidget {
  const Authentication({Key? key}) : super(key: key);

  @override
  State<Authentication> createState() => _AuthenticationState();
}

class _AuthenticationState extends State<Authentication> {
  final _formKey = GlobalKey<FormState>();
  bool isSignup = true;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Align(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image(
                        image: AssetImage('assets/flyparking.png'),
                        width: 80,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  const Align(
                    child: Text(
                      "A journey starts with a",
                      style: TextStyle(fontSize: 20),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Align(
                    child: Text(
                      !isSignup ? "Login" : "Sign Up",
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  Container(
                    child: !isSignup ? const Login() : const Signup(),
                  ),
                  GestureDetector(
                    child: Text(
                      !isSignup
                          ? "Don't have an account? Sign up here!"
                          : "Already have an account? Login here!",
                      style: const TextStyle(color: Colors.blue),
                    ),
                    onTap: () {
                      setState(() {
                        isSignup = !isSignup;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

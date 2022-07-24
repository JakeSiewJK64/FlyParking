import 'package:flutter/material.dart';
import 'package:flyparking/utils/string_extensions.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late String? username;
  late String? password;
  bool isSignup = true;

  final _snackBar = SnackBar(
    content: const Text('Successfully Logged In!'),
    duration: const Duration(seconds: 5),
    action: SnackBarAction(
      label: 'OK',
      onPressed: () {},
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: TextFormField(
            cursorColor: const Color(0xfff1c40f),
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
              focusColor: Color(0xfff1c40f),
              border: OutlineInputBorder(),
              hintText: "Enter Username",
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) => username = value,
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: TextFormField(
            cursorColor: const Color(0xfff1c40f),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: const InputDecoration(
              focusColor: Color(0xfff1c40f),
              border: OutlineInputBorder(),
              hintText: "Enter Password",
            ),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: (value) => password = value,
            validator: (value) {
              if (!StringExtensions(value!).isValidPassword()) {
                return "a minimum of 10 characters required!";
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: OutlinedButton.icon(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(16),
              textStyle: const TextStyle(fontSize: 20),
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(_snackBar);
              Navigator.pushNamed(context, "/home");
            },
            icon: const Icon(
              Icons.login,
              size: 20.0,
            ),
            label: const Text('Login'),
          ),
        ),
      ],
    );
  }
}

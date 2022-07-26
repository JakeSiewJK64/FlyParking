import 'package:flutter/material.dart';
import 'package:flyparking/pages/authentication/authentication.dart';
import 'package:flyparking/shared/appcomponent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flyparking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/auth/authenticate',
      routes: {
        "/auth/authenticate": (context) => const Authentication(),
        "/home": (context) => const AppComponent(),
      },
    );
  }
}

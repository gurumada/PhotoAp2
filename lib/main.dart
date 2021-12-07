import 'package:flutter/material.dart';
import 'package:photoap2/sign_in_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo App2',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: SignInScreen(),
    );
  }
}

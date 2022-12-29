import 'package:flutter/material.dart';
import 'package:todolistapp/screens/home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: Color(0x2f2f2f26),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

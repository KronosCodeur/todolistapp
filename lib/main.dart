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
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: Colors.black54,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todolistapp/screens/list_of_task_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My List of Task', style: TextStyle(
          color: Colors.black87, fontSize: 25, fontWeight: FontWeight.bold,
          letterSpacing: 1.2, wordSpacing: 1.2,
        ),
        ),
      ),
      body: ListOfTask(),
    );
  }
}

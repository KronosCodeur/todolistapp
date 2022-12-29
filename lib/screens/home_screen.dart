import 'package:flutter/material.dart';
import 'package:todolistapp/screens/list_of_task_screen.dart';
import 'package:todolistapp/widget/app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(child: TaskListAppBar(),
          preferredSize: Size.fromHeight(50.0)),
      body: ListOfTask(),
    );
  }
}

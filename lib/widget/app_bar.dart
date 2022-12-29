import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolistapp/screens/adding_task_screen.dart';
import 'package:todolistapp/screens/home_screen.dart';
import 'package:todolistapp/screens/list_of_task_screen.dart';

class TaskListAppBar extends StatelessWidget {
  const TaskListAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, left:10, right: 10),
      color: Colors.teal,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Task Management",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w700,
                wordSpacing: 1.4,
                letterSpacing: 1.2
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  AddingTaskScreen(),
                ));
              },
              child: Icon(
                Icons.add_box,
                size: 40,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
class AddingTaskAppBar extends StatelessWidget {
  const AddingTaskAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25, left:10, right: 10),
      color: Colors.teal,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Task Management",
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w700,
                wordSpacing: 1.4,
                letterSpacing: 1.2
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>  HomeScreen(),
                ));
              },
              child: Icon(
                Icons.close_sharp,
                size: 40,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

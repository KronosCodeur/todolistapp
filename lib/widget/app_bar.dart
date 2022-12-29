import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TaskAppBar extends StatelessWidget {
  const TaskAppBar({Key? key}) : super(key: key);

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

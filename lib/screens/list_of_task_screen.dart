import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolistapp/models/task_model.dart';

 class ListOfTask extends StatefulWidget {
   const ListOfTask({Key? key}) : super(key: key);

   @override
   State<ListOfTask> createState() => _ListOfTaskState();
 }
 class _ListOfTaskState extends State<ListOfTask> {
   @override
   Widget build(BuildContext context) {
     return Container(
       child: SingleChildScrollView(
         scrollDirection: Axis.vertical,
             child: Container(
               child: Column(
                 children: [
                   for(var i in TaskList)
                   Container(
                     decoration: BoxDecoration(
                       border: Border.all(color: Colors.white38,width: 1)
                     ),
                     height: 60,
                     padding: EdgeInsets.only(left: 10, right: 10),
                     alignment: Alignment.center,
                     child: Column(
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Container(
                               child: Column(
                                 children: [
                                   Text("${i.description}",
                                   style: GoogleFonts.poppins(
                                     fontSize: 25,
                                     color: Colors.teal,
                                     fontWeight: FontWeight.normal
                                   ),),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.center,
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     children: [
                                       Text("${i.dateHeureDebut}",
                                         style: GoogleFonts.poppins(
                                             fontSize: 12,
                                             color: Colors.white70,
                                             fontWeight: FontWeight.w500
                                         ),),
                                       SizedBox(width: 5,),
                                       Text("${i.dateHeureFin}",
                                         style: GoogleFonts.poppins(
                                             fontSize: 12,
                                             color: Colors.white70,
                                             fontWeight: FontWeight.w500
                                         ),),
                                     ],
                                   )
                                 ],
                               ),
                             ),
                             Container(
                               child: Row(
                                 children: [
                                   InkWell(
                                     onTap: (){

                                     },
                                     child: Icon(Icons.check_circle, color: Colors.teal,size: 30,),
                                   ),
                                   InkWell(
                                     onTap: (){

                                     },
                                     child: Icon(Icons.delete_rounded, color: Colors.red,size: 30,),
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ),
                       ],
                     ),
                   )
                 ],
               ),
             )
       ),
     );
   }
 }

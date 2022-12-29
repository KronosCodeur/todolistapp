import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolistapp/functions/functions.dart';
import 'package:todolistapp/models/task_model.dart';
import 'package:todolistapp/widget/app_bar.dart';

class AddingTaskScreen extends StatefulWidget {
  const AddingTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddingTaskScreen> createState() => _AddingTaskScreenState();
}

class _AddingTaskScreenState extends State<AddingTaskScreen> {
  TextEditingController _descriptionController = TextEditingController();
  TextEditingController _dateHeureDebutController = TextEditingController();
  TextEditingController _dateHeureFinController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(child: AddingTaskAppBar(),
          preferredSize: Size.fromHeight(50.0)),
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.all(10),
        alignment: Alignment.center,
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all( color: Colors.black54),
                ),
                width: 350,
                height: 50,
                padding: EdgeInsets.only(left: 15, right: 15,),
                child: TextField(
                  controller: _descriptionController,
                  autocorrect: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.description),
                    hintText: "Task Description",
                    hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black12
                    ),
                    border: InputBorder.none
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all( color: Colors.black54),
                ),
                width: 350,
                height: 50,
                padding: EdgeInsets.only(left: 15, right: 15,),
                child: TextField(
                  controller: _dateHeureDebutController,
                  autocorrect: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.date_range),
                    hintText: "Task Description",
                    hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black12
                    ),
                    border: InputBorder.none
                  )
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all( color: Colors.black54),
                ),
                width: 350,
                height: 50,
                padding: EdgeInsets.only(left: 15, right: 15,),
                child: TextField(
                  controller: _dateHeureFinController,
                  autocorrect: true,
                  decoration: InputDecoration(
                    icon: Icon(Icons.date_range),
                    hintText: "Task Description",
                    hintStyle: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Colors.black12
                    ),
                    border: InputBorder.none
                  )
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    if(_descriptionController.text.isEmpty || _dateHeureDebutController.text.isEmpty || _dateHeureFinController.text.isEmpty){
                      showDialog<void>(
                          context: context,
                          barrierDismissible: false,
                          // false = user must tap button, true = tap outside dialog
                          builder: (BuildContext dialogContext) {
                            return AlertDialog(
                              title: Text('Error:Empty Field(s)'),
                              content: Text('You must fill all fields to add a Task'),
                              actions: <Widget>[
                                TextButton(
                                  child: Text('Close'),
                                  onPressed: () {
                                    Navigator.of(dialogContext)
                                        .pop(); // Dismiss alert dialog
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      }else{
                      var newTask = TaskModel(_descriptionController.text, _dateHeureDebutController.text, _dateHeureFinController.text);
                      _descriptionController.clear();
                      _dateHeureDebutController.clear();
                      _dateHeureFinController.clear();
                      AddTaskToTaskList(newTask);
                    }
                  },
                  style: ButtonStyle(

                  ),
                  child: Text("Add the Task",
                    style: GoogleFonts.poppins(),))
            ],
          ),
        ),
      )
    );
  }
}

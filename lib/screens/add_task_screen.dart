import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo/Widgets/task_list.dart';
import 'package:todo/models/task.dart';
import 'package:todo/screens/task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    String text='';
    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            TextField(
              enabled: true,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Enter the task',
                hintStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 20.0
                ),
              ),
              onChanged: (value) {
                text = value;
              },

            ),
            SizedBox(
              height: 30.0,
            ),


            FlatButton(
                color: Colors.blue,
                minWidth: 250.0,
                onPressed: () {

                  Provider.of<TaskData>(context,listen: false).update(Task(name: text));
                  Navigator.pop(context);

                },
                child: Text('Add',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.0
                  ),

                )
            )
          ],
        ),
      ),

    );
  }
}

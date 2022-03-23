import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget{
   final bool isChecked;
   final String taskTitle;
   final Function checkboxCallback;
   final Function removeTask;
   TaskTile({required this.isChecked,required this.taskTitle,required this.checkboxCallback,required this.removeTask});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        removeTask();
      },
      title: Text('$taskTitle',
      style: TextStyle(
        decoration: isChecked?TextDecoration.lineThrough:null
      ),
      ),
      trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: (value){
            checkboxCallback(value);
          }
      ),
    );

  }
}



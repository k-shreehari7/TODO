import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task_data.dart';

class TasksList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskData,child){
        return ListView.builder(itemBuilder: (context, index) {
          return TaskTile(isChecked: taskData.tasks[index].isDone, taskTitle: taskData.tasks[index].name, checkboxCallback: (checkboxState) {
            Provider.of<TaskData>(context,listen: false).updateTask(taskData.tasks[index]);

          },removeTask: (){
            Provider.of<TaskData>(context,listen: false).removeTask(index);
          },);
        },
          itemCount: taskData.tasks.length,
        );
      },

    );
  }
}
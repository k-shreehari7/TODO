import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'task.dart';

class TaskData extends ChangeNotifier
{
  List<Task> tasks=[];


  void update(Task t)
  {
    tasks.add(t);
    notifyListeners();
  }

  void updateTask(Task task)
  {
    task.toggleDone();
    notifyListeners();
  }
  void removeTask(int t)
  {
    tasks.removeAt(t);
    notifyListeners();

  }


}
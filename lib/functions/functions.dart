import 'package:todolistapp/models/task_model.dart';
List<TaskModel> TaskList = [];
List<TaskModel> AddTaskToTaskList(TaskModel task){
  TaskList.add(task);
  return TaskList;
}
List<TaskModel> RemoveTaskFromTaskList(TaskModel task){
  TaskList.remove(task);
  return TaskList;
}


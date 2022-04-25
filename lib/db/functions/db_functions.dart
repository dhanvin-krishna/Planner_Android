import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:planner/db/models/data_model.dart';

ValueNotifier<List<TaskModel>> tasklist = ValueNotifier([]);

 Future<void> addTask(TaskModel value) async {
tasklist.value.add(value);

final task_DB = await Hive.openBox<TaskModel>('tas_db');
 await task_DB.add(value);
 //tasklist.value.add(value);
tasklist.notifyListeners();
print(value.toString());

}

Future<void> getTaskData() async{
  final task_DB = await Hive.openBox<TaskModel>('tas_db');
  tasklist.value.clear();
  tasklist.value.addAll(task_DB.values);
  tasklist.notifyListeners();
  

}
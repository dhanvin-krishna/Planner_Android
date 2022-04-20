import 'package:flutter/cupertino.dart';
import 'package:planner/db/models/data_model.dart';

ValueNotifier<List<TaskModel>> tasklist = ValueNotifier([]);

void addTask(TaskModel value) {
tasklist.value.add(value);
tasklist.notifyListeners();

print(value.toString());

}
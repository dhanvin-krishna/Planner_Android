import 'package:hive_flutter/adapters.dart';
 part 'data_model.g.dart';

/* type id is used to identify databasses if we have many. 
For time being we don't have more than 1
 */
@HiveType(typeId: 1)

class TaskModel  {
  // hive field is used to mark fields
  @HiveField(0)
  final String subject;

  @HiveField(1)
  final String lesson;

  @HiveField(2)
  final String description;

  @HiveField(3)
  final DateTime date;

  TaskModel({required this.subject, required this.lesson, required this.description, required this.date});


}
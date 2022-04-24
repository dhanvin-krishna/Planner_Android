// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:planner/db/functions/db_functions.dart';

import '../db/models/data_model.dart';

class Tasks extends StatefulWidget {
  const Tasks({ Key? key }) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: tasklist, 
      builder: (BuildContext context, List<TaskModel> tasklist, Widget? child){
        return ListView.separated(
          itemBuilder: ((context, index) {
            final taskData = tasklist[index];
            return ListTile(
              leading: Text(taskData.subject),
              trailing: Icon(Icons.arrow_forward_ios_rounded)

            );
          }), 
          separatorBuilder: (ctx,index){
            return  Padding(padding: EdgeInsets.all(5.0));
          }, 
          itemCount: tasklist.length
          );
        
      }
      );
  }
}
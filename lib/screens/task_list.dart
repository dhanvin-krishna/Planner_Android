// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:planner/db/functions/db_functions.dart';
import 'package:planner/db/models/data_model.dart';

class TaskList extends StatefulWidget {
  const TaskList({ Key? key }) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}





class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: tasklist, 
        builder: (BuildContext context, List<TaskModel> tasklist, Widget? child){
          return ListView.separated(
            itemBuilder: ((context, index) {
              final taskData = tasklist[index]; 
              final date = taskData.date;
              final firstRev = date.add( Duration(days: 1));
              final secRev = date.add( Duration(days: 7));
              final thirdRev = date.add( Duration(days: 21));
              print( DateFormat('EEE,d/M/y').format(firstRev));
              print( DateFormat('EEE,d/M/y').format(secRev));
              print( DateFormat('EEE,d/M/y').format(thirdRev));
              return ListTile(
                title: Center(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                            Text(taskData.subject),
                            Text('First revision '),
                            Text(DateFormat('EEE,d/M/y').format(firstRev)),
                            Text('Second Revision'),
                            Text(DateFormat('EEE,d/M/y').format(secRev)),
                            Text('Third revision'),
                            Text(DateFormat('EEE,d/M/y').format(thirdRev)),



                        
                      
                           
    
                    ],
                  ),
                ),
              );
            }), 
            separatorBuilder: (ctx,index){
              return const Divider();
            }, 
            itemCount: tasklist.length
            );
    
        }
        
        ),
    );
  }
}
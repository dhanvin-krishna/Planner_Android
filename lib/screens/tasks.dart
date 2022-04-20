// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:planner/db/functions/db_functions.dart';
import 'package:planner/db/models/data_model.dart';

class Tasks extends StatefulWidget {
  const Tasks({ Key? key }) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> {
  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: tasklist, 
      builder: (BuildContext context, List<TaskModel> tasklist, Widget? child){
        return ListView.separated(
          itemBuilder: ((context, index) {
            final taskdata = tasklist[index];
            return ListBody(
              children: [
                 Text(taskdata.subject, style: GoogleFonts.poppins(textStyle: TextStyle(fontSize:36,fontWeight: FontWeight.w600 ))),
                  
                

              ],

            );

    

          }), 
          separatorBuilder: (context,index){
            return const Divider();
          }, 
          itemCount: tasklist.length
          );
      }  
      );
  }
}
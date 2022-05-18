// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  Widget build(BuildContext context, ) {
    
    getTaskData();
    
    return Scaffold(
      body: ValueListenableBuilder(
        
        valueListenable: tasklist, 
        builder:  (BuildContext context, List<TaskModel> reqData, Widget? child){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.separated(       
              itemBuilder: ((context, index) {
                final taskData = reqData[index]; 
                
                final date = taskData.date;
               
                final firstRev = date.add( Duration(days: 1));
                final secRev = date.add( Duration(days: 7));
                final thirdRev = date.add( Duration(days: 21));
                // print( DateFormat('EEE,d/M/y').format(firstRev));
                // print( DateFormat('EEE,d/M/y').format(secRev));
                // print( DateFormat('EEE,d/M/y').format(thirdRev));
                final _datestr = DateFormat('EEE,d/m/y').format(date);

         
  
          final reqtaskdata = reqData.where((today) => taskData.date == DateFormat('EEE,d/m/y').parseStrict(_datestr)).toList().elementAt(index);
          print(reqtaskdata.subject);
          
                return Card(
                  child: ExpansionTile(
                    title:Text(taskData.lesson,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 27,fontWeight: FontWeight.w500)),),
                    
                    children: [
                      ListTile(
                        title: Column(
                          children: [
                            // Text('First revision',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 25)),),
                            //   Text(DateFormat('EEE,d/M/y').format(firstRev),style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 25)),),
                            //   Text('Second Revision',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 25)),),
                            //   Text(DateFormat('EEE,d/M/y').format(secRev),style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 25)),),
                            //   Text('Third revision',style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 25)),),
                            //   Text(DateFormat('EEE,d/M/y').format(thirdRev),style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 25)),),

                            //   Text(taskData.lesson,style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 25)),) ,
                          Text(reqtaskdata.subject)

                          ],
                          
                        ),
                         
                      )

                    ],

                  ),
                  

                );
              }), 
              separatorBuilder: (ctx,index){
                return const Divider();
              }, 
              itemCount: reqData.length
              ),
          );
    
        }
        
        ),
    );
  }
}
// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:planner/screens/menu.dart';
import 'package:planner/screens/search.dart';
import 'package:planner/screens/task_list.dart';
import 'package:planner/screens/tasks.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var date = DateTime.now();

  var today = "Today's Task";

  int currentint = 0;
  final screens = [
    Home(),
    Search(),
    Menu(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: ClampingScrollPhysics(),
        children: [
          // planner header
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 14),
            child: Text(
              'Planner',
              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 48)),
            ),
          ),

          //CARDS
          // main card
          Container(
            height: 197,
            width: 100,
            margin: EdgeInsets.only(left: 16, right: 16, top: 50),
            decoration: BoxDecoration(
                color: Color.fromARGB(237, 10, 120, 255),
                borderRadius: BorderRadius.circular(22)),
            child: Stack(
              children: [
                Positioned(
                    top: 20,
                    left: 29,
                    child: Text(
                      DateFormat('dd').format(date),
                      style: GoogleFonts.poppins(
                          textStyle:
                              TextStyle(fontSize: 96, color: Colors.white)),
                    )),
                // day
                Positioned(
                  top: 40,
                  left: 145,
                  child: Text(
                    DateFormat('EEEE').format(date),
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 36, color: Colors.white)),
                  ),
                ),

                //month
                Positioned(
                  top: 90,
                  left: 179,
                  child: Text(
                    DateFormat('MMMM').format(date),
                    style: GoogleFonts.poppins(
                        textStyle:
                            TextStyle(fontSize: 36, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),

          // TASK CONTAINER
          GestureDetector(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context) =>  TaskList()));
            },
            child: SingleChildScrollView(child: Tasks())
          )
        ],
      ),
    );
  }
}

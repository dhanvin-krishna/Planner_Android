// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:planner/screens/home.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subjectctrl = TextEditingController();
    final lessonctrl = TextEditingController();
    final descriptionctrl = TextEditingController();
    var date = DateTime.now();
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
          Container(
                   
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         IconButton(
                            onPressed: (){
                               Navigator.pop(context,
                               MaterialPageRoute(builder: (context) =>  Home()));
                            }, 
                            icon: Icon(Icons.arrow_back_ios)
                          ),
                       ],
                     ),
                   ),
                 ),

                  Container(
                    margin: EdgeInsets.only(left: 16, right: 16, top: 14), 
                    child: Text('ADD NEW TASK', 
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 34)
                      ),
                    ),
                  ),

                  // Subject
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 30),
                    child: Text('Subject', 
                    style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                        fontSize: 27
                         )
                       )
                    ),
                  ),

                  //subject text box
                 Container(
                    margin: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: subjectctrl,
                          decoration: InputDecoration(
                            hintText: 'Add Subject',
                            fillColor: Color.fromRGBO(209, 209, 209, 100),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(209, 209, 209, 100), width: 2.0)
                            ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(209, 209, 209, 100), width: 2.0)
                          ),
                        ),
                        ),
                      ],
                    )
                  ),

                  //lesson
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text('Lesson', 
                    style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                        fontSize: 27
                         )
                       )
                    ),
                  ),

                  //lesson text box
                 Container(
                    margin: EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: lessonctrl,
                          decoration: InputDecoration(
                            hintText: 'Add Lesson',
                            fillColor: Color.fromRGBO(209, 209, 209, 100),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(209, 209, 209, 100), width: 2.0)
                            ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(209, 209, 209, 100), width: 2.0)
                          ),
                        ),
                        ),
                      ],
                    )
                  ),

                  // description
                  Container(
                    margin: EdgeInsets.only(left: 20, top: 10),
                    child: Text('Description', 
                    style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                        fontSize: 27
                         )
                       )
                    ),
                  ),

                  //description text box
                 Container(
                    margin: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: descriptionctrl,
                          decoration: InputDecoration(
                            hintText: 'Add Description',
                            fillColor: Color.fromRGBO(209, 209, 209, 100),
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color.fromRGBO(209, 209, 209, 100), width: 2.0)
                            ),
                            focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Color.fromRGBO(209, 209, 209, 100), width: 2.0)
                          ),
                        ),
                        ),
                      ],
                    )
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                          minimumSize: Size(57, 57),
                          primary: Color.fromARGB(236, 2, 115, 253),
                       ),
                        onPressed: (){
                          print(subjectctrl.text);
                          print(lessonctrl.text);
                          print(descriptionctrl.text);
                          print( DateFormat('dd').format(date));
                        }, 
                        child: Text('ADD TASK', style: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w500),)
                        ),
                  ),
                  
          ],
        ),
      ),
    );
  
  }
 
}




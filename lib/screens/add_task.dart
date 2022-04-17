// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            onPressed: (){}, 
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

                  ElevatedButton(
                    style: ButtonStyle(
                      
                    ),
                    onPressed: (){}, 
                    child: Text('ADD TASK')
                    )
          ],
        ),
      ),
    );
  }
}

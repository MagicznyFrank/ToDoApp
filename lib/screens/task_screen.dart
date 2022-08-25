// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var size,width,height;
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("./images/background.png"),
                  fit: BoxFit.cover,
                )
            ),
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height/4,
                  color: Colors.transparent,
                  child:  Row(
                    children: [
                         Padding(
                          padding: EdgeInsets.only(left: width/9.5,bottom: height/7),
                          child: const Text("todo",
                              overflow: TextOverflow.fade,
                              style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:30)
                          ),
                        ),

                    ],
                  ),
                ),
                Container(
                  width: width,
                  height: height/9,
                  color: Colors.transparent,
                  child:  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: width/9.5),
                          child: const Text("12",
                              style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:100)
                          ),
                        ),
                      ),
                    ],

                  ), //comment
                ),
                Container(
                  width: width,
                  height: height/5,
                  color: Colors.transparent,
                  child:  Row(
                    children: [
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: width/9.5),
                          child: const Text("Tasks for today",
                              overflow: TextOverflow.fade,
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:35)
                          ),
                      ),
                      ),
                    ],
                  ), //hello
                ),
                  SingleChildScrollView(
                  child: Container(
                    width: width,
                    height: height/2.29,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(75),
                            topLeft: Radius.circular(75)
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.white),
                            child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child:  CheckboxListTile(
                                title: const Text('CheckBox'),
                                value: _isChecked,
                                onChanged: (bool? value){
                                  setState(() => _isChecked = value!);
                                }
                         )
                            ),
                  ),
                  ),
              ],
            ),
          )
      ),
    );
  }

}

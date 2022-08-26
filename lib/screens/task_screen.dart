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
            child: SafeArea(
            child: Column(
              children: [
                         Padding(
                          padding: EdgeInsets.only(left: 25,bottom: height/7),
                          child: const Align(
                            alignment: Alignment.centerLeft,
                              child: Text("todo",
                              overflow: TextOverflow.fade,
                              style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:30)
                          ),
                          ),
                        ),

                          const Padding(
                          padding: EdgeInsets.only(left: 25),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("12",
                              style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:100)
                          ),
                            ),
                        ),
                 Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Align(
                              alignment: Alignment.centerLeft,
                          child: Container(
                            width: 200,
                          child: const Text("Tasks for today",
                              overflow: TextOverflow.fade,
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:35)
                          ),
                          )
                          )
                      ),
                const Padding(
                  padding: EdgeInsets.only(left: 25,top: 30),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("✔   2 tasks done",
                        style: TextStyle(color: Colors.grey,fontSize:15)
                    ),
                  ),
                ),

              const Expanded(child: Align()),
              SingleChildScrollView(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 300,
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
                                controlAffinity: ListTileControlAffinity.leading,
                                title: const Text('CheckBox'),
                                value: _isChecked,
                                onChanged: (bool? value){
                                  setState(() => _isChecked = value!);
                                }
                         )
                            ),

                  ),
                  ),
            )
              ],
            ),
          )
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          elevation: 200,
          onPressed: () {
          },
          backgroundColor: Colors.blueAccent,
          child: const Icon(Icons.add),
        ),

      )
    );
  }

}

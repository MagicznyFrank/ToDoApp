// ignore_for_file: prefer_typing_uninitialized_variables
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/screens/task_screen.dart';

Widget MyButton(String btnText,double btnSize, Color btnColor, Color txtColor,
    double btnWidth, double btnHeight, BuildContext context) {
  return ElevatedButton(
    onPressed: (){
      Navigator.push(context,
        MaterialPageRoute(builder: (context) => const mainscreen()),
      );
    },
    style: ElevatedButton.styleFrom(
      side: const BorderSide(width: 3.0, color: Colors.blueAccent,),
      fixedSize: Size(btnWidth, btnHeight),
      primary: btnColor, shadowColor: Colors.transparent,elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
    child: Text(
      btnText,
      style: TextStyle(
        fontSize: btnSize,
        color: txtColor,
      ),
    ),
  );
}

class add_task extends StatefulWidget {
  const add_task({super.key});
  static const routeName = '/add_task';


  @override
  State<add_task> createState() => _add_task();
}

class _add_task extends State<add_task> {
  var size, width, height, value;


  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    var today = DateTime.now();
    var dateFormat = DateFormat('dd-MM-yyyy');
    String currentDate = dateFormat.format(today);
    return MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
            resizeToAvoidBottomInset: false,
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
                      padding: EdgeInsets.only(left: 25, bottom: height / 7),
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Text("todo",
                            overflow: TextOverflow.fade,
                            style: TextStyle(color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 30)
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 200,
                              child: const Text("Today is",
                                  overflow: TextOverflow.fade,
                                  style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 35)
                              ),
                            )
                        )
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(currentDate,
                            style: const TextStyle(color: Colors.blueAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 55)
                        ),
                      ),
                    ),
                    const Expanded(child: Align()),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: 400,
                          width: width,
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
                                  offset: const Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white),
                          child: Column(
                            children: [
                               Padding(
                                  padding: const EdgeInsets.only(top: 50,right:45,left: 45),
                                  child: TextField(
                                    controller: TextEditingController(),
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(
                                      ),
                                      hintText: 'Moje zadanie na dzisiaj',
                                    ),
                              ),
                              ),
                              const Expanded(child: Align()),
                              Padding(
                                  padding: const EdgeInsets.only(bottom: 25),
                                  child: MyButton(
                                      new_task.text.toString(), 15, Colors.transparent,
                                      Colors.blueAccent, 300, 50, context)
                              ),
                            ],
                          )
                        ),
                      ),
                  ],
                ),
              )
          ),
        )
    );
  }
}
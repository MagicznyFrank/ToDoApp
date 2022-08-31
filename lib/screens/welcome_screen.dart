import 'package:flutter/material.dart';
import 'task_screen.dart';

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

class welcome_screen extends StatefulWidget {
  const welcome_screen({super.key});

  @override
  State<welcome_screen> createState() => _welcome_screenState();
}

class _welcome_screenState extends State<welcome_screen> {
  @override
  Widget build(BuildContext context) {
    var size,width,height;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          body: Container(
            width: width,
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
                      child: Text("Hello",
                          style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:100)
                      ),
                    ),
                  ), //co
            Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 200,
                      child: const Text("You have no tasks, let's add new",
                          overflow: TextOverflow.fade,
                          style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:35)
                      ),
                    )
                )
            ),
                  const Expanded(child: Align()),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 150),
                    child: MyButton("Add Task", 15, Colors.transparent, Colors.blueAccent, width/1.3, 50, context)
                    ), //button
                ],
              ),
            ),
        )
        ),

      );
  }
}
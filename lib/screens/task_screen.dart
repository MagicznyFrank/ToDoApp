import 'package:flutter/material.dart';

buttonPressed(String buttonText){}
var size,width,height;

Widget MyButton(String btnText,double btnSize, Color btnColor, Color txtColor,
    double btnwidth, double btnhight) {
  return ElevatedButton(
    onPressed: () => buttonPressed(btnText),
    child: Text(
      btnText,
      style: TextStyle(
        fontSize: btnSize,
        color: txtColor,
      ),
    ),
    style: ElevatedButton.styleFrom(
      side: BorderSide(width: 3.0, color: Colors.blueAccent,),
      fixedSize: Size(btnwidth, btnhight),
      primary: btnColor, shadowColor: Colors.transparent,elevation: 0,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),

    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("../images/background.png"),
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
                      Flexible(
                        child: Padding(
                          padding: EdgeInsets.only(left: width/9.5,bottom: height/7),
                          child: Text("todo",
                              overflow: TextOverflow.fade,
                              style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:30)
                          ),
                        ),
                      ),
                    ],
                  ), //todo
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
                          child: Text("12",
                              style: TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:70)
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
                          child: Text("Tasks for today",
                              overflow: TextOverflow.fade,
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize:35)
                          ),
                        ),
                      ),
                    ],

                  ), //hello
                ),
                Container(
                  width: width,
                  height: height/2.5,
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.only(top: 150),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyButton("Add Task", 15, Colors.transparent, Colors.blueAccent, width/1.3, 50)
                      ],
                    ), //button
                  ),
                ),
              ],
            ),
          )
      ),

    );
  }
}
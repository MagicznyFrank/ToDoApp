import 'package:flutter/material.dart';

buttonPressed(String buttonText){}
var size,width,height;
bool isChecked = false;

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
      side: const BorderSide(width: 3.0, color: Colors.blueAccent,),
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
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("./images/background.png"),
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
                          child: const Text("todo",
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
                          child: const Text("12",
                              style: const TextStyle(color: Colors.blueAccent,fontWeight: FontWeight.bold,fontSize:100)
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
                            topRight: const Radius.circular(75),
                            topLeft: const Radius.circular(75)
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
                                value: isChecked,
                                onChanged: (bool? value){
                                  setState(() => isChecked = value!);
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

  void setState(bool Function() param0) {}
}
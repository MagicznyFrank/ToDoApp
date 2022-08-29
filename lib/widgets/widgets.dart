import 'package:flutter/material.dart';

  abstract class Widgets extends StatelessWidget {
  const Widgets({Key? key}) : super(key: key);

  @override
  Widget MyButton(String btnText,double btnSize, Color btnColor, Color txtColor,
      double btnWidth, double btnHeight) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 3.0, color: Colors.blueAccent,),
        fixedSize: Size(btnWidth, btnHeight),
        primary: btnColor,
        shadowColor: Colors.transparent,
        elevation: 0,
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
}
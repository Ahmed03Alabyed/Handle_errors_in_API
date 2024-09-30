import 'package:flutter/material.dart';

class UpdateUiExample extends StatefulWidget {
  UpdateUiExample({super.key});

  @override
  State<UpdateUiExample> createState() => _UpdateUiExampleState();
}

class _UpdateUiExampleState extends State<UpdateUiExample> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        x = x +1;
        print("tapped: x = $x");
        setState(() {
          
        });
      },
        child: Text(
      "X = $x",
      style: TextStyle(fontSize: 45),
    ));
  }
}

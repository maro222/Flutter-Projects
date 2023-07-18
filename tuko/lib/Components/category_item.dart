import 'package:flutter/material.dart';

class Category extends StatelessWidget{
  Category({this.name, this.color, this.onTap});
  String? name;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        color: color,
        child: Text(
          name!,
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'Chela One',
          ),
          textAlign: TextAlign.center,
        ),
        height: 70,
        //padding: const EdgeInsets.symmetric(vertical: 22),
        width: double.maxFinite,
      ),
    );
  }
}





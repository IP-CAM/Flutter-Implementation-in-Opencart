import 'package:flutter/material.dart';
import 'main.dart';

Widget NavList({String title, Color color, String image}){
  return Container(
    height: 50,
    width: 160,
    padding: EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: indigo.withOpacity(0.2),
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8)
          ),
          height: 35,
          width: 35,
          child: Image.asset(image),
        ),
        SizedBox(width: 20,),
        Text(title, style: TextStyle(fontFamily: 'gilroyS', color: color),)
      ],
    ),
  );
}

Widget Nav({String title, Icon icon}){
  return Container(
    height: 50,
    width: 160,
    padding: EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      //color: indigo.withOpacity(0.2),
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(8)
          ),
          height: 35,
          width: 35,
          child: icon,
        ),
        SizedBox(width: 20,),
        Text(title, style: TextStyle(fontFamily: 'gilroyS', color: primary.withOpacity(0.5)),)
      ],
    ),
  );
}

Widget Button({String text, double width}){
  return Container(
    height: 50,
    width: width,
    decoration: BoxDecoration(
        color: primary,
        borderRadius: BorderRadius.circular(10)
    ),
    child: Center(
      child: Text(text, style: TextStyle(color: Colors.white, fontFamily: 'gilroyS'),),
    ),
  );
}
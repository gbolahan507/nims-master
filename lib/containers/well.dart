import 'package:flutter/material.dart';
import 'package:nims/styles/colors.dart';
 
Widget appWell({label,width, Color color, text }) {
  return new Container( 
    width: width,
    decoration: BoxDecoration(
      color:  color == null ? colorStyles['grey'] : color,
    ),
    padding: EdgeInsets.symmetric(
      vertical: 15,horizontal: 8
    ),
    child: new Text('$label',style: TextStyle(
      color: text == null ? colorStyles['yellow'] : text,fontSize: 14,
      fontWeight: FontWeight.w600
    ),),
  );
}

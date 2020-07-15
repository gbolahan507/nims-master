import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nims/styles/colors.dart';

Widget richwell({date,width, Color color, text, delivered,  }) {
  return new Container(
    margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
    width: width,
    decoration: BoxDecoration(
      color:  color == null ? colorStyles['grey'] : color,
    ),
    padding: EdgeInsets.symmetric(
        vertical: 10,horizontal: 15
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SizedBox(height: 2.0),
        RichText(
            text: TextSpan(
                text: text,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                children: [
                  TextSpan(
                    text:  delivered,
                    style: TextStyle(
                        color: Colors.orange, fontWeight: FontWeight.normal),
                  ),
                  TextSpan(
                    text: date,
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ]
            )
        ),
      ],
    ),

  );
}
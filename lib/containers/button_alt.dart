import 'package:flutter/material.dart';
import 'package:nims/styles/colors.dart';

Widget appbuttonAlt({ @required String label, @required Function action, double padding = 12.0 }) {
  return new FlatButton(
    color: colorStyles['text_blue'],
    shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(6.0)),
    onPressed: action,
    child: Container(
      padding: EdgeInsets.symmetric(
        vertical: padding,
      ),
      child: Center(
        child: new Text(label, style: TextStyle(
          color: Colors.white,
        ),),
      ),
    ) ,
  );
}

import 'package:flutter/material.dart';
import 'package:nims/styles/colors.dart';

Widget appInput({label, password, @required controller}) {
  return new TextFormField(
    controller: controller,
    decoration: new InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 7
      ),  
      fillColor: Colors.grey.shade200,
      filled: true,
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(6.0), borderSide: BorderSide(
        style: BorderStyle.none,
        color: Colors.grey.shade200
      )),
    ),
    style: TextStyle(
      color: colorStyles['text_blue'],
      fontSize: 18,
    ), 
    obscureText: password,
  );
}

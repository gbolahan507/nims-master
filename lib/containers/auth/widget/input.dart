import 'package:flutter/material.dart';
import 'package:nims/styles/colors.dart';

Widget authInput({label, password, @required TextEditingController controller, validator, }) {

  return new TextFormField(
    
    controller: controller,
    decoration: new InputDecoration(
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5
      ),
      labelText: label,
      labelStyle: TextStyle(color: colorStyles['text_grey'] ),
      fillColor: Colors.white,
      filled: true,
      border: UnderlineInputBorder(borderRadius: BorderRadius.circular(6.0)),
    ),
    style: TextStyle(
      fontSize: 13,
    ),
    validator: validator,
    
    obscureText: password, 
  );
}

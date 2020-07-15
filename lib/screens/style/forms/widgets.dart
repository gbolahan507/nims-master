import 'package:flutter/material.dart';
import 'package:nims/containers/well.dart';
import 'package:nims/screens/products/products_screen.dart';
import 'package:nims/styles/colors.dart';

Widget formWithImage({name, controller, context, hint, image}) {
  return Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image(
            image: AssetImage('$image'),
            height: 80,
            width: 80,
          ),
          new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '$name',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: colorStyles['text_blue'],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 160,
                child: appInput(
                  controller: controller,
                  hint: '$hint',
                ),
              ),
            ],
          )
        ]),
  );
}

Widget uploadsForm({name, controller, context, hint}) {
  return Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '$name',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
          color: colorStyles['text_blue'],
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      new Row(
        children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width - 178,
            child: appWell(
                label: '$hint', width: MediaQuery.of(context).size.width),
          ),
          SizedBox(
            width: 10.0,
          ),
          appbuttons(action: () {}, label: 'Browse', padding: 15)
        ],
      )
    ]),
  );
}

Widget fixedForm({name, controller, context, hint}) {
  return Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '$name',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
          color: colorStyles['text_blue'],
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      appWell(label: '$hint', width: MediaQuery.of(context).size.width)
    ]),
  );
}

Widget longForm({name, controller, context, hint}) {
  return Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '$name',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
          color: colorStyles['text_blue'],
          
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      appInput(
          controller: controller,
          hint: '$hint',
          width: MediaQuery.of(context).size.width)
    ]),
  );
}
Widget textarea({name, controller, context, hint}) {
  return Padding(
    padding: EdgeInsets.only(top: 20.0),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '$name',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.w600,
          color: colorStyles['text_blue'],
        ),
      ),
      SizedBox(
        height: 10.0,
      ),
      appInput(
          controller: controller,
          hint: '$hint',
          width: MediaQuery.of(context).size.width)
    ]),
  );
}

import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:nims/containers/button_alt.dart';
import 'package:nims/styles/colors.dart';

List<String> cities = [
  'Kola',
  'Chennai',
  'Tunde',
  'Shade',
  'Ola',
];
List<String> countries = [
  'INDIA',
  'USA',
  'JAPAN',
];
Widget theExistingClient({action, goBack, controller, selectedProduct,context}) =>
    new Padding(
      padding: new EdgeInsets.symmetric(horizontal: 40.0),

      child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Search Client Name',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: colorStyles['text_blue'],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        DropDownField(
            value: cities[0],
            required: true,
            items: cities,
            strict: false,
            setter: (dynamic newValue) {
              selectedProduct = newValue;
            }),
        SizedBox(
          height: 20.0,
        ),
        FlatButton(
          color: colorStyles['text_blue'],
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(6.0)),
          onPressed: ()   {

                  Navigator.pushNamed(context, '/user-measurement-outfit');
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
            child: Center(
              child: new Text(
                'Select',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
         SizedBox(
          height: 20.0,
        ),
        new GestureDetector(
          onTap: goBack,
          child: Text(
            "Go Back",
            textAlign: TextAlign.center,
          ),
        )
      ],
      ),
    );

Widget theNewClient({action, goBack, controller,context}) => new Padding(
      padding: new EdgeInsets.symmetric(horizontal: 40.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Check email to reset password',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
              color: colorStyles['text_blue'],
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: appbuttonAlt(action: (){
              Navigator.pushNamed(context, '/user-measurement-outfit');
            }, label: 'OK', padding: 15),
          ),
          new GestureDetector(
            onTap: goBack,
            child: Text("Go Back"),
          )
        ],
      ),
    );

Widget theSelectUser({newClient, oldClient}) => new Padding(
      padding: new EdgeInsets.symmetric(horizontal: 40.0),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          appbuttonAlt(
              action: oldClient, label: 'Existing Client', padding: 15),
          SizedBox(
            height: 15.0,
          ),
          appbuttonAlt(action: newClient, label: 'New Client', padding: 15),
        ],
      ),
    );

import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/containers/measurement/widget/select_user_widgets.dart';
import 'package:nims/containers/well.dart';
import 'package:nims/screens/style/forms/widgets.dart';
import 'package:nims/screens/style/select_style_screen.dart';
import 'package:nims/styles/colors.dart';
import 'package:redux/redux.dart';
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

import '../../products/products_screen.dart';

class KaftanForm extends StatefulWidget {
  @override
  _KaftanFormState createState() => new _KaftanFormState();
}

class _KaftanFormState extends State<KaftanForm> {
  final formKey = new GlobalKey<FormState>();
  bool newClients = true;
  String selectType = '';
  TextEditingController _user = TextEditingController();

  void _submit() {
    final form = formKey.currentState;

    if (form.validate()) {
      form.save();
    }
  }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context, String username, String password) =>
          store.dispatch(login(context, username, password));
    }, builder: (BuildContext context, loginAction) {
      return new Padding(
        padding: new EdgeInsets.symmetric(horizontal: 40.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.0,
            ),
            Text(
              'Client Name',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                color: colorStyles['text_blue'],
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            appWell(
                color: colorStyles['yellow'],
                text: Colors.white,
                label: 'Kola Banker',
                width: MediaQuery.of(context).size.width),
            uploadsForm(context: context, name: 'Upload style', hint: 'Select from Device'),
            uploadsForm(context: context, name: 'Upload Fabrics', hint: 'Select from Device'),
            longForm(
                context: context,
                name: 'Numbers of Outfit',
                hint: 'Type numbers of outfit'),
            fixedForm(context: context, name: 'Amount', hint: '₦ 4,000'),
            formWithImage(
                context: context, 
                name: 'Length of Trouser', 
                hint: 'Type measurement',
                image: 'assets/kaftan-m/s1@3x.png'
                ), 
            formWithImage(
                context: context, 
                name: 'Waist of Trouser', 
                hint: 'Type measurement',
                image: 'assets/kaftan-m/s2@3x.png'
                ), 
            formWithImage(
                context: context, 
                name: 'Hips', 
                hint: 'Type measurement',
                image: 'assets/kaftan-m/s2@3x.png'
                ), 
            formWithImage(
                context: context, 
                name: 'Thigh', 
                hint: 'Type measurement',
                image: 'assets/kaftan-m/s3@3x.png'
                ), 
            formWithImage(
                context: context, 
                name: 'Around the Ankles', 
                hint: 'Type measurement',
                image: 'assets/kaftan-m/s4@3x.png'
                ), 
            formWithImage(
                context: context, 
                name: 'Pant inner Lenght', 
                hint: 'Type measurement',
                image: 'assets/kaftan-m/s5@3x.png'
                ), 
            textarea(
                context: context, 
                name: 'Other Important Details', 
                hint: 'Type other Important Details',
                ), 
                 SizedBox(
              height: 25.0,
            ),
            FlatButton(
              color: colorStyles['text_blue'],
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(6.0)),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserStyleScreen()),
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Center(
                  child: new Text(
                    'Save & Continue',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
           SizedBox(
              height: 25.0,
            ),
          ],
        ),
      );
    });
  }
}

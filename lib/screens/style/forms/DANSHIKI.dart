import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/api/measurement_api.dart';
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
  // TextEditingController _user = TextEditingController();

                 var _number_of_outfit = TextEditingController();
                  var _sleeve = TextEditingController();
                  var _chest = TextEditingController();
                  var _neck = TextEditingController();
                  var _shoulder = TextEditingController();
                  var _length_of_danshiki = TextEditingController();
                  var _other = TextEditingController();



  Mearsurement mearsurement = Mearsurement();



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
      return Form(
        key: formKey,
              child: new Padding(
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
                  hint: 'Type numbers of outfit',
                  controller: _number_of_outfit,
              ),
              fixedForm(context: context, name: 'Amount', hint: '₦ 5,000'),
              formWithImage(
                  context: context, 
                  name: 'Neck', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s1@3x.png',
                  controller:  _neck
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Shoulder', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s2@3x.png',
                  controller: _shoulder,
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Sleeve', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s2@3x.png',
                  controller: _sleeve,
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Chest', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s3@3x.png',
                  controller: _chest,
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Length of Danshiki', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s4@3x.png',
                  controller: _length_of_danshiki,

                  ), 
              
              textarea(
                  context: context, 
                  name: 'Other Important Details', 
                  hint: 'Type other Important Details',
                  controller: _other,
                  ), 
                   SizedBox(
                height: 25.0,
              ),
              FlatButton(
                color: colorStyles['text_blue'],
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(6.0)),
                onPressed: () async {
                   if (formKey.currentState.validate()) {
                      var number_of_outfit = _number_of_outfit.text;
                      var length_of_danshiki = _length_of_danshiki.text;
                      var shoulder = _shoulder.text;
                      var neck = _neck.text;
                      var chest = _chest.text;
                      var other = _other.text;
                      var sleeve = _sleeve.text;

                      var  resp = await mearsurement.danshiki(number_of_outfit,  sleeve, chest, neck, shoulder, length_of_danshiki, other);
                      print(resp);
                      if (resp['status'] == true) {
                      Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserStyleScreen()),
                  );
                      }

                   }
                   
                  
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
        ),
      );
    }
    );
  }
}

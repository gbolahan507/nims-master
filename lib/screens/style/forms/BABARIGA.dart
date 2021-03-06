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

                  var _number_of_outfit = TextEditingController();
                  var _length_of_trouser = TextEditingController();
                  var _waist_of_trouser = TextEditingController();
                  var _length_of_top = TextEditingController();
                  var _waist_of_top = TextEditingController();
                  var _hips = TextEditingController();
                  var _thigh = TextEditingController();
                  var _ankles = TextEditingController();
                  var _pant = TextEditingController();
                  var _other = TextEditingController();
                  var _arm_measurement = TextEditingController();
                  var _sleeve = TextEditingController();  
                  var _chest = TextEditingController();
                  var _neck = TextEditingController();
                  var _shoulder = TextEditingController();
                  var _length_of_danshiki = TextEditingController();
                  var _trouser_inner_length = TextEditingController();




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
                  hint: 'Type numbers of outfit'),
              fixedForm(context: context, name: 'Amount', hint: '₦ 4,000'),
                         formWithImage(
                  context: context, 
                  name: 'Neck', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s1@3x.png',
                  controller: _neck,
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Length of Top', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s2@3x.png',
                  controller: _length_of_top
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Shoulder', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s2@3x.png',
                  controller: _shoulder
                  
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Sleeve', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s2@3x.png',
                  controller: _sleeve
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Chest', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s3@3x.png',
                  controller: _chest
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Waist of Top', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s4@3x.png',
                  controller: _waist_of_top
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Arm Measurement', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s1@3x.png',
                  controller: _arm_measurement
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Length of Trouser', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s1@3x.png',
                  controller: _length_of_trouser
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Waist of Trouser', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s2@3x.png',
                  controller: _waist_of_trouser
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Hips', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s2@3x.png',
                  controller: _hips
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Thigh', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s3@3x.png',
                  controller: _thigh
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Around the Ankles', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s4@3x.png',
                  controller: _ankles
                  ), 
              formWithImage(
                  context: context, 
                  name: 'Trouser inner Length', 
                  hint: 'Type measurement',
                  image: 'assets/kaftan-m/s5@3x.png',
                  controller: _trouser_inner_length
                  ), 
              
              textarea(
                  context: context, 
                  name: 'Other Important Details', 
                  hint: 'Type other Important Details',
                  controller: _other
                  ), 
                   SizedBox(
                height: 25.0,
              ),
              FlatButton(
                color: colorStyles['text_blue'],
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(6.0)),
                onPressed: () async {
                  if (formKey.currentState.validate()){

                     var number_of_outfit = _number_of_outfit.text;
                        var shoulder = _shoulder.text;
                        var neck = _neck.text;
                        var chest = _chest.text;
                        var sleeve = _sleeve.text;
                        var arm_measurement = _arm_measurement.text;
                        var trouser_inner_length = _trouser_inner_length.text;
                        var waist_of_top = _waist_of_top.text;
                        var hips = _hips.text;
                        var thigh = _thigh.text;
                        var ankles = _ankles.text;
                        var length_of_top = _length_of_top;
                         var length = _length_of_trouser.text;
                         var waist = _waist_of_trouser.text;
                            var other = _other.text;

                    var resp = await mearsurement.babariga( number_of_outfit,  neck, length_of_top, waist_of_top,
                     arm_measurement, shoulder, sleeve, chest, length, waist, hips, thigh, ankles, trouser_inner_length, other);
                     print(resp);
                     if (resp['status'] == true) {
                       Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UserStyleScreen()),
                  );
                     }
                  }
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
        ),
      );
    });
  }
}

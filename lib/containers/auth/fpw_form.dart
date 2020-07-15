import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/containers/button_alt.dart';
import 'package:nims/containers/input.dart';
import 'package:nims/styles/colors.dart';
import 'package:redux/redux.dart';
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class FPWForm extends StatefulWidget {
  @override
  _FPWFormState createState() => new _FPWFormState();
}

class _FPWFormState extends State<FPWForm> {
  final formKey = new GlobalKey<FormState>();
  bool displayForm = true;
  TextEditingController _email; 

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
      return displayForm
          ? theForm(action: () {
              this.setState(() {
                this.displayForm = false;
              });
            })
          : theNotif(action: () {
              _submit();
              loginAction(context, _email);
            });
    });
  }

  Widget theNotif({action}) => new Padding(
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
              )
              , 
              SizedBox(
                height: 30.0,
              ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: appbuttonAlt(action: action, label: 'OK', padding: 20),
            )  ,
            ],
          ),
        );

  Widget theForm({action}) => Form(
        key: formKey,
        child: new Padding(
          padding: new EdgeInsets.symmetric(horizontal: 40.0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter Email Address',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500,
                  color: colorStyles['text_blue'],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              appInput(
                  password: false, controller: _email, label: ''),
              SizedBox(
                height: 30.0,
              ),
              appbuttonAlt(action: action, label: 'Reset Password', padding: 20),
            ],
          ),
        ),
      );
}

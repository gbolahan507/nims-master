import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/api/api.dart';
import 'package:nims/containers/auth/details_form.dart';
import 'package:nims/containers/auth/widget/input.dart';
import 'package:nims/containers/button.dart';
import 'package:nims/screens/auth/details_screen.dart';
import 'package:nims/screens/products/products_screen.dart';
import 'package:redux/redux.dart';
 
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class RegisterForm extends StatefulWidget {

 
  @override
  _RegisterFormState createState() => new _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final formKey = new GlobalKey<FormState>();

    Details detail = Details();


  TextEditingController  _username =  TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController  _repassword = TextEditingController();
 


  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context, String username, String password) =>
          store.dispatch(login(context, username, password));
    }, builder: (BuildContext context, loginAction) {
      return new Form(
        key: formKey,
        child: new Column(
          children: [
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: authInput(
                  password: false, controller: _username, label: 'User Name'),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: authInput(
                  password: true, controller: _password, label: 'Password',
                  validator: (val) => val.isEmpty ? 'Please enter your  password' : null,),
            ),
            SizedBox(
              height: 10.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: authInput(
                  password: true, controller: _repassword, label: 'Re-write Password',
                  validator: (val) {
                    if (val.isEmpty) 
                    return 'confirm password';
                   if (val != _password.text)
                   return 'password not match';
                   
                   }
                  ),
                  
                
            ),
            SizedBox(
              height: 40.0,
            ),
            new Padding(
              padding: new EdgeInsets.symmetric(horizontal: 20.0),
              child: appbutton(
                  action: () async {
                    if (formKey.currentState.validate()){

                      Navigator.of(context).push(MaterialPageRoute
                      (builder: (context) => DetailsScreen(username: _username.text, password: _password.text, )
                      
                      ));

              // Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
    }
                    
                  },
                  label: 'SIGN UP'),
            ),
               SizedBox(
              height: 10.0,
            ),
               ],
        ),
      );
    });
  }
}

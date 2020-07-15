import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/api/api.dart';
import 'package:nims/containers/auth/widget/input.dart';
import 'package:nims/containers/button.dart';
import 'package:nims/screens/products/products_screen.dart';
import 'package:redux/redux.dart';
import 'register_form.dart';
 
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class DetailsForm extends StatefulWidget {

  var username;
  var password;

  DetailsForm({Key key, @required  this.username, this.password});

   
  @override
  _DetailsFormState createState() => new _DetailsFormState();
}

class _DetailsFormState extends State<DetailsForm> {
  // DetailScreen details = DetailScreen();
    Details detail = Details();

  final formKey = new GlobalKey<FormState>();

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
 var  _email = TextEditingController();
  var  _phone_number = TextEditingController();
  var  _address = TextEditingController();
  var  _company_name = TextEditingController();

  // void _submit() {
  //   final form = formKey.currentState;

  //   if (form.validate()) {
  //     form.save();
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context, String username, String password) =>
          store.dispatch(login(context, username, password));
    }, builder: (BuildContext context, loginAction) {
      return new Form(
            key: formKey,
            child: new  Column (
          children: [
      new Padding(
        padding: new EdgeInsets.symmetric(horizontal: 20.0),
        child: authInput(
        password: false, controller: _company_name, label: 'Company Name'),
      ),
      SizedBox(
        height: 10.0,
      ),
      new Padding(
        padding: new EdgeInsets.symmetric(horizontal: 20.0),
        child: authInput(
        password: false, controller: _email, label: 'Email'),
      ),
      SizedBox(
        height: 10.0,
      ),
      new Padding(
        padding: new EdgeInsets.symmetric(horizontal: 20.0),
        child: authInput(
        password: false, controller: _address, label: 'Office Address'),
      ),
      SizedBox(
        height: 10.0,
      ),
      new Padding(
        padding: new EdgeInsets.symmetric(horizontal: 20.0),
        child: authInput(
        password: false, controller: _phone_number, label: 'Phone No'),
      ),
      SizedBox(
        height: 40.0,
      ),
      new Padding(
        padding: new EdgeInsets.symmetric(horizontal: 20.0),
        child: appbutton(
        action: () async{
          if(formKey.currentState.validate()){
          var username = widget.username;
          var password = widget.password;
          var email = _email.text;
          var phone_number = _phone_number.text;
          var address = _address.text;
          var company_name = _company_name.text;
     var resp = await detail.registerUser(email, phone_number, username, password ,company_name, address);
     print(resp);
          if (resp['status'] == false) {
          Navigator.push(context, MaterialPageRoute(builder: (context){
        return ProductsScreen();
          }));
     }
          else {

     }
    
 return resp;
    //  print(resp);

          }
          // _submit();
          // loginAction(context, _username, _password);
        },
        label: 'GET STARTED'),
      ),
      //    SizedBox(
      //   height: 10.0,
      // ),
           ],
        ),
          );
    });
  }
}

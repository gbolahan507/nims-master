import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/api/api.dart';
import 'package:nims/containers/auth/widget/input.dart';
import 'package:nims/containers/button.dart';
import 'package:nims/screens/products/products_screen.dart';
import 'package:redux/redux.dart';
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => new _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = new GlobalKey<FormState>();

  var _username = TextEditingController();
  var _password = TextEditingController();
  // TextEditingController _user = TextEditingController();

  String message = '';

    Details detail = Details();

  // void _submit() async {

  // }

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context, username, password) {
        print('step 1 $username $password $_username');
         return store.dispatch(login(context, username, password));
      };
    }, 
    builder: (BuildContext context, loginAction) {
      return new Form(
        key: formKey,
        child: SingleChildScrollView(
                  child: new Column(
            children: [
              new Padding(
                padding: new EdgeInsets.symmetric(horizontal: 20.0),
                child: authInput(
                    password: false, controller: _username,  label: 'Username'),
              ),
              SizedBox(
                height: 10.0,
              ),
              new Padding(
                padding: new EdgeInsets.symmetric(horizontal: 20.0),
                child: authInput(
                    password: true, controller: _password,  label: 'Password'),
              ),
              SizedBox(
                height: 40.0,
              ),
              new Padding(
                padding: new EdgeInsets.symmetric(horizontal: 20.0),
                child: appbutton(
                    action: () async {

if (formKey.currentState.validate()){
      var username = _username.text;
      var password = _password.text;
     var resp = await detail.loginUser(username, password);
    //  print(resp);
    //  var sta = true;
     if (resp['status'] == true) {
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return ProductsScreen();
      }));
     }
      else {

     }
    
 return resp;


    }
                    },
                    label: 'SIGN IN'),
              ),
                 SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      new Radio(
                            activeColor: Colors.white,
                            hoverColor: Colors.white,
                            focusColor: Colors.white,
                            value: 'no!',
                            groupValue: 'logged',
                            onChanged: (ops){ print('dont mind him! $ops');},
                          ),
                      new Text(
                        'Keep me logged-in',
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                    ],
                  ),
                  new GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, '/fpw');
                    },
                    child:new Text(
                    'Forget Password',
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ) ,
                  ),
                  Text(
                    message
                  )
                  
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:nims/api/api.dart';
import 'package:nims/containers/auth/details_form.dart';
import 'package:nims/containers/auth/widget/input.dart';
import 'package:nims/containers/button.dart';
import 'package:nims/screens/products/products_screen.dart';

class DetailsScreen extends StatefulWidget {
      var username;
      var password;
      

    DetailsScreen({Key key, @required this.username, this.password, }) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

   Details detail = Details();

  final formKey = new GlobalKey<FormState>();

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
 var  _email = TextEditingController();
  var  _phone_number = TextEditingController();
  var  _address = TextEditingController();
  var  _company_name = TextEditingController();
  
    @override
    Widget build(BuildContext context) {
        return new Scaffold(
          resizeToAvoidBottomInset: true,
            body:SingleChildScrollView(
                          child: new Container(
                height: MediaQuery.of(context).size.height  ,
                decoration: BoxDecoration(
                image: DecorationImage( 
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.66), BlendMode.darken),
                  fit: BoxFit.cover,
                  image: AssetImage('assets/bg.png'),
                ),
              ),
                          child: new Padding(
                padding: new EdgeInsets.fromLTRB(32.0, MediaQuery.of(context).padding.top + 32.0, 32.0, 32.0),
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                        new Expanded(
              child: new Center(
                  child: Image(image: AssetImage('assets/logo.png'),
                    height: 134.0, 
                  ),
              ),
                        ),
                        // new DetailsForm(username: password,)
                        Form(
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
          ),
                    ],
                )
                          )
                      ),
            )
        );
    }
}
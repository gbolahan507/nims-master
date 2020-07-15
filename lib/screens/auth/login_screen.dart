import 'package:flutter/material.dart';
import 'package:nims/containers/auth/login_form.dart';

class LoginScreen extends StatelessWidget {
    LoginScreen({Key key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return new Scaffold(
          resizeToAvoidBottomInset: true,
            body:new Container(
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
                            new LoginForm()
                        ],
                    )
                )
            )
        );
    }

}
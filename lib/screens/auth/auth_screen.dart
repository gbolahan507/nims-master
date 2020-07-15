import 'package:flutter/material.dart';
import 'package:nims/containers/button.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(0.66), BlendMode.darken),
                fit: BoxFit.cover,
                image: AssetImage('assets/bg.png'),
              ),
            ),
            child: new Padding(
                padding: new EdgeInsets.fromLTRB(32.0,
                    MediaQuery.of(context).padding.top + 32.0, 32.0, 32.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    new Expanded(
                      child: new Center(
                        child: Image(
                          image: AssetImage('assets/logo.png'),
                          height: 134.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: appbutton(label: 'SIGN IN', action: (){ Navigator.pushNamed(context, '/login');}),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 60),
                      child: appbutton(label: 'SIGN UP', action: (){Navigator.pushNamed(context, '/register');} ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ))));
  }
}

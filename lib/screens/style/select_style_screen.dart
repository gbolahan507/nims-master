import 'package:flutter/material.dart';
import 'package:nims/containers/measurement/select_user_form.dart';
import 'package:nims/screens/style/forms/select_style_form.dart';

class UserStyleScreen extends StatelessWidget {
  UserStyleScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: new Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(.1), BlendMode.darken),
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/KAFTAN-INTERFACE/2@3x.png'),
                alignment: Alignment(0, -1)),
          ),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                new Container(
                  height: MediaQuery.of(context).size.height * .56,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                  child: new SelectUserStyleForm(),
                )
              ]),
        ),
      ),
    );
  }
}

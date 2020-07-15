import 'package:flutter/material.dart';
import 'package:nims/containers/auth/fpw_form.dart';

class FPWScreen extends StatelessWidget {
  FPWScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(.5), BlendMode.darken),
              fit: BoxFit.fitWidth,
              image: AssetImage('assets/security-bg.png'),
              alignment: Alignment(0, -7)),
        ),
        child: new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[ 
              Text(
                'FORGET PASSWORD',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
             SizedBox(
                height: 150.0,
              ),
              new Container(
                height: MediaQuery.of(context).size.height * .56,
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
                child: new FPWForm(),
              )
            ]),
      ),
    );
  }
}

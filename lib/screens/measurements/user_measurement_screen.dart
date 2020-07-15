import 'package:flutter/material.dart';
import 'package:nims/containers/measurement/select_user_form.dart';

class UserMeasurementScreen extends StatelessWidget {
  UserMeasurementScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//    var screenH = MediaQuery.of(context).size.height;
//    var screenW = MediaQuery.of(context).size.width;
    return new Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: new Container(
          height: MediaQuery.of(context).size.height  ,
          decoration: BoxDecoration(
            image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(.1), BlendMode.darken),
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/sewing-meterbg.png'),
                alignment: Alignment(0, -2.7 )),
          ),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height*.1),
                Text(
                  'MEASUREMENT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 150.0,
                ),
                new Container(
                  height: MediaQuery.of(context).size.height * .56,
                  decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                  child: new SelectUserForm(),
                )
              ]),
        ),
      ),
    );
  }
}

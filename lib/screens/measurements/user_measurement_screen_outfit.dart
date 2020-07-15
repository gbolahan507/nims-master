import 'package:flutter/material.dart';
import 'package:nims/containers/measurement/select_user_outfit_form.dart';

class UserMeasurementOutfitScreen extends StatelessWidget {
  UserMeasurementOutfitScreen({Key key}) : super(key: key);

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
                image: AssetImage('assets/sewing-meterbg.png'),
                alignment: Alignment(0, -3),)
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'MEASUREMENT',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600  ),
                ),
                SizedBox(
                  height: 350.0,
                ),
                new Container(
                    height: MediaQuery.of(context).size.height * .56,
                  decoration: new BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                  child: new SelectUserOutfitForm(),
                )
              ]),
        ),
      ),
      ),
    );
  }
}

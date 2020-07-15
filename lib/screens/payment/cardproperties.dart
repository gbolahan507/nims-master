import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:nims/containers/well.dart';
import 'package:nims/styles/colors.dart';
import 'package:redux/redux.dart';
import 'package:nims/models/app_state.dart';
import 'package:nims/actions/auth_actions.dart';

class CardProperties extends StatefulWidget {
  @override
  _CardPropertiesState createState() => new _CardPropertiesState();
}

class _CardPropertiesState extends State<CardProperties> {

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, dynamic>(
        converter: (Store<AppState> store) {
      return (BuildContext context, String username, String password) =>
          store.dispatch(login(context, username, password));
    }, builder: (BuildContext context, loginAction) {
      return new Padding(
        padding: new EdgeInsets.all(40.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Card Number"),
            SizedBox(height: 10.0),
            appWell(label: '**** **** **** ****',
            width: MediaQuery.of(context).size.width),
              SizedBox(
              height: 35.0,
            ),
            Text('Valid untill'),
            SizedBox(height: 10.0),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[

                  Expanded(
                    child: Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width / 2.0,
                      child: appWell(
                        label: "Month / Year",
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topCenter,
                      width: MediaQuery.of(context).size.width / 2.0,
                      child: appWell(
                        label: "CVV"
                      ),
                    ),
                  )
                ],
              ),
            SizedBox(
              height: 35.0
            ),
            FlatButton(
              color: colorStyles['text_blue'],
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(6.0)),
              onPressed: () {
                Navigator.pushNamed(context, '/card_details'); //  validation with API
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                child: Center(
                  child: new Text(
                    'Proceed to confirm',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

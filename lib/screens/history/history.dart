import 'package:flutter/material.dart';
import 'package:nims/screens/history/historyproperties.dart';

class HistoryScreen extends StatelessWidget {
  HistoryScreen({Key key}) : super(key: key);

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
                    Colors.black.withOpacity(.5), BlendMode.darken),
                fit: BoxFit.fitWidth,
                image: AssetImage('assets/reels-colored-threads.png'),
                alignment: Alignment(0, -3)),
          ),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'HISTORY',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600  ),
                ),
                SizedBox(
                  height: 180.0,
                ),
                new Container(
                  height: MediaQuery.of(context).size.height * .46,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0)
                      )
                    ),
                    child: new HistoryProperties(),
                )
              ]
            ),
        ),
      ),
    );
  }
}

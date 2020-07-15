import 'package:flutter/material.dart';
import 'categoriesproperties.dart';

class CategoryScreen extends StatelessWidget {
  CategoryScreen({Key key}) : super(key: key);

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
                image: AssetImage('assets/2@2x.png'),
                alignment: Alignment(0, -1)),
          ),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'CATEGORY',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 200.0,
                ),
                new Container(
                  height: MediaQuery.of(context).size.height * .45,
                  decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(40.0),
                          topRight: const Radius.circular(40.0))),
                  child: new CategoryProperties(),
                )
              ]),
        ),
      ),
    );
  }
}
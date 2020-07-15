import 'package:flutter/material.dart';
import 'package:nims/containers/well.dart';
import 'package:nims/styles/colors.dart';

class ProfileProperties extends StatefulWidget {
  @override
  _ProfilePropertiesState createState() => _ProfilePropertiesState();
}

class _ProfilePropertiesState extends State<ProfileProperties> {
  bool _status = true;
  final FocusNode myFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        stream: null,
        builder: (context, snapshot) {
          return Container(
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 40.0
                  ),
                  child: new Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                                  'Profile',
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                               _status ? _getEditIcon() : new Container(),
                          ],
                        ),
                ),
//                 Padding(
//                   padding: const EdgeInsets.all(10.0),
//                   child: DetailsForm(),
//                 ),
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Company Name',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: colorStyles['text_blue'],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      appWell(
                          label: 'NIMS CRAFT',
                          width: MediaQuery.of(context).size.width),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Email',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: colorStyles['text_blue'],
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      appWell(
                          label: 'nimscraft@gmail.com',
                          width: MediaQuery.of(context).size.width),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Office Address',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: colorStyles['text_blue'],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      appWell(
                          label: 'Lekki Phase 1',
                          width: MediaQuery.of(context).size.width),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Phone Number',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: colorStyles['text_blue'],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      appWell(
                          label: '+(234) 123 456 8901',
                          width: MediaQuery.of(context).size.width),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Debut',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: colorStyles['text_blue'],
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      appWell(
                          label: '#10,000',
                          width: MediaQuery.of(context).size.width),
                      SizedBox(
                        height: 15.0,
                      ),
                      FlatButton(
                        color: colorStyles['text_blue'],
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(6.0)),
                        onPressed: () {
                          Navigator.pushNamed(context, '/payment-screen');
                        },
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                          child: Center(
                            child: new Text(
                              'PAY BALANCE',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  Widget _getEditIcon() {
    return new GestureDetector(
      child: new CircleAvatar(
        backgroundColor: Colors.red,
        radius: 14.0,
        child: new Icon(
          Icons.edit,
          color: Colors.white,
          size: 16.0,
        ),
      ),
      onTap: () {
        setState(() {
          _status = false;
        });
      },
    );
  }
}

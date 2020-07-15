import 'package:flutter/material.dart';
import 'package:nims/containers/well.dart';
import 'package:nims/styles/colors.dart';

class PaymentProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: <Widget>[
          Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: FlatButton(onPressed: (){
                    print("gbefun");
                    }, 
                    color: colorStyles['text_blue'],
                    child: Text("Make payment {At Least 60% Deposit}", 
                    style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                ),
                Padding(padding: const EdgeInsets.all(5.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/credit_line_code');
                  }, 
                  color: colorStyles['text_blue'],
                  child: Text("Enter Credit Line Code",
                  style: TextStyle(
                    color: Colors.white),)),
                )
              ],  
            ),
            appWell(
            label: '**** **** **** ****',
            width: MediaQuery.of(context).size.width,
          ),
        ],
      ),
    );
  }
}

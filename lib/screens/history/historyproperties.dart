import 'package:flutter/material.dart';
import 'package:nims/containers/richinput.dart';

class HistoryProperties extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
//      padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 18.0),
//      decoration: BoxDecoration(
//        color: Colors.white,
//        borderRadius: BorderRadius.circular(18),children: <Widget>[
////          richwell(
////            text: 'Office pant',
////            delivered: '\nDelivered',
////            date: '\n24th. May',
////
////          ),
////          SizedBox(height: 8.0),
////          richwell(
////            text:  ' Danshiki',
////            delivered:'\n Delivered',
////            date: '\n 24th. May',
////          ),
////          SizedBox(height: 8.0),
////          richwell(
////            text: ' 4 pieces of kaftan',
////            delivered: '\n Delivered',
////            date: '\n 24th. May',
////          ),
//      ),
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
      SizedBox(height: MediaQuery.of(context).size.height * .01,),
      richwell(
           text: 'Office pant',
            delivered: '\nDelivered',
          date: '\n24th. May',
         ),
         SizedBox(height: 30.0),
         richwell(
            text:  ' Danshiki',
            delivered:'\n Delivered',
            date: '\n 24th. May',
          ),
          SizedBox(height: 30.0),
          richwell(
            text: ' 4 pieces of kaftan',
            delivered: '\n Delivered',
            date: '\n 24th. May',
          ),




//


//          Divider(
//            color: Color(0xff030339),
//            height: 5.0,
//            thickness: 1,
//          ),
//          SizedBox(width: 15.0),
//          Padding(
//            padding: const EdgeInsets.only(right: 290.0),
//            child: RichText(
//                text: TextSpan(
//                    text: ' Danshiki',
//                    style: TextStyle(
//                        color: Colors.black,
//                        fontWeight: FontWeight.bold,
//                        fontSize: 18),
//                    children: [
//                  TextSpan(
//                    text: '\n Delivered',
//                    style: TextStyle(
//                        color: Colors.orange, fontWeight: FontWeight.normal),
//                  ),
//                  TextSpan(
//                    text: '\n 24th. May',
//                    style: TextStyle(
//                      fontWeight: FontWeight.normal,
//                    ),
//                  ),
//                ]
//              )
//            ),
//          ),
//          SizedBox(height: 8.0),
//          Divider(
//            color: Color(0xff030339),
//            height: 5.0,
//            thickness: 1,
//          ),
//          SizedBox(width: 15.0),
//          Padding(
//            padding: const EdgeInsets.only(right: 220.0),
//            child: Column(
//              children: <Widget>[
//                Expanded(
//                  child: RichText(
//                      text: TextSpan(
//                          text: ' 4 pieces of kaftan',
//                          style: TextStyle(
//                              color: Colors.black,
//                              fontWeight: FontWeight.bold,
//                              fontSize: 18),
//                          children: [
//                        TextSpan(
//                          text: '\n Delivered',
//                          style: TextStyle(
//                              color: Colors.orange, fontWeight: FontWeight.normal),
//                        ),
//                        TextSpan(
//                          text: '\n 24th. October',
//                          style: TextStyle(
//                            fontWeight: FontWeight.normal,
//                          ),
//                        ),
//                      ],
//                    )
//                  ),
//                ),
//              ],
//            ),
//          ),
//          SizedBox(height: 8.0),
//          Divider(
//            color: Color(0xff030339),
//            height: 5.0,
//            thickness: 1,
//          ),
        ],

    );
  }
}

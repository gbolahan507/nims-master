import 'package:flutter/material.dart';
import 'package:nims/styles/colors.dart';

Widget productGridItem(detail) {
  return new Container(
    height: 100,
    margin: EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 10, // has the effect of softening the shadow
          spreadRadius: 0, // has the effect of extending the shadow
          offset: Offset(
            1.5, // horizontal, move right 10
            1.5, // vertical, move down 10
          ),
        )
      ],
      borderRadius: BorderRadius.circular(6.0),
      image: DecorationImage(
        // colorFilter: new ColorFilter.mode(
        //     Colors.black.withOpacity(.5), BlendMode.darken),
        fit: BoxFit.fitWidth,
        image: AssetImage('${detail['image']}'),
        // alignment: Alignment(0, -15),
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Container(
          
          width: 110,
          height: 25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(6.0),bottomLeft: Radius.circular(6.0)
            ),
            color: colorStyles['text_blue_lite'],
          ),
          padding: EdgeInsets.symmetric(horizontal: 2),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 2.0,
                    ),
                    Text(
                      '${detail['title']}',
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 8, color: Colors.white),
                    ),
                    Text(
                      "${detail['subtitle']}",
                      style: TextStyle(fontSize: 5, color: Colors.white),
                    ),
                  ],
                ),
              ),
              smallBtn(action: () {
                
              }, label: 'view')
            ],
          ),
        )
      ],
    ),
  );
}

Widget smallBtn({@required String label, @required Function action}) {
  return new GestureDetector(
    onTap: action,
    child: Container(
      height: 15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2.0),
        color: colorStyles['yellow'],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Center(
        child: new Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 7,
          ),
        ),
      ),
    ),
  );
}

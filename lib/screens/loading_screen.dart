import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
    
    LoadingScreen({Key key}): super(key: key);

    @override
    Widget build(BuildContext context) {
        return new MaterialApp(
          
            home: new Scaffold(
              
                body: new Container( 
                  decoration: BoxDecoration(
                    image: DecorationImage( 
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.66), BlendMode.darken),
                      fit: BoxFit.cover,
                      image: AssetImage('assets/bg.png'),
                    ),
                  ),
                  child:new Center(
                    child: Image(image: AssetImage('assets/logo.png'),
                      height: 134.0, 
                    ),
                ),
                ), 
            ),
        );
    }

}
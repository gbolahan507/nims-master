import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nims/containers/button.dart';
import 'package:nims/containers/products/product_tabs.dart';
import 'package:nims/screens/main_drawer.dart';
import 'package:nims/styles/colors.dart';

class ProductsScreen extends StatefulWidget {

  ProductsScreen({Key key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
//  PageController pagecontroller = PageController();
  var pages =[MainDrawer()];
  TextEditingController _search = TextEditingController();

  @override
  Widget build(BuildContext context) {
//    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;


    return new Scaffold(
      resizeToAvoidBottomInset: true,
//      appBar: AppBar(
//        backgroundColor: Colors.white,
//        ),


//      appBar: AppBar(),
//      drawer:  Drawer(
//        child: Container(
//          color: Color(0xFF101043),
//          child: ListView(
//            children: <Widget>[
//              DrawerHeader(),
//              ListTile(
//                leading: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.people), label: Text('profile')),
//              ),
//              ListTile(
//                leading: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.people), label: Text('profile')),
//              ),
//              ListTile(
//                leading: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.people), label: Text('profile')),
//              ),
//              ListTile(
//                leading: FlatButton.icon(onPressed: (){}, icon: Icon(Icons.people), label: Text('profile')),
//              )
//
//            ],
//          ),
//        ),
//      ),

      body: PageView(
//        controller: pagecontroller,
        children : [
          SingleChildScrollView(
          child: new Container(
            // height: MediaQuery.of(context).size.height
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                    Colors.black.withOpacity(.5), BlendMode.darken),
                // fit: BoxFit.fitWidth,
                image: AssetImage('assets/dash.png'),
                alignment: Alignment(0, -1),
              ),
            ),
            child: new Stack(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Positioned(
                    top: 150,
                    left: 70,
                    child: new Row(
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 200,
                          child: appInput(
                              password: false,
                              controller: _search,
                              label: 'SEARCH STYLE AND MATERIALS.'),
                        ),
                        appbuttons(action: () {}, label: 'search', padding: 15)
                      ],
                    ),
                  ),
                  new Positioned(
                    bottom: 0,
                    child: new Container(
                      height: height * .65,
                      width: MediaQuery.of(context).size.width,
                      decoration: new BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(40.0),
                              topRight: const Radius.circular(40.0))),
                      child: Padding(
                        padding: EdgeInsets.only(top: 40, left: 10, right: 10),
                        child: ProductTabs(),
                      ),
                    ),
                  ),
                  new Positioned(
                    bottom: 70,
                    left: 50,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: appbutton(action: () {
                        Navigator.pushNamed(context, '/user-measurement');
                      }, label: 'BOOK ORDER', padding: 15),
                    ),
                  ),
                ]),
          ),
        ),
          MainDrawer(),
    ]
      ),

    );
  }
}

Widget appInput({label, hint, password = false, @required controller, double width}) {
  return new TextFormField(
    controller: controller,
    decoration: new InputDecoration(
      hintText: hint,
      hintStyle: TextStyle(
        color: Colors.grey,
        fontSize: 12
      ),
      border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(2),
          borderSide: BorderSide.none
              ),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10 
      ),
      fillColor: Colors.grey.shade200,
      filled: true,
    ),
    style: TextStyle(
      color: colorStyles['text_blue'],
      fontSize: 16,
    ),
    obscureText: password,
  );
}

Widget appbuttons(
    {@required String label,
    @required Function action,
    double padding = 12.0}) {
  return new FlatButton(
    color: colorStyles['yellow'],
    onPressed: action,
    child: Container(
      padding: EdgeInsets.symmetric(
        vertical: padding,
      ),
      child: Center(
        child: new Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:nims/containers/products/model/products.dart';
import 'package:nims/containers/products/product_grid_item.dart';
import 'package:nims/styles/colors.dart';


class FavouriteProperties extends StatelessWidget {
  FavouriteProperties({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6),
            child: TabBar(
              tabs: [
                // tabButtons(name: "KATAN"),
                tabButtons(name: "KAFTAN"),
                tabButtons(name: "BABARIGA"),
                tabButtons(name: "OFFICE PANT"),
                tabButtons(name: "DANSHIKI"),
                tabButtons(name: "SHOKOTO"),
              ],
              unselectedLabelColor: colorStyles['text_blue'],
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorPadding: EdgeInsets.all(0),
              indicatorWeight: 0,
              labelColor: Colors.white,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: colorStyles['text_blue']),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: TabBarView(
              children: [
                productGrid("KAFTAN"),
                productGrid("BABARIGA"),
                productGrid("OFFICE PANT"),
                productGrid("DANSHIKI"),
                productGrid("SHOKOTO"),
              ],
            ),
          ),
        ],
      ),
    );
  }

// productGridItem
  Widget productGrid(which) {
    return GridView.count(
      crossAxisCount: 3,
      scrollDirection: Axis.vertical,
      children: new List<Widget>.generate(products[which].length, (index) {
        return productGridItem(products[which][index]);
      }),
    );
  }

  Widget tabButtons({String name}) {
    return Tab(
      child: Container(
        child: Align(
          alignment: Alignment.center,
          child: Text(
            "$name",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 8.5,
            ),
          ),
        ),
      ),
    );
  }
//      length: 5,
//      child: Column(
//        children: <Widget>[
//          Padding(
//            padding: EdgeInsets.symmetric(horizontal: 6),
//          ),
//          child: TabBar(
//            tabs: [
//              // tabButtons(name: "KATAN"),
//              tabButtons(name: "KAFTAN"),
//              tabButtons(name: "BABARIGA"),
//              tabButtons(name: "OFFICE PANT"),
//              tabButtons(name: "DANSHIKI"),
//              tabButtons(name: "SHOKOTO"),
//            ],
//            unselectedLabelColor: colorStyles['text_blue'],
//            indicatorSize: TabBarIndicatorSize.tab,
//            indicatorPadding: EdgeInsets.all(0),
//            indicatorWeight: 0,
//            labelColor: Colors.white,
//            indicator: BoxDecoration(
//                borderRadius: BorderRadius.circular(5),
//                color: colorStyles['text_blue']),
//          ),
//        ],
//      ),
//    );
//  }
//
//// productGridItem
//  Widget productGrid(which) {
//    return GridView.count(
//      crossAxisCount: 3,
//      scrollDirection: Axis.vertical,
//      children: new List<Widget>.generate(products[which].length, (index) {
//        return productGridItem(products[which][index]);
//      }),
//    );
//  }
//
//  Widget tabButtons({String name}) {
//    return Tab(
//      child: Container(
//        child: Align(
//          alignment: Alignment.center,
//          child: Text(
//            "$name",
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              fontSize: 8.5,
//            ),
//          ),
//        ),
//      ),
//    );
//  }
}

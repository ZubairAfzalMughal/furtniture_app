import 'package:flutter/material.dart';

import '../../../constant.dart';

class CatagoryList extends StatefulWidget {
  @override
  _CatagoryListState createState() => _CatagoryListState();
}

class _CatagoryListState extends State<CatagoryList> {
  int selectedIndex = 0;
  List<String> productList = [
    'All',
    'Sofa',
    'Park Bench',
    'School Bench',
    'Safe Almari'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: index == selectedIndex
                      ? Colors.white.withOpacity(0.4)
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(6.0)),
              margin: EdgeInsets.only(left: kDefaultPadding),
              padding: EdgeInsets.all(10.0),
              child: Text(
                productList[index],
                style: TextStyle(color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:furtniture_app/model/model.dart';
import 'package:furtniture_app/screens/detail/detail_Screen.dart';
import 'package:furtniture_app/screens/products/Components/catagoryList.dart';
import 'package:furtniture_app/screens/products/Components/items.dart';
import 'package:furtniture_app/screens/products/Components/search.dart';

import '../../../constant.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SearchBox(
            onchnage: (value) {},
          ),
          CatagoryList(),
          SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: kDefaultPadding),
                  //this is put background
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0))),
                ),
                //Setting the Products
                ListView.builder(
                  itemCount: products.length,
                  itemBuilder: (context,index){
                    return Items(
                      itemIndex: index,product: products[index] ,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                            return DetailScreen(
                              product: products[index],
                          );
                        }));
                      },
                    );
                  })
              ],
            ),
          ),
        ],
      ),
    );
  }
}



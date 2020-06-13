import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furtniture_app/model/model.dart';
import 'package:furtniture_app/screens/detail/Components/body.dart';

import '../../constant.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  DetailScreen({
    this.product
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text('Back'.toUpperCase(),style: TextStyle(color: Colors.black),),
      backgroundColor: kBackgroundColor,
      actions: <Widget>[
        IconButton(
          onPressed: null,
          icon:SvgPicture.asset('assets/icons/cart_with_item.svg'),
        ),
      ],
      leading:IconButton(
        onPressed:(){
          Navigator.pop(context);
        },
        icon: SvgPicture.asset('assets/icons/back.svg'),
      ),
    );
  }
}
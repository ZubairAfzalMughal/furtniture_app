import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furtniture_app/screens/products/Components/body.dart';

class MainProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: appBar(),
      body: Body(),
    );
  }
  AppBar appBar(){
    return AppBar(
      title: Text('Furniture'),
      actions: <Widget>[
        IconButton(
          onPressed: null,
          icon: SvgPicture.asset('assets/icons/notification.svg'),
        ),
      ],
    );
  } 
}
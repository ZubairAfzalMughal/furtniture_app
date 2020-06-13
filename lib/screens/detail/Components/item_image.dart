import 'package:flutter/material.dart';

import '../../../constant.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    Key key,
    this.image,
    @required this.size,
  }) : super(key: key);

  final Size size;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.width * 0.7,
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          Container(
            height: size.width * 0.6,
            width: size.width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle
            ),
          ),
          Image.asset(
            image,
            width: size.width*0.6,
            height: size.width*0.6,
            fit: BoxFit.cover,
            ),
        ],
      ),
    );
  }
}
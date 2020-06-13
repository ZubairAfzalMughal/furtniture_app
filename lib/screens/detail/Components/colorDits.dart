import 'package:flutter/material.dart';

import '../../../constant.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    this.fillColor,
    this.isSelected=false,
    Key key,
  }) : super(key: key);
  final Color fillColor;
  final bool isSelected; 
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(horizontal:kDefaultPadding/2.5),
      decoration: BoxDecoration(
        color: isSelected?Color(0xFF707070): Colors.transparent,
        shape: BoxShape.circle
      ),
      child: Container(
        decoration: BoxDecoration(
          color: fillColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}